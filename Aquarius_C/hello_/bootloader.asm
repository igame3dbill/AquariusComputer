;
; File:    bootloader.asm
; By:      Martin v.d. Steenoven
; Date:    15 April 2013
; Version: 2.0
; Purpose: To run a BASIC program from ROM 
;          on a Mattel Aquarius Homecomputer
;
; Use Caq2Bootload.vbs to merge this
; ROM with the CAQ BASIC program file
; Output is a 16K ROM 
;
; Compiled using TNIASM from
; http://www.tni.nl/products/tniasm.html
; using command: tniasm bootloader.asm BOOTLDR.DAT
;

; StartAddress at 49152


ORG $C000

;
; Rom recognization and Jump command
; are injected by Caq2Bootload.vbs
; at address $e000 - $e012 
; using an BASIC REM statement
;
;     db  66, 79, 79, 84
;     db  83, 156, 84, 176
;     db  82, 108, 65, 100
;     db  80, 168, 128, 112
;
;     jp  $c001
;
; End of Rom injection
;

;
; Used a mix of the standard ROM Basic
; and Extended Basic boot procedures.
;
; Start with NEW procedure
; This will prepare the system into starting BASIC
;

     nop			; prevent starting at $c0000 for
				; ROM injection

				; The $00 in jp $c000 may be recognized
				; as an end of BASIC Command line, hence jp $c001

     ld      hl,$0187         	; address with default values
     ld      bc,$0051
     ld      de,$3803         	; USRGO - JUMP 0xc3 instruction for USR() function
     ldir    
     xor     a
     ld      ($38a9),a        	; BUFEND - end of input buffer
     ld      ($3900),a

;
; TEST RAM memory
; Determine much memory is available
; by writing and reading memory
;

     ld      hl,$395d		; start testing memory from here

TESTMEM:

      inc     hl
      ld      c,(hl)
      ld      a,h
      or      l
      jr      z,MemTested	;>>> Jump if HL equals 0xFFFF
      xor     c
      ld      (hl),a
      ld      b,(hl)
      cpl     
      ld      (hl),a
      ld      a,(hl)
      cpl     
      ld      (hl),c
      cp      b
      jr      z,TESTMEM 	; Jump if read/write operation is successfull

; Memory write failed, the memory size is now known.

MemTested:

      dec     hl		; last successfull memory address
      ld      de,$3a25		; minimum requered memory
      rst     $20              	; compare DE with HL
      jp      c,$0bb7          	; if HL < DE goto OM error

      ld      de,$ffce		; -50 default string bufer
      ld      ($38ad),hl       	; MEMSIZ - highest RAM location
      add     hl,de		; substract 50 bytes
      ld      ($384b),hl       	; STKTOP - top location used for stack

      ld      hl,HookLDR
      ld      ($3806),hl       	; HOKDSP - HOOK SerVICE ROUTINE used by BootLoader

			        ; SET START OF BASIC PROGR
      call    BEFORE_START
      call    $0bcb
      jp      $062c            	


BEFORE_START:

      ld      hl,$3901
      ld      ($38D6),hl	; VARTAB
      ld      ($38D8),hl	; ARYTAB
      ld      ($38DA),hl	; End address

      ld      hl,NEWSTART
      ld      ($384f),hl        ; TXTTAB - beginning of Text of Basic program
      dec     hl

      xor     a			; Clear A and reset flags
      ret

; Before entering 062c (BASIC PROGRAM PROCESSING PROCEDURE)
;  - Variables must be cleared
;  - HL points to address before TXTTAB (start BASIC program)
;  - A made zero (optional)
;  - Zero flag is set (optional)
; This is handled by BEFORE_START

;
; HOOK SERVICE ROUTINE jumped here
; $0c - NEW => Skip remove BASIC
; $02 - OKMAIN => RUN
;

HookLDR:

      ex      (sp),hl
      push    af
      ld      a,(hl)		; read parameter after RST30
      inc     hl	        ; skip parameter on return

      cp      $02		; Want to start immediate mode OKMAIN?
      jr      nz, DoNotRun


      ld      hl, $062c		; Replace return address with 062c
				; BASIC PROGRAM PROCESSING PROCEDURE
				; see previous comments about entering 062c
      pop     af
      ex      (sp),hl		; HL gets original value, return address on stack

      jp      BEFORE_START	; return to 062c


DoNotRun:
      cp      $0c		; Want to execute NEW?
      jr      nz, Finished

      ld      hl, $0bcb		; Jump in NEW after reset program
				; This will not destroy the BASIC program
				; but only clear memory variables

Finished:
      pop     af
      ex      (sp),hl
      ret     


;
; Null byte before start of BASIC
;

      db $00

;
; The BASIC program will 
; be attached here
;


NEWSTART:


