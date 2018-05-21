--
-- Aquarius.lua
--
-- Additional script to dz80
-- to disassemble Aquarius machinecode
--
-- v1.0
-- Created by Martin van de Steenoven
-- http://www.vdsteenoven.com/aquarius/
--


--
-- Callers
--
--   7655 Save cursor position and return         


Callers = function ()
   local b1
   b1 = d_LookByte(1) + d_LookByte(2) * 256

if b1 == 964 then
   d_AddComment("SN error")
elseif b1 == 967 then
   d_AddComment("/0 error")
elseif b1 == 970 then
   d_AddComment("NF error")
elseif b1 == 973 then
   d_AddComment("DD error")
elseif b1 == 976 then
   d_AddComment("UF error")
elseif b1 == 979 then
   d_AddComment("OV error")
elseif b1 == 982 then
   d_AddComment("MO error")
elseif b1 == 985 then
   d_AddComment("TM error")
elseif b1 == 1026 then
   d_AddComment("(OKMAIN) BASIC line input/erase")
elseif b1 == 1152 then
   d_AddComment("modify address next line")
elseif b1 == 1183 then 
   d_AddComment("search BASIC line in memory")
elseif b1 == 1383 then
	d_AddComment("LLIST - basic statement")
elseif b1 == 1388 then
	d_AddComment("LIST - basic statement")
elseif b1 == 1468 then
	d_AddComment("FOR - basic statement")
elseif b1 == 1643 then
   d_AddComment("get next byte from memory")
elseif b1 == 1666 then 
   d_AddComment("DEINT - evalute formula pointed by HL result in DE")
elseif b1 == 1687 then 
   d_AddComment("FC error")
elseif b1 == 1692 then 
   d_AddComment("convert line number into binair")
elseif b1 == 1726 then
	d_AddComment("RUN - basic statement")
elseif b1 == 1739 then
	d_AddComment("GOSUB - basic statement")
elseif b1 == 1756 then
	d_AddComment("GOTO - basic statement")
elseif b1 == 1784 then
	d_AddComment("RETURN - basic statement")
elseif b1 == 1820 then
	d_AddComment("DATA - basic statement")
elseif b1 == 1822 then
	d_AddComment("REM - basic statement")
elseif b1 == 1841 then
	d_AddComment("LET - basic statement")
elseif b1 == 1920 then
	d_AddComment("ON - basic statement")
elseif b1 == 1948 then
	d_AddComment("IF - basic statement")
elseif b1 == 1973 then
	d_AddComment("LPRINT - basic statement")
elseif b1 == 1980 then
	d_AddComment("PRINT - basic statement")
elseif b1 == 2421 then
	d_AddComment("Is it a number or string, else TM Error")
elseif b1 == 2195 then
	d_AddComment("INPUT - basic statement")
elseif b1 == 2238 then
	d_AddComment("READ - basic statement")
elseif b1 == 2862 then
	d_AddComment("LPOS - basic function")
elseif b1 == 2867 then
	d_AddComment("POS - basic function")
elseif b1 == 2875 then
	d_AddComment("DEF - basic statement")
elseif b1 == 2900 then
   d_AddComment("read number from memory")
elseif b1 == 2915 then
	d_AddComment("PEEK - basic function")
elseif b1 == 2925 then
	d_AddComment("POKE - basic statement")
elseif b1 == 2976 then 
   d_AddComment("CHK_STKSPC - check stack space")
elseif b1 == 2999 then
   d_AddComment("OM error")
elseif b1 == 3005 then
	d_AddComment("NEW - basic statement")
elseif b1 == 3006 then 
   d_AddComment("ST_NEW2 - NEW command without syntax check")
elseif b1 == 3045 then 
   d_AddComment("CLRWKSP")
elseif b1 == 3077 then
   d_AddComment("RESTORE - basic statement")
elseif b1 == 3103 then
   d_AddComment("STOP - basic statement")
elseif b1 == 3105 then
   d_AddComment("END - basic statement")
elseif b1 == 3147 then
   d_AddComment("CONT - basic statement")
elseif b1 == 3270 then 
   d_AddComment("check if character in A is between A and Z")
elseif b1 == 3277 then
   d_AddComment("CLEAR - basic statement")
elseif b1 == 3347 then
   d_AddComment("NEXT - basic statement")
elseif b1 == 3461 then 
   d_AddComment("GETLINE - reset input line buffer and start collecting a line")
elseif b1 == 3625 then
   d_AddComment("STR$ - basic function")
elseif b1 == 3741 then 
   d_AddComment("PRINTSTR - prints zero terminated string pointed by HL")
elseif b1 == 4083 then
   d_AddComment("LEN - basic function")
elseif b1 == 4098 then
   d_AddComment("ASC - basic function")
elseif b1 == 4102 then 
   d_AddComment("ASC function")
elseif b1 == 4115 then
   d_AddComment("CHR$ - basic function")
elseif b1 == 4129 then
   d_AddComment("LEFT$ - basic function")
elseif b1 == 4176 then
   d_AddComment("RIGHT$ - basic function")
elseif b1 == 4185 then
   d_AddComment("MID$ - basic function")
elseif b1 == 4228 then
   d_AddComment("VAL - basic function")
elseif b1 == 4264 then
   d_AddComment("FRE - basic function")
elseif b1 == 4300 then
   d_AddComment("DIM - basic statement")
elseif b1 == 4997 then
   d_AddComment("LOG - basic function")
elseif b1 == 5365 then
   d_AddComment("SGN - basic function")
elseif b1 == 5385 then
   d_AddComment("ABS - basic function")
elseif b1 == 5387 then 
   d_AddComment("Change plus (+) / minus (-) sign of number")
elseif b1 == 5553 then
   d_AddComment("INT - basic function")
elseif b1 == 6005 then
   d_AddComment("SQR - basic function")
elseif b1 == 6093 then
   d_AddComment("EXP - basic function")
elseif b1 == 6246 then
   d_AddComment("RND - basic function")
elseif b1 == 6359 then
   d_AddComment("COS - basic function")
elseif b1 == 6365 then
   d_AddComment("SIN - basic function")
elseif b1 == 6512 then
   d_AddComment("TAN - basic function")
elseif b1 == 6533 then
   d_AddComment("ATN - basic function")
elseif b1 == 6538 then 
   d_AddComment("PRNTCHAR ")
elseif b1 == 6618 then 
   d_AddComment("CLRKEYWT - clear keyboard buffer and wait for anykey")
elseif b1 == 6634 then 
   d_AddComment("PRNCRLF - print CR ($0d) and LF ($0a)")
elseif b1 == 6693 then 
   d_AddComment("if CTRL+S was pressed pause until another key is pressed")
elseif b1 == 6703 then 
   d_AddComment("clear last key value and wait for key press")
elseif b1 == 6720 then 
   d_AddComment("KEYBREAK - routine after CTRL+C")
elseif b1 == 6732 then
   d_AddComment("PRESET - basic statement")
elseif b1 == 6735 then
   d_AddComment("PSET - basic statement")
elseif b1 == 6760 then
   d_AddComment("POINT - basic function")
elseif b1 == 6870 then
   d_AddComment("SOUND - basic statement")
elseif b1 == 6881 then
   d_AddComment("LPCRLF - Send a CR and LF to the printer port")
elseif b1 == 6888 then
   d_AddComment("send character in A to serial printer")
elseif b1 == 6890 then 
   d_AddComment("send character in A to the printer port")
elseif b1 == 6933 then
   d_AddComment("COPY - basic statement")
elseif b1 == 6958 then 
   d_AddComment("TAPELD2 - tape load message and wait for RTN key")
elseif b1 == 6989 then 
   d_AddComment("BYTEREAD2 - read part of the SYNC signal from tape")
elseif b1 == 7176 then
   d_AddComment("CSAVE - basic statement")
elseif b1 == 7212 then
   d_AddComment("CLOAD - basic statement")
elseif b1 == 7496 then
   d_AddComment("SLEEP_FFFF - delay loop by decrementing until 0")
elseif b1 == 7499 then
   d_AddComment("SLEEP_BC - delay loop by decrementing BC until 0")
elseif b1 == 7538 then
   d_AddComment("PUTCRT - send character in A to CRT")
elseif b1 == 7540 then
   d_AddComment("PUTCRTA - send character in A to CRT without UDF check")
elseif b1 == 7655 then
   d_AddComment("Save cursor position and return")
elseif b1 == 7769 then 
   d_AddComment("FILLSCRN - Fill screen character or color matrix (HL) with code (B)")
elseif b1 == 7772 then 
   d_AddComment("fill HL with colorcode B until DE reaches null")
elseif b1 == 7780 then
   d_AddComment("BELL - output tone with duration DE and BC cycles")
elseif b1 == 7806 then 
   d_AddComment("POLKEY - keyboard scan routine")
elseif b1 == 7808 then 
   d_AddComment("KEYCHK - return ASCII value if key pressed")
elseif b1 == 14339 then
   d_AddComment("USR - basic function")
end

end



--
-- GetAddress
--

GetAddress = function ()
   local b1
   b1 = d_LookByte(1) + d_LookByte(2) * 256
   if b1 == 176 then
       d_AddComment("location of text 'BASIC'")
   elseif b1 == 181 then
       d_AddComment("location of text 'Press RETURN KEY TO START'")
   elseif b1 == 391 then
       d_AddComment("address with default values")
   elseif b1 == 14336 then
       d_AddComment("TTYPOS - row position of cursor on screen")
   elseif b1 == 14337 then
       d_AddComment("CHRPOS - address of cursor within matrix")
   elseif b1 == 14339 then
       d_AddComment("USRGO - JUMP 0xc3 instruction for USR() function")
   elseif b1 == 14340 then
       d_AddComment("USR - start address to the machincode used by USR()")
   elseif b1 == 14342 then
       d_AddComment("HOKDSP - HOOK SerVICE ROUTINE used by Extended Basic")
   elseif b1 == 14344 then
       d_AddComment("LISTCT - counter for the LIST command")
   elseif b1 == 14345 then
       d_AddComment("PTOLD - code send to the protection port")
   elseif b1 == 14346 then
       d_AddComment("CHARQ - ASCII value of the latest key pressed")
   elseif b1 == 14347 then
       d_AddComment("SKEY - Pointer used in the single key command")
   elseif b1 == 14349 then
       d_AddComment("BUFO - storage of the character behind the cursor")
   elseif b1 == 14350 then
       d_AddComment("CTRLFG - debounce count for key scanning routine")
   elseif b1 == 14351 then
       d_AddComment("FLAG - key value after scanning")
   elseif b1 == 14352 then
       d_AddComment("RANDOM - used in generating random numbers")
   elseif b1 == 14405 then
       d_AddComment("LPTLST - last printer operation status")
   elseif b1 == 14406 then
       d_AddComment("LPTPOS - position of the printerhead")
   elseif b1 == 14407 then
       d_AddComment("PRTFLAG - flag to direct output to printer or CRT")
   elseif b1 == 14408 then
       d_AddComment("LINLEN - line length. Originally set to 40")
   elseif b1 == 14409 then
       d_AddComment("CLMLST - Position of last comma column")
   elseif b1 == 14410 then
       d_AddComment("RUBSW - Rubout switch")
   elseif b1 == 14411 then
       d_AddComment("STKTOP - top location used for stack")
   elseif b1 == 14413 then
       d_AddComment("CURLIN - current line number")
   elseif b1 == 14415 then
       d_AddComment("TXTTAB - beginning of Text of Basic program")
   elseif b1 == 14417 then
       d_AddComment("CASNAM - 6 bytes for cassette name")
   elseif b1 == 14423 then
       d_AddComment("CASNM2 - 6 bytes fir cassette name read from tape")
   elseif b1 == 14429 then
       d_AddComment("CASFL2 - flags for casette input/output routine")
   elseif b1 == 14430 then
       d_AddComment("CASFL3 - flags for casette input/output routine")
   elseif b1 == 14431 then
       d_AddComment("BUFMIN - used by INPUT statement")
   elseif b1 == 14432 then
       d_AddComment("BUF - 73 bytes for current line buffer")
   elseif b1 == 14505 then
       d_AddComment("BUFEND - end of input buffer")
   elseif b1 == 14506 then
       d_AddComment("DIMFLG - flag to differentiate variable type")
   elseif b1 == 14507 then
       d_AddComment("VALTYP - differentiate between string or nummeric value")
   elseif b1 == 14508 then
       d_AddComment("DORES - flag for crunch")
   elseif b1 == 14509 then
       d_AddComment("MEMSIZ - highest RAM location")
   elseif b1 == 14511 then
       d_AddComment("used for string functions")
   elseif b1 == 14529 then
       d_AddComment("FRETOP - top of string free space")
   elseif b1 == 14531 then
       d_AddComment("TEMP - pointer for addresses of string storage")
   elseif b1 == 14534 then
       d_AddComment("used for FOR statement")
   elseif b1 == 14538 then
       d_AddComment("pointer and flags for programm execution")
   elseif b1 == 14548 then
       d_AddComment("BASIC line which was interrupted by the break")
   elseif b1 == 14550 then
       d_AddComment("VARTAB - start of simple variable table")
   elseif b1 == 14552 then
       d_AddComment("ARYTAB - start of array table")
   elseif b1 == 14554 then
       d_AddComment("end address of the BASIC & simple & array list")
   elseif b1 == 14556 then
       d_AddComment("points to where the DATA has been READ")
   elseif b1 == 14558 then
       d_AddComment("pointers and flags for arrays")
   end
end

--
-- PreTrap functions
--

BugFD = function ()

   local b1, b2

   if d_LookByte(1) == hex"ef" then
       d_AddComment("Extended Basic disassembler bug")
       b1 = d_GetByte()
       b2 = d_GetByte()
       d_DB(b1, b2)
       d_FlushLine()
   end

end


LdHLPre = function ()
   GetAddress()
end

Rst08Pre = function ()
    d_AddComment("Compare RAM byte with following byte")
end

Rst10Pre = function ()
    d_AddComment("retrieve next RAM byte from memory")
end

Rst18Pre = function ()
    d_AddComment("send character to screen/printer")
end

Rst20Pre = function ()
    d_AddComment("compare DE with HL")
end

Rst28Pre = function ()
    d_AddComment("plus(1)/minus($ff) sign to accumulator")
end

Rst30Pre = function ()
    d_AddComment("cartridge or disk hook routine")
end



--
-- PostTrap functions
--

Rst08Post = function ()

    local b1

    b1 = d_GetByte()
    d_DB(b1)
    d_AddComment("byte used by RST 08")
    d_FlushLine()

end

Rst30Post = function ()

    local b1

    b1 = d_GetByte()
    d_DB(b1)
    d_AddComment("byte used by RST 30")
    d_FlushLine()

end


--
-- main
--

d_PreTrap(hex"01", LdHLPre)
d_PreTrap(hex"11", LdHLPre)
d_PreTrap(hex"21", LdHLPre)
d_PreTrap(hex"22", LdHLPre)
d_PreTrap(hex"2a", LdHLPre)
d_PreTrap(hex"32", LdHLPre)
d_PreTrap(hex"3a", LdHLPre)
d_PreTrap(hex"c2", Callers)
d_PreTrap(hex"c3", Callers)
d_PreTrap(hex"c4", Callers)
d_PreTrap(hex"ca", Callers)
d_PreTrap(hex"cc", Callers)
d_PreTrap(hex"cd", Callers)
d_PreTrap(hex"d2", Callers)
d_PreTrap(hex"d4", Callers)
d_PreTrap(hex"e4", Callers)
d_PreTrap(hex"da", Callers)
d_PreTrap(hex"fa", Callers)
d_PreTrap(hex"fc", Callers)
d_PreTrap(hex"cf", Rst08Pre)
d_PreTrap(hex"d7", Rst10Pre)
d_PreTrap(hex"df", Rst18Pre)
d_PreTrap(hex"e7", Rst20Pre)
d_PreTrap(hex"ef", Rst28Pre)
d_PreTrap(hex"f7", Rst30Pre)
d_PreTrap(hex"fd", BugFD)
d_PostTrap(hex"cf", Rst08Post)
d_PostTrap(hex"f7", Rst30Post)
