; Disassembly of the file "C:\Users\Bill2014\AQUARIUS2014\Aquarius_C\SingleCharInput_\_SingleCharInput.caq"
; 
; CPU Type: Z80
; 
; Created with dZ80 2.0
;    using script "C:\Users\Bill2014\AQUARIUS2014\aquarius.lua"
; 
; on Thursday, 09 of January 2014 at 04:23 PM
; 
0000 ff        rst     38h
0001 ff        rst     38h
0002 ff        rst     38h
0003 ff        rst     38h
0004 ff        rst     38h
0005 ff        rst     38h
0006 ff        rst     38h
0007 ff        rst     38h
0008 ff        rst     38h
0009 ff        rst     38h
000a ff        rst     38h
000b ff        rst     38h
000c 00        nop     
000d 4c        ld      c,h
000e 4f        ld      c,a
000f 41        ld      b,c
0010 44        ld      b,h
0011 52        ld      d,d
0012 00        nop     
0013 ff        rst     38h
0014 ff        rst     38h
0015 ff        rst     38h
0016 ff        rst     38h
0017 ff        rst     38h
0018 ff        rst     38h
0019 ff        rst     38h
001a ff        rst     38h
001b ff        rst     38h
001c ff        rst     38h
001d ff        rst     38h
001e ff        rst     38h
001f 00        nop     
0020 09        add     hl,bc
0021 39        add     hl,sp
0022 05        dec     b
0023 00        nop     
0024 55        ld      d,l
0025 b0        or      b
0026 3000      jr      nc,0028h
0028 11390a    ld      de,0a39h
002b 00        nop     
002c 58        ld      e,b
002d b0        or      b
002e 3000      jr      nc,0030h
0030 1f        rra     
0031 39        add     hl,sp
0032 14        inc     d
0033 00        nop     
0034 85        add     a,l
0035 41        ld      b,c
0036 2830      jr      z,0068h
0038 3036      jr      nc,0070h
003a 35        dec     (hl)
003b 39        add     hl,sp
003c 29        add     hl,hl
003d 00        nop     
003e 27        daa     
003f 39        add     hl,sp
0040 1e00      ld      e,00h
0042 9a        sbc     a,d
0043 aa        xor     d
0044 41        ld      b,c
0045 00        nop     
0046 3d        dec     a
0047 39        add     hl,sp
0048 2800      jr      z,004ah
004a 94        sub     h
004b 313433    ld      sp,3334h
004e 34        inc     (hl)
004f 302c      jr      nc,007dh
0051 c1        pop     bc
0052 2831      jr      z,0085h
0054 34        inc     (hl)
0055 35        dec     (hl)
0056 35        dec     (hl)
0057 3229a8    ld      (0a829h),a
005a 37        scf     
005b 00        nop     
005c 51        ld      d,c
005d 39        add     hl,sp
005e 320094    ld      (9400h),a
0061 313433    ld      sp,3334h
0064 34        inc     (hl)
0065 312cc1    ld      sp,0c12ch
0068 2831      jr      z,009bh
006a 34        inc     (hl)
006b 35        dec     (hl)
006c 35        dec     (hl)
006d 33        inc     sp
006e 29        add     hl,hl
006f 00        nop     
0070 5c        ld      e,h
0071 39        add     hl,sp
0072 3c        inc     a
0073 00        nop     
0074 58        ld      e,b
0075 b0        or      b
0076 b5        or      l
0077 2830      jr      z,00a9h
0079 29        add     hl,hl
007a 00        nop     
007b 00        nop     
007c 00        nop     
007d 00        nop     
007e 00        nop     
007f 00        nop     
0080 00        nop     
0081 00        nop     
0082 00        nop     
0083 00        nop     
0084 00        nop     
0085 00        nop     
0086 00        nop     
0087 00        nop     
0088 00        nop     
0089 00        nop     
008a 00        nop     
008b 00        nop     
008c 00        nop     
008d 00        nop     
008e 00        nop     
008f 00        nop     
0090 00        nop     
0091 00        nop     
0092 00        nop     
