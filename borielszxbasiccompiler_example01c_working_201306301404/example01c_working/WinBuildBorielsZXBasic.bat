REM Windows Batch to compile Boriel's ZX BASIC
REM To Aquarius Computer System Rom
REM cleanup disabled, build files left behind 
REM Edit this batch file to work cleaner
REM Enjoy your time compiling Boriel's ZX BASIC.

@ECHO OFF

REM Write Null file
ECHO NULL > Null

REM remove old build
rm example01.asm example01.rom
 
REM ZXB is the main SDK executable. It can act both as a compiler or as a translator:
zxb library/aquariusromheader.bas --org=0x0000
 
REM copy 16 BYTES header   into temp files
dd ibs=1 count=16 skip=16 if=aquariusromheader.bin of=example01.tmr

REM the line below is the for linux? what the line above does.
REM dd ibs=1 count=$((0x0010)) skip=$((0x0010)) if=aquariusromheader.bin of=example01.tmr

REM remove build temp file
REM rm aquariusromheader.bin
 
REM compiling the basic program to cartridge memory
zxb example01.bas --asm --org=0xE010
zxb example01.bas --org=0xE010
cat example01.bin >> example01.tmr

REM create an 8K empty file my settings may be wrong.
dd if=Null of=_dummybytes.bin bs=8192 count=1 seek=1024

REM here's the unix version
REM dd bs=8192 count=1 if=/dev/zero of=_dummybytes.bin
 
REM fill the empty with the TMR file
cat _dummybytes.bin >> example01.tmr
 
REM cleaning  up old build files  
REM rm _dummybytes.bin example01.bin

ECHO Writing 8k of TMR file to ROM file
dd ibs=1 count=8192 skip=0 if=example01.tmr of=example01.rom

REM remove TMR
REM rm example01.tmr

REM remove Null
REM rm Null

REM Launch emulator disabled for now
REM mess aquarius -skip_gameinfo -resolution1 640x400 -aspect0 8:6 -cart1 example01.rom
