REM Windows Batch Compiler Script
REM For Boriel's ZX BASIC to Aquarius Computer Catridge ROM
REM No RM version 1.0 January 13 2014 
REM Enjoy your time compiling Boriel's ZX BASIC.

REM Write Null file, very important
ECHO NULL > Null

REM ZXB is the main SDK executable. It can act both as a compiler or as a translator:
REM http://www.boriel.com/en/software/the-zx-basic-compiler/

REM this command creates a binary machine code compilation of the 8k catridge header
REM see library/aquarisromheader16kb.bas for bigger cart.
REM zxb library/aquariusromheader.bas --org=0x0000
 
REM copy 16 BYTES header   into temp files
dd ibs=1 count=16 skip=16 if=aquariusromheader.bin of=tempfile.tmr

REM compiling the basic program to cartridge memory
REM zxb spectral-dungeons.bas --asm --org=0xE010
REM zxb spectral-dungeons.bas --org=0xE010

REM append rom header binary to assembly code binary
copy tempfile.tmr /b + new99bottles.bin /b tempfile.tmr 

REM create an 8K empty file my settings may be wrong.
dd if=Null of=_dummybytes.bin bs=8192 count=1 seek=1

REM append the temp binary data with space to fill the 8k rom
copy tempfile.tmr /b + /b _dummybytes.bin tempfile.tmr /b

REM cleaning  up old build files  
REM rm _dummybytes.bin spectral-dungeons.bin

ECHO Writing only 8k of TMR binary to ROM file
dd ibs=1 count=8192 skip=0 if=tempfile.tmr of=FinalOutput.rom
