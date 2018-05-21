// Keyboardio.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <conio.h>
#include <stdio.h>

const int EXTENDED_KEY = 0xE0;
const int ARROW_UP = 'H';
const int ARROW_DOWN = 'P';
const int ESCAPE = 0x1B;

int _tmain(int argc, _TCHAR* argv[]){
    for (;;) {
        int ch = _getch();
        if (ch == 0 || ch == EXTENDED_KEY) {
            int ch2 = _getch();
            if (ch2 == ARROW_UP) {
                printf("Up\n");
            } else if (ch2 == ARROW_DOWN) {
                printf("Down\n");
            } else {
                printf("Extended key: %d %x %c\n", ch2, ch2, ch2);
            }
        } else {
            printf("Regular key: %d %x %c\n", ch, ch, ch);
        }
        if (ch == ESCAPE) {
            break;
        }
    }
    return 0;
}

