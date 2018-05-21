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
	ld hl, (_ee0)
	ld de, 12491
	add hl, de
	push hl
	ld de, __LABEL__text01
	ld hl, (_ee0)
	add hl, de
	ld b, h
	ld c, l
	ld a, (bc)
	pop hl
	ld (hl), a
	ld hl, (_ee0)
	ld de, 13515
	add hl, de
	push hl
	ld a, 71
	pop hl
	ld (hl), a
__LABEL5:
	ld hl, (_ee0)
	inc hl
	ld (_ee0), hl
__LABEL0:
	ld hl, 11
	ld de, (_ee0)
	or a
	sbc hl, de
	jp nc, __LABEL4
__LABEL3:
	ld hl, 0
	ld (_ee0), hl
	jp __LABEL6
__LABEL10:
	ld hl, (_ee0)
	ld de, 13555
	add hl, de
	push hl
	ld hl, (_ee0)
	ld de, 17
	call __MUL16_FAST
	ld a, l
	pop hl
	ld (hl), a
__LABEL11:
	ld hl, (_ee0)
	inc hl
	ld (_ee0), hl
__LABEL6:
	ld hl, 15
	ld de, (_ee0)
	or a
	sbc hl, de
	jp nc, __LABEL10
__LABEL9:
	ld hl, 0
	ld (_ee0), hl
	jp __LABEL12
__LABEL16:
	ld hl, 0
	ld (_ee1), hl
	jp __LABEL18
__LABEL22:
	ld hl, (_ee1)
	ld de, 8
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
	ld de, 8
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
__LABEL23:
	ld hl, (_ee1)
	inc hl
	ld (_ee1), hl
__LABEL18:
	ld hl, 15
	ld de, (_ee1)
	or a
	sbc hl, de
	jp nc, __LABEL22
__LABEL21:
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
__LABEL__loop01:
	jp __LABEL__loop01
__LABEL__text01:
#line 36
		defb "Hello World!"
#line 37
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
	ld a, (ix+7)
	ld h, 40
	call __MUL8_FAST
	ld l, a
	ld h, 0
	ld de, 12288
	add hl, de
	push hl
	ld a, (ix+5)
	ld l, a
	ld h, 0
	ex de, hl
	pop hl
	add hl, de
	push hl
	ld a, (ix+9)
	pop hl
	ld (hl), a
	ld a, (ix+7)
	ld h, 40
	call __MUL8_FAST
	ld l, a
	ld h, 0
	ld de, 13312
	add hl, de
	push hl
	ld a, (ix+5)
	ld l, a
	ld h, 0
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
	
#line 277 "example01.bas"
#line 1 "mul8.asm"
__MUL8:		; Performs 8bit x 8bit multiplication
		PROC
	
		;LOCAL __MUL8A
		LOCAL __MUL8LOOP
		LOCAL __MUL8B
				; 1st operand (byte) in A, 2nd operand into the stack (AF)
		pop hl	; return address
		ex (sp), hl ; CALLE convention
	
;;__MUL8_FAST: ; __FASTCALL__ entry
	;;	ld e, a
	;;	ld d, 0
	;;	ld l, d
	;;	
	;;	sla h	
	;;	jr nc, __MUL8A
	;;	ld l, e
	;;
;;__MUL8A:
	;;
	;;	ld b, 7
;;__MUL8LOOP:
	;;	add hl, hl
	;;	jr nc, __MUL8B
	;;
	;;	add hl, de
	;;
;;__MUL8B:
	;;	djnz __MUL8LOOP
	;;
	;;	ld a, l ; result = A and HL  (Truncate to lower 8 bits)
	
__MUL8_FAST: ; __FASTCALL__ entry, a = a * h (8 bit mul) and Carry
	
	    ld b, 8
	    ld l, a
	    xor a
	
__MUL8LOOP:
	    add a, a ; a *= 2
	    sla l
	    jp nc, __MUL8B
	    add a, h
	
__MUL8B:
	    djnz __MUL8LOOP
		
		ret		; result = HL
		ENDP
	
#line 278 "example01.bas"
	
ZXBASIC_USER_DATA:
	_ee1 EQU 14338
	_ee0 EQU 14336
	; Defines DATA END --> HEAP size is 0
ZXBASIC_USER_DATA_END EQU ZXBASIC_MEM_HEAP
	; Defines USER DATA Length in bytes
ZXBASIC_USER_DATA_LEN EQU ZXBASIC_USER_DATA_END - ZXBASIC_USER_DATA
	END
