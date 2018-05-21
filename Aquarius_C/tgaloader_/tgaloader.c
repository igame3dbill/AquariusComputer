#include <stdlib.h>
#include <stdio.h>
#include "tgaimage.h"

TGADATA* load_tga_data(char *file)
{
    TGADATA *data = NULL;
    FILE *handle = NULL;
    int mode = 0;
    int size = 0;

    handle = fopen(file, "rb");

    if (handle == NULL) {
	    fprintf(stderr, "Error: Cannot find file %s\n", file);
	    return NULL;
    } else {
	    data = malloc(sizeof(TGADATA));

	    /* load header data */
	    fseek(handle, 12, SEEK_SET);
	    fread(&data->width, sizeof(SHORT), 1, handle);
	    fread(&data->height, sizeof(SHORT), 1, handle);
	    fread(&data->depth, sizeof(BYTE), 1, handle);

	    /* set mode variable = components per pixel */
	    mode = data->depth / 8;

	    /* set size variable = total bytes */
	    size = data->width * data->height * mode;

	    /* allocate space for the image data */
	    data->imgData = malloc(sizeof(BYTE) * size);

	    /* load image data */
	    fseek(handle, 18, SEEK_SET);
	    fread(data->imgData, sizeof(BYTE), size, handle);
	    fclose(handle);

	    /*
	    * check mode 3 = RGB, 4 = RGBA
	    * RGB and RGBA data is stored as BGR
	    * or BGRA so the red and blue bits need
	    * to be flipped.
	    */
	    if (mode >= 3) {
		    BYTE tmp = 0;
		    int i;
		    for (i = 0; i < size; i += mode) {
			    tmp = data->imgData[i];
			    data->imgData[i] = data->imgData[i + 2];
			    data->imgData[i + 2] = tmp;
		    }
	    }
    }
    return data;
}

int free_tga_data(TGADATA *tgadata)
{
    if (tgadata == NULL) {
	    return -1;
    } else {
	    free(tgadata->imgData);
	    free(tgadata);
	    return 0;
    }
}
