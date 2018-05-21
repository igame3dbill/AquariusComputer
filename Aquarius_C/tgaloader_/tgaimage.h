#ifndef TGAIMAGE_H
#define TGAIMAGE_H

/*
* Useful data macros for the TGA image data.
* The data format is layed out by the number of bytes
* each entry takes up in memory where
* 1 BYTE takes up 8 bits.
*/
#define BYTE unsigned char /* 1 BYTE 8 bits */
#define SHORT short int    /* 2 BYTES 16 bits */

/*
* TGA image data structure
* This structure contains the .tga file header
* as well as the actual image data.
* You can find out more about the data this contains
* from the TGA 2.0 image specification at
* http://www.ludorg.net/amnesia/TGA_File_Format_Spec.html
*/
typedef struct _tgadata {
    SHORT width;
    SHORT height;
    BYTE depth;
    BYTE *imgData;
} TGADATA;

/*
* Load .tga data into structure
* params: Location of TGA image to load
* return: pointer to TGADATA structure
*/
TGADATA* load_tga_data(char *file);

/*
* Free allocated TGADATA structure
* return 0 on success return -1 on error
*/
int free_tga_data(TGADATA *tgadata);

#endif

