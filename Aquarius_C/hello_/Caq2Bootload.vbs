'    File: Caq2Bootload.vbs
'      By: Martin v.d. Steenoven
'    Date: April, 15th 2013
' Version: 2.0
'
' Purpose:
' --------
' Create an Aquarius ROM file with 
' integrated BASIC program
' 
' Detailed description:
' ---------------------
' BOOTLDR.DAT will be at the begin of 
' the ROM at memory address $c000
' The tape header (12x 0xFF) needs to be
' stripped from the CAQ file and the memory
' address at the beginning of each BASIC
' commandline needs to be modified
' At $e000 the rom recognization plus 
' a jump statement will be injected 
' as a BASIC REM statement
' 

Dim args
Dim FileName, FileCAQ, FileOUT
Dim nBaseAddress
Dim FSO, f_CAQ, f_OUT, f_RomFile
Dim ROMFILE
Dim nLow, nHigh
Dim cString, cLineNo
Dim cInjection

' Check commandline parameters
set args = WScript.Arguments
if args.count = 0 then
	WScript.Echo "Usage: Caq2Bootload.vbs <file>"
	WScript.Quit 1
end if


' *:******************************************************************************
' *:
' *:             CHECK IF ALL GIVEN FILES EXIST AND INITIALISATION
' *:
' *:******************************************************************************


' Check if given filename ends with CAQ
FileCAQ = args.Item(0)
If UCase(Right( FileCAQ,4 )) <> ".CAQ" Then
   FileName = FileCAQ
   FileCAQ = FileCAQ & ".CAQ"
Else
   FileName = Left( FileCAQ, LEN(FileCAQ)-4)
End IF
FileOUT = fileName & ".bin"

Set FSO = CreateObject("Scripting.FileSystemObject")

' BOOTLDR.DAT needs to be in
' the same folder as this script

Set f_RomFile = FSO.GetFile(Wscript.ScriptFullName)

ROMFILE = FSO.GetParentFolderName(f_RomFile) & "\BOOTLDR.DAT"

Set f_RomFile = Nothing


' Check if the CAQ file exists
If Not FSO.FileExists( FileCAQ ) Then
	WScript.Echo "Given CAQ file " & FileCAQ & " does not exist."
	WScript.Quit 2
End If

' Check if the new file does not exist
If FSO.FileExists( FileOUT ) Then
	WScript.Echo "Output file " & FileOUT & " already exists."
	WScript.Quit 3
End If

' Check if the Bootloader.rom exists
If Not FSO.FileExists( ROMFILE ) Then
	WScript.Echo "Bootloader " & ROMFILE & " does not exist."
	WScript.Quit 4
End If



Set f_RomFile = FSO.GetFile( ROMFILE )

' Check if the bootloader.rom plus basic.caq
' plus injection code does not exceed 16k
Set f_CAQ = FSO.GetFile( FileCAQ )

If (  f_RomFile.Size +  f_CAQ.Size + 79 ) > 16384 Then
	WScript.Echo "ROM will exceed 16K limit."
	WScript.Quit 6
End If

Set f_CAQ= Nothing


' Create the injection code (ROM recognization)
cInjection = Chr(66) & Chr( 79) & Chr( 79) & Chr( 84) & _
             Chr(83) & Chr(156) & Chr( 84) & Chr(176) & _
             Chr(82) & Chr(108) & Chr( 65) & Chr(100) & _
             Chr(80) & Chr(168) & Chr(128) & Chr(112) 
'JP $c001
cInjection = cInjection & Chr(195) & Chr( 1) & chr(192)


' *:******************************************************************************
' *:
' *:                                      MAIN
' *:
' *:******************************************************************************

nBaseAddress = 49152 + f_RomFile.Size
nSizeOut = f_RomFile.Size

Set f_RomFile = Nothing

Set f_CAQ = fso.OpenTextFile(FileCAQ, 1)	' ForReading

' Copy the ROMFILE and open for append
FSO.CopyFile ROMFILE, FileOUT 
Set f_OUT = fso.OpenTextFile(FileOUT, 8, False)	' ForAppend

' Skip the TAPE header
' 12x 0xFF, 1x 0x00, 6x FILENAME, 12x 0xFF, 1x 0x00
' Got a corrupted tape header during testing.
' Now somewhat more extended skipping of header
f_CAQ.Skip(28)
Do While Not f_CAQ.AtEndOfStream 
   nByte = asc( f_CAQ.Read(1) )   
   If nByte = 0 Then
   	Exit Do
   End If
Loop  

cLastLine = Chr(0) & Chr(0)

Do While Not f_CAQ.AtEndOfStream 
   	nLow = asc( f_CAQ.Read(1) )
   	nHigh = asc( f_CAQ.Read(1) )
   	If nLow + (nHigh*256) <> 0 Then
           cString = ""
           cLineNo = f_CAQ.Read(2)
   	   Do While Not f_CAQ.AtEndOfStream 
   	      nByte = asc( f_CAQ.Read(1) )
   	      cString = cString & Chr(nByte)
   	      If nByte = 0 Then
   	         Exit Do
   	      End If
   	   Loop   

           ' 57339 (= $e000 - 5 )

           if ( nBaseAddress < 57339 ) and (( nBaseAddress+Len(cString)+4 ) >= 57339 ) Then

              ' Can we inject 2 additional BASIC lines ?
              ' Else bail out! 
              nLastLine = Word2Int( cLastLine )
              nLineNo = Word2Int( cLineNo )
              nStep = Int(( nLineNo - nLastLine ) / 3)
              If nStep = 0 Then
                 WScript.Echo "Cannot inject 2 BASIC REM lines between " & nLastLine & " and " & nLineNo
	         WScript.Quit 5
              End If

              if nBaseAddress < 57339 - 10 Then
                 ' add additional REM statement
                 strSpace = String( ( 57339 - 10 ) - nBaseAddress, "#" )
                 nBaseAddress = nBaseAddress + 6 + Len( strSpace )
                 f_OUT.Write( Int2Word( nBaseAddress ) & Int2Word( nLastLine + nStep ) & chr(142) & strSpace ) & chr(0)
                 nSizeOut = nSizeOut + 6 + Len( strSpace  )
                 nLastLine = nLastLine + nStep
              End If
                 

              strSpace = String( 57339 - nBaseAddress, "#" )
              nBaseAddress = nBaseAddress + 6 + Len( strSpace ) + Len( cInjection )     	      
              f_OUT.Write( Int2Word( nBaseAddress ) & Int2Word( nLastLine + nStep ) & chr(142) & strSpace & cInjection ) & chr(0)
              nSizeOut = nSizeOut + 6 + Len( strSpace & cInjection )

           end if

   	   nBaseAddress = nBaseAddress + Len( cString ) + 4

   	   cString = Int2Word( nBaseAddress ) & cLineNo & cString
   	   f_OUT.Write( cString )
           nSizeOut = nSizeOut + Len( cString )
           cLastLine = cLineNo
   	Else
   	   ' At end of BASIC program
   	   cString = Chr(0) & Chr(0) & Chr(0) & Chr(0) & Chr(0)
   	   f_OUT.Write( cString )
           nSizeOut = nSizeOut + Len( cString )
   	   Exit Do
   	End If
Loop


' Need to fill to 8K if smaller
' and inject the ROM recognization

If nSizeOut <= 8192 Then
   cString = String( 8192 - nSizeOut, Chr(0) )
   f_OUT.Write( cString )
   nSizeOut = 8192
   f_OUT.Write( cInjection )
   nSizeOut = nSizeOut + Len(cInjection )
End If

If nSizeOut <= 16384 Then
   cString = String( 16384 - nSizeOut, Chr(0) )
   f_OUT.Write( cString )
End If
   	

f_OUT.Close
f_CAQ.Close

Set f_OUT = Nothing
Set f_CAQ = Nothing
Set FSO = Nothing

WScript.Quit


' Function: Word2Int
' Purpose: Convert 2 byte Word (as a string)
'          into an integer

Function Word2Int( strWord)
   Word2Int = ASC(Mid(strWord,1,1)) + (256*ASC(Mid(strWord,2,1)))
End Function


' Function: Int2Word
' Purpose: Convert an integer 
'          into a 2 byte Word (as a string)

Function Int2Word( nWord )
   Dim nLow, nHigh

   nHigh = Int( nWord / 256)
   nLow = nWord - ( nHigh*256)
   Int2Word = Chr( nLow ) & Chr( nHigh) 

End Function
