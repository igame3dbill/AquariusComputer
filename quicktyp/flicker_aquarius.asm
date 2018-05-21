
; File: FLICK.ASM; Displays a 64 Color Aquarius "Mode"
;
; Use tasm (supplied with VirtualAquarius) to compile:
; tasm -80 -b test.asm
;
.org 32000			; Start Program at Memloc 32000

main:	ld  hl, 13524		; Set Memory Location to Color Video
delaya:	in a, (253)		; Read VSYNC Signal Flag
	bit 0,a			; Test bit 1 of VSYNC signal
	jr nz, delaya		; Loop and wait for the sync	
	call hblock		; Draw the horizontal block

	ld hl, 13524		; Reset the Memloc
delayb: in a, (253)		; Read VSYNC Signal Flag
	bit 0,a			; Test bit 1 of VSYNC signal
	jr nz, delayb		; Loop and wait for the sync
	call vblock		; Draw the vertical block

	jp main
	
hblock:	ld  c, 255		; 16 Blocks x 16 Lines, c counter
	ld  b, 0		; Start the Block at color 0
hloop:	ld  (hl), b		; Set the color
	inc hl			; Move to next location
	dec c			; drop the counter
	ld  a, c		; check out the counter
	AND 15			; Strip off first nibble
	cp 15			; is the second nibble 15?
	call z, nxtline		; go to the next line

	ld a, c			; put the counter back in accumulator
	or c			; Are we at zero?
	jr nz, hloop		; if counter is nz repeat loop
	ld (hl),b
	ret			; if counter is z return

nxtline:ld de, 24		; Lines are 40 bytes long, at end of line, 40-16
	add hl, de		; Add 40 to the memloc
	inc b
	ret

vblock:	ld  c, 255		; 16 Blocks x 16 Lines, c counter
	ld  b, 0		; Start the Block at color 0
vloop:	ld  (hl), b		; Set the color
	inc hl			; Move to next location
	inc b
	dec c			; drop the counter
	ld  a, c		; check out the counter
	AND 15			; Strip off first nibble
	cp 15			; is the second nibble 15?
	call z, ntline		; go to the next line

	ld a, c			; put the counter back in accumulator
	or c			; Are we at zero?
	jr nz, vloop		; if counter is nz repeat loop
	ld (hl),b
	ret			; if counter is z return

ntline: ld de, 24		; Lines are 40 bytes long, at end of line, 40-16
	add hl, de		; Add 40 to the memloc
	ret
.END