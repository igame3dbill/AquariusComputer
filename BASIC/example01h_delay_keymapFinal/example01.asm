	org 57360
__START_PROGRAM:
	di
	push ix
	push iy
	exx
	push hl
	exx
	ld hl, 0
	add hl, sp
	ld (__CALL_BACK__), hl
	ei
	ld hl, 10
	ld (_xposp0), hl
	ld hl, 10
	ld (_yposp0), hl
	ld hl, 25
	ld (_xposp1), hl
	ld hl, 10
	ld (_yposp1), hl
	ld hl, 10
	ld (_xposp2), hl
	ld hl, 18
	ld (_yposp2), hl
	ld hl, 12287
	push hl
	ld hl, 1000
	push hl
	ld hl, 134
	push hl
	call _aquariusfillbytes
	ld hl, 13312
	push hl
	ld hl, 1000
	push hl
	ld hl, 143
	push hl
	call _aquariusfillbytes
	ld hl, 0
	ld (_ee0), hl
	jp __LABEL0
__LABEL4:
	ld hl, 0
	ld (_ee1), hl
	jp __LABEL6
__LABEL10:
	ld hl, (_ee1)
	ld de, 7
	add hl, de
	ld de, 40
	call __MUL16_FAST
	ld de, 12288
	add hl, de
	inc hl
	inc hl
	inc hl
	ex de, hl
	ld hl, (_ee0)
	add hl, de
	push hl
	ld hl, (_ee1)
	ld de, 16
	call __MUL16_FAST
	ex de, hl
	ld hl, (_ee0)
	add hl, de
	ld a, l
	pop hl
	ld (hl), a
	ld hl, (_ee1)
	ld de, 7
	add hl, de
	ld de, 40
	call __MUL16_FAST
	ld de, 13312
	add hl, de
	inc hl
	inc hl
	inc hl
	ex de, hl
	ld hl, (_ee0)
	add hl, de
	push hl
	ld a, 7
	pop hl
	ld (hl), a
	ld hl, (_ee1)
	ld de, 7
	add hl, de
	ld de, 40
	call __MUL16_FAST
	ld de, 13312
	add hl, de
	ld de, 21
	add hl, de
	ex de, hl
	ld hl, (_ee0)
	add hl, de
	push hl
	ld hl, (_ee1)
	ld de, 16
	call __MUL16_FAST
	ex de, hl
	ld hl, (_ee0)
	add hl, de
	ld a, l
	pop hl
	ld (hl), a
__LABEL11:
	ld hl, (_ee1)
	inc hl
	ld (_ee1), hl
__LABEL6:
	ld hl, 15
	ld de, (_ee1)
	or a
	sbc hl, de
	jp nc, __LABEL10
__LABEL9:
__LABEL5:
	ld hl, (_ee0)
	inc hl
	ld (_ee0), hl
__LABEL0:
	ld hl, 15
	ld de, (_ee0)
	or a
	sbc hl, de
	jp nc, __LABEL4
__LABEL3:
	ld hl, 0
	ld (_ee0), hl
	jp __LABEL12
__LABEL16:
	ld hl, (_ee0)
	ld de, 13515
	add hl, de
	push hl
	ld hl, (_ee0)
	ld de, 17
	call __MUL16_FAST
	ld a, l
	pop hl
	ld (hl), a
	ld hl, 5000
	push hl
	call _aquariusdelay
__LABEL17:
	ld hl, (_ee0)
	inc hl
	ld (_ee0), hl
__LABEL12:
	ld hl, 15
	ld de, (_ee0)
	or a
	sbc hl, de
	jp nc, __LABEL16
__LABEL15:
	ld a, 75
	push af
	ld a, 97
	push af
	ld hl, 2
	push hl
	ld hl, 38
	push hl
	call _aquariusputchar
	ld a, 178
	push af
	ld hl, 12
	push hl
	ld hl, __LABEL__text01
	push hl
	ld hl, 2
	push hl
	ld hl, 3
	push hl
	call _aquariuswritetext
__LABEL__loop01:
	ld hl, __LABEL__tile03
	push hl
	ld a, 3
	push af
	ld hl, 3
	push hl
	ld hl, (_yposp0)
	push hl
	ld hl, (_xposp0)
	push hl
	call _aquariusputtile
	ld hl, __LABEL__tile03
	push hl
	ld a, 3
	push af
	ld hl, 3
	push hl
	ld hl, (_yposp1)
	push hl
	ld hl, (_xposp1)
	push hl
	call _aquariusputtile
	ld hl, __LABEL__tile03
	push hl
	ld a, 3
	push af
	ld hl, 3
	push hl
	ld hl, (_yposp2)
	push hl
	ld hl, (_xposp2)
	push hl
	call _aquariusputtile
	ld a, 128
	call _aquariuskeymap
	push af
	ld h, 2
	pop af
	and h
	push af
	ld de, 22
	ld hl, (_yposp0)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL19
	ld hl, (_yposp0)
	inc hl
	ld (_yposp0), hl
__LABEL19:
	ld a, 64
	call _aquariuskeymap
	push af
	ld h, 4
	pop af
	and h
	push af
	ld hl, 0
	ld de, (_yposp0)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL21
	ld hl, (_yposp0)
	dec hl
	ld (_yposp0), hl
__LABEL21:
	ld a, 32
	call _aquariuskeymap
	push af
	ld h, 16
	pop af
	and h
	push af
	ld hl, 0
	ld de, (_xposp0)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL23
	ld hl, (_xposp0)
	dec hl
	ld (_xposp0), hl
__LABEL23:
	ld a, 64
	call _aquariuskeymap
	push af
	ld h, 32
	pop af
	and h
	push af
	ld de, 37
	ld hl, (_xposp0)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL25
	ld hl, (_xposp0)
	inc hl
	ld (_xposp0), hl
__LABEL25:
	ld a, 32
	call _aquariuskeymap
	push af
	ld h, 2
	pop af
	and h
	push af
	ld de, 22
	ld hl, (_yposp1)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL27
	ld hl, (_yposp1)
	inc hl
	ld (_yposp1), hl
__LABEL27:
	ld a, 16
	call _aquariuskeymap
	push af
	ld h, 4
	pop af
	and h
	push af
	ld hl, 0
	ld de, (_yposp1)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL29
	ld hl, (_yposp1)
	dec hl
	ld (_yposp1), hl
__LABEL29:
	ld a, 8
	call _aquariuskeymap
	push af
	ld h, 16
	pop af
	and h
	push af
	ld hl, 0
	ld de, (_xposp1)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL31
	ld hl, (_xposp1)
	dec hl
	ld (_xposp1), hl
__LABEL31:
	ld a, 16
	call _aquariuskeymap
	push af
	ld h, 32
	pop af
	and h
	push af
	ld de, 37
	ld hl, (_xposp1)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL33
	ld hl, (_xposp1)
	inc hl
	ld (_xposp1), hl
__LABEL33:
	ld a, 8
	call _aquariuskeymap
	push af
	ld h, 2
	pop af
	and h
	push af
	ld de, 22
	ld hl, (_yposp2)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL35
	ld hl, (_yposp2)
	inc hl
	ld (_yposp2), hl
__LABEL35:
	ld a, 4
	call _aquariuskeymap
	push af
	ld h, 4
	pop af
	and h
	push af
	ld hl, 0
	ld de, (_yposp2)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL37
	ld hl, (_yposp2)
	dec hl
	ld (_yposp2), hl
__LABEL37:
	ld a, 2
	call _aquariuskeymap
	push af
	ld h, 16
	pop af
	and h
	push af
	ld hl, 0
	ld de, (_xposp2)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL39
	ld hl, (_xposp2)
	dec hl
	ld (_xposp2), hl
__LABEL39:
	ld a, 4
	call _aquariuskeymap
	push af
	ld h, 32
	pop af
	and h
	push af
	ld de, 37
	ld hl, (_xposp2)
	or a
	sbc hl, de
	sbc a, a
	ld h, a
	pop af
	call __AND8
	or a
	jp z, __LABEL41
	ld hl, (_xposp2)
	inc hl
	ld (_xposp2), hl
__LABEL41:
	ld hl, __LABEL__tile01
	push hl
	ld a, 3
	push af
	ld hl, 3
	push hl
	ld hl, (_yposp0)
	push hl
	ld hl, (_xposp0)
	push hl
	call _aquariusputtile
	ld hl, __LABEL__tile01
	push hl
	ld a, 3
	push af
	ld hl, 3
	push hl
	ld hl, (_yposp1)
	push hl
	ld hl, (_xposp1)
	push hl
	call _aquariusputtile
	ld hl, __LABEL__tile01
	push hl
	ld a, 3
	push af
	ld hl, 3
	push hl
	ld hl, (_yposp2)
	push hl
	ld hl, (_xposp2)
	push hl
	call _aquariusputtile
	call _aquariuswaitvbl
	ld a, 181
	ld (12294), a
	ld a, 255
	call _aquariuskeymap
	ld h, a
	ld a, 255
	sub h
	ld (13318), a
	ld a, 128
	call _aquariuskeymap
	ld h, a
	ld a, 255
	sub h
	ld (13320), a
	ld a, 64
	call _aquariuskeymap
	ld h, a
	ld a, 255
	sub h
	ld (13321), a
	ld a, 32
	call _aquariuskeymap
	ld h, a
	ld a, 255
	sub h
	ld (13322), a
	ld a, 16
	call _aquariuskeymap
	ld h, a
	ld a, 255
	sub h
	ld (13323), a
	ld a, 8
	call _aquariuskeymap
	ld h, a
	ld a, 255
	sub h
	ld (13324), a
	ld a, 4
	call _aquariuskeymap
	ld h, a
	ld a, 255
	sub h
	ld (13325), a
	ld a, 2
	call _aquariuskeymap
	ld h, a
	ld a, 255
	sub h
	ld (13326), a
	ld a, 1
	call _aquariuskeymap
	ld h, a
	ld a, 255
	sub h
	ld (13327), a
	ld hl, 12296
	push hl
	ld hl, 8
	push hl
	ld hl, 181
	push hl
	call _aquariusfillbytes
	jp __LABEL__loop01
__LABEL__text01:
#line 83
		defb "Hello World!"
#line 84
__LABEL__tile01:
#line 88
		defb $7C,$5B,$29
		defb $23,$40,$3D
		defb $7E,$2F,$20
		defb $80,$70,$60
		defb $80,$70,$80
		defb $10,$70,$80
#line 94
__LABEL__tile02:
#line 98
		defb $20,$20,$20
		defb $20,$20,$20
		defb $20,$20,$20
		defb $70,$70,$70
		defb $70,$70,$70
		defb $70,$70,$70
#line 104
__LABEL__tile03:
#line 108
		defb $86,$86,$86
		defb $86,$86,$86
		defb $86,$86,$86
		defb $8F,$8F,$8F
		defb $8F,$8F,$8F
		defb $8F,$8F,$8F
#line 114
	ld hl, 0
	ld b, h
	ld c, l
__END_PROGRAM:
	di
	ld hl, (__CALL_BACK__)
	ld sp, hl
	exx
	pop hl
	exx
	pop iy
	pop ix
	ei
	ret
__CALL_BACK__:
	DEFW 0
_aquariusfillbytes:
	push ix
	ld ix, 0
	add ix, sp
#line 1
		ld b, (ix+4)
		ld d, (ix+7)
		ld e, (ix+6)
		ld h, (ix+9)
		ld l, (ix+8)
fillbytes:
		ld (hl),b
		inc hl
		dec de
		ld a,d
		or e
		jr nz,fillbytes
#line 13
_aquariusfillbytes__leave:
	ld sp, ix
	pop ix
	exx
	pop hl
	pop bc
	pop bc
	ex (sp), hl
	exx
	ret
_aquariuscls:
	push ix
	ld ix, 0
	add ix, sp
	ld hl, 12288
	push hl
	ld hl, 1000
	push hl
	ld a, (ix+5)
	ld l, a
	ld h, 0
	push hl
	call _aquariusfillbytes
	ld hl, 13312
	push hl
	ld hl, 1000
	push hl
	ld a, (ix+7)
	ld l, a
	ld h, 0
	push hl
	call _aquariusfillbytes
_aquariuscls__leave:
	ld sp, ix
	pop ix
	exx
	pop hl
	pop bc
	ex (sp), hl
	exx
	ret
_aquariusputchar:
	push ix
	ld ix, 0
	add ix, sp
	ld l, (ix+6)
	ld h, (ix+7)
	ld de, 40
	call __MUL16_FAST
	ld de, 12288
	add hl, de
	push hl
	ld l, (ix+4)
	ld h, (ix+5)
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld a, (ix+9)
	pop hl
	ld (hl), a
	ld l, (ix+6)
	ld h, (ix+7)
	ld de, 40
	call __MUL16_FAST
	ld de, 13312
	add hl, de
	push hl
	ld l, (ix+4)
	ld h, (ix+5)
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld a, (ix+11)
	pop hl
	ld (hl), a
_aquariusputchar__leave:
	ld sp, ix
	pop ix
	exx
	pop hl
	pop bc
	pop bc
	pop bc
	ex (sp), hl
	exx
	ret
_aquariusputtile:
	push ix
	ld ix, 0
	add ix, sp
	ld hl, 0
	ld (_aquariusputtile_tylp), hl
	jp __LABEL42
__LABEL46:
	ld hl, 0
	ld (_aquariusputtile_txlp), hl
	jp __LABEL48
__LABEL52:
	ld l, (ix+6)
	ld h, (ix+7)
	push hl
	ld hl, (_aquariusputtile_tylp)
	ex de, hl
	pop hl
	add hl, de
	ld de, 40
	call __MUL16_FAST
	ld de, 12288
	add hl, de
	push hl
	ld l, (ix+4)
	ld h, (ix+5)
	push hl
	ld hl, (_aquariusputtile_txlp)
	ex de, hl
	pop hl
	add hl, de
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld l, (ix+12)
	ld h, (ix+13)
	push hl
	ld hl, (_aquariusputtile_tylp)
	push hl
	ld l, (ix+8)
	ld h, (ix+9)
	ex de, hl
	pop hl
	call __MUL16_FAST
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld hl, (_aquariusputtile_txlp)
	ex de, hl
	pop hl
	add hl, de
	ld b, h
	ld c, l
	ld a, (bc)
	pop hl
	ld (hl), a
	ld l, (ix+6)
	ld h, (ix+7)
	push hl
	ld hl, (_aquariusputtile_tylp)
	ex de, hl
	pop hl
	add hl, de
	ld de, 40
	call __MUL16_FAST
	ld de, 13312
	add hl, de
	push hl
	ld l, (ix+4)
	ld h, (ix+5)
	push hl
	ld hl, (_aquariusputtile_txlp)
	ex de, hl
	pop hl
	add hl, de
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld l, (ix+12)
	ld h, (ix+13)
	push hl
	ld l, (ix+8)
	ld h, (ix+9)
	push hl
	ld a, (ix+11)
	ld l, a
	ld h, 0
	ex de, hl
	pop hl
	call __MUL16_FAST
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld hl, (_aquariusputtile_tylp)
	push hl
	ld l, (ix+8)
	ld h, (ix+9)
	ex de, hl
	pop hl
	call __MUL16_FAST
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld hl, (_aquariusputtile_txlp)
	ex de, hl
	pop hl
	add hl, de
	ld b, h
	ld c, l
	ld a, (bc)
	pop hl
	ld (hl), a
__LABEL53:
	ld hl, (_aquariusputtile_txlp)
	inc hl
	ld (_aquariusputtile_txlp), hl
__LABEL48:
	ld hl, (_aquariusputtile_txlp)
	push hl
	ld l, (ix+8)
	ld h, (ix+9)
	dec hl
	pop de
	or a
	sbc hl, de
	jp nc, __LABEL52
__LABEL51:
__LABEL47:
	ld hl, (_aquariusputtile_tylp)
	inc hl
	ld (_aquariusputtile_tylp), hl
__LABEL42:
	ld hl, (_aquariusputtile_tylp)
	push hl
	ld a, (ix+11)
	dec a
	ld l, a
	ld h, 0
	pop de
	or a
	sbc hl, de
	jp nc, __LABEL46
__LABEL45:
_aquariusputtile__leave:
	ld sp, ix
	pop ix
	exx
	pop hl
	pop bc
	pop bc
	pop bc
	pop bc
	ex (sp), hl
	exx
	ret
_aquariuswaitvbl:
	push ix
	ld ix, 0
	add ix, sp
#line 1
loopvbl:
		in a, ($FD)
		jr z,loopvbl
#line 4
_aquariuswaitvbl__leave:
	ld sp, ix
	pop ix
	ret
_aquariusdelay:
	push ix
	ld ix, 0
	add ix, sp
#line 1
		ld d, (ix+5)
		ld e, (ix+4)
loopdelay:
		dec de
		ld a,d
		or e
		jp nz, loopdelay
#line 8
_aquariusdelay__leave:
	ld sp, ix
	pop ix
	exx
	pop hl
	ex (sp), hl
	exx
	ret
_aquariuskeymap:
#line 1
		xor $FF
		ld b,a
		ld c,$FF
		in a, (c)
#line 5
_aquariuskeymap__leave:
	ret
_aquariuswritetext:
	push ix
	ld ix, 0
	add ix, sp
	ld hl, 0
	ld (_aquariuswritetext_txlp), hl
	jp __LABEL54
__LABEL58:
	ld l, (ix+6)
	ld h, (ix+7)
	ld de, 40
	call __MUL16_FAST
	ld de, 12288
	add hl, de
	push hl
	ld l, (ix+4)
	ld h, (ix+5)
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld hl, (_aquariuswritetext_txlp)
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld l, (ix+8)
	ld h, (ix+9)
	push hl
	ld hl, (_aquariuswritetext_txlp)
	ex de, hl
	pop hl
	add hl, de
	ld b, h
	ld c, l
	ld a, (bc)
	pop hl
	ld (hl), a
	ld l, (ix+6)
	ld h, (ix+7)
	ld de, 40
	call __MUL16_FAST
	ld de, 13312
	add hl, de
	push hl
	ld l, (ix+4)
	ld h, (ix+5)
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld hl, (_aquariuswritetext_txlp)
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld a, (ix+13)
	pop hl
	ld (hl), a
__LABEL59:
	ld hl, (_aquariuswritetext_txlp)
	inc hl
	ld (_aquariuswritetext_txlp), hl
__LABEL54:
	ld hl, (_aquariuswritetext_txlp)
	push hl
	ld l, (ix+10)
	ld h, (ix+11)
	dec hl
	pop de
	or a
	sbc hl, de
	jp nc, __LABEL58
__LABEL57:
_aquariuswritetext__leave:
	ld sp, ix
	pop ix
	exx
	pop hl
	pop bc
	pop bc
	pop bc
	pop bc
	ex (sp), hl
	exx
	ret
#line 1 "mul16.asm"
__MUL16:	; Mutiplies HL with the last value stored into de stack
				; Works for both signed and unsigned
	
			PROC
	
			LOCAL __MUL16LOOP
	        LOCAL __MUL16NOADD
			
			ex de, hl
			pop hl		; Return address
			ex (sp), hl ; CALLEE caller convention
	
;;__MUL16_FAST:	; __FASTCALL ENTRY: HL = 1st operand, DE = 2nd Operand
	;;		ld c, h
	;;		ld a, l	 ; C,A => 1st Operand
	;;
	;;		ld hl, 0 ; Accumulator
	;;		ld b, 16
	;;
;;__MUL16LOOP:
	;;		sra c	; C,A >> 1  (Arithmetic)
	;;		rra
	;;
	;;		jr nc, __MUL16NOADD
	;;		add hl, de
	;;
;;__MUL16NOADD:
	;;		sla e
	;;		rl d
	;;			
	;;		djnz __MUL16LOOP
	
__MUL16_FAST:
	        ld b, 16
	        ld a, d
	        ld c, e
	        ex de, hl
	        ld hl, 0
	
__MUL16LOOP:
	        add hl, hl  ; hl << 1
	        sla c
	        rla         ; a,c << 1
	        jp nc, __MUL16NOADD
	        add hl, de
	
__MUL16NOADD:
	        djnz __MUL16LOOP
	
			ret	; Result in hl (16 lower bits)
	
			ENDP
	
#line 994 "example01.bas"
#line 1 "and8.asm"
	; FASTCALL boolean and 8 version.
	; result in Accumulator (0 False, not 0 True)
; __FASTCALL__ version (operands: A, H)
	; Performs 8bit and 8bit and returns the boolean
	
__AND8:
		or a
		ret z
		ld a, h
		ret 
	
#line 995 "example01.bas"
	
ZXBASIC_USER_DATA:
	_aquariuswritetext_txlp EQU 14592
	_aquariuswritetext_tylp EQU 14594
	_ee1 EQU 14338
	_ee0 EQU 14336
	_yposp2 EQU 14362
	_yposp1 EQU 14358
	_yposp0 EQU 14354
	_aquariusputtile_txlp EQU 14592
	_xposp0 EQU 14352
	_xposp1 EQU 14356
	_xposp2 EQU 14360
	_aquariusputtile_tylp EQU 14594
	; Defines DATA END --> HEAP size is 0
ZXBASIC_USER_DATA_END EQU ZXBASIC_MEM_HEAP
	; Defines USER DATA Length in bytes
ZXBASIC_USER_DATA_LEN EQU ZXBASIC_USER_DATA_END - ZXBASIC_USER_DATA
	END
