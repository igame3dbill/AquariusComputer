rm example01.asm example01.rom
zxb.py library/aquariusromheader.bas --org=0x0000
dd ibs=1 count=$((0x0010)) skip=$((0x0010)) if=aquariusromheader.bin of=example01.tmr
rm aquariusromheader.bin
zxb.py example01.bas --asm --org=0xE010
zxb.py example01.bas --org=0xE010
cat example01.bin >> example01.tmr
# filesize=$(stat -c%s "example01.tmr")
dd bs=8192 count=1 if=/dev/zero of=_dummybytes.bin
cat _dummybytes.bin >> example01.tmr
rm _dummybytes.bin example01.bin
dd ibs=1 count=$((0x2000)) skip=$((0x0000)) if=example01.tmr of=example01.rom
rm example01.tmr

mess aquarius -skip_gameinfo -resolution0 640x400 -aspect0 8:6 -cart1 example01.rom

# mess aquarius -resolution0 320x200 -cart1 example01.rom
# mess aquarius -cart1 example01.rom
# openmsx example01.rom
# openmsx -machine msx1 -carta example01.rom
# openmsx -machine msx2 example01.rom
# openmsx -machine msx2plus example01.rom
# mess msx -cart1 example01.rom
# mess msx2 -cart1 example01.rom
# mess msx2p -cart1 example01.rom
# openmsx -ext gfx9000
# openmsx -ext video9000

