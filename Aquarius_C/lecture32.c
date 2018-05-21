/* Lecture 32 Description
Important functions to have a look:
*/

void *calloc(int num, int size);
// This function allocates an array of num elements each of which size in bytes will be size.

void free(void *address); 
// This function release a block of memory block specified by address.

void *malloc(int num); 
// This function allocates an array of num bytes and leave them initialized.

void *realloc(void *address, int newsize); 
// This function re-allocates memory extending it upto newsize.
