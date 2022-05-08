#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// standard 32bit byteswapping
unsigned long byteswap(unsigned long w)
{
    return (w >> 24) | ((w >> 8) & 0x0000ff00) | ((w << 8) & 0x00ff0000) | (w << 24);
}

// standard 16bit byteswapping
unsigned short int shortswap(unsigned short int w)
{
    return (w >> 8) | (w << 8);
}


// deal with it
int main(int argc, char *argv[])
{
    char filename[130],y;
    FILE *in,*out;
    unsigned long x, buf, size;
    unsigned short z;

    if (argc > 2)
        strcpy(filename, argv[argc-2]);

    while (!(in = fopen(filename, "rb+")))
    {
	    strcpy(filename,"\0");
    }

    if (argc > 2)
        strcpy(filename, argv[argc-1]);

    while (!(out = fopen(filename, "wb+")))
    {
	    strcpy(filename,"\0");
    }

    // get total filesize
    fseek(in, 0, SEEK_END);
    size = ftell(in);

    // deal with header
    x = 0;

    fseek(in, x, SEEK_SET);
    fread(&buf, 4, 1, in);
    buf = byteswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 4, 1, out);
    x += 4;

    fseek(in, x, SEEK_SET);
    fread(&buf, 2, 1, in);
    buf = shortswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 2, 1, out);
    x += 2;

    fseek(in, x, SEEK_SET);
    fread(&buf, 2, 1, in);
    buf = shortswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 2, 1, out);
    x += 2;

    fseek(in, x, SEEK_SET);
    fread(&buf, 4, 1, in);
    buf = byteswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 4, 1, out);
    x += 4;

    fseek(in, x, SEEK_SET);
    fread(&buf, 2, 1, in);
    buf = shortswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 2, 1, out);
    x += 2;

    fseek(in, x, SEEK_SET);
    fread(&buf, 2, 1, in);
    buf = shortswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 2, 1, out);
    x += 2;

    fseek(in, x, SEEK_SET);
    fread(&buf, 4, 1, in);
    buf = byteswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 4, 1, out);
    x += 4;

    fseek(in, x, SEEK_SET);
    fread(&buf, 4, 1, in);
    buf = byteswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 4, 1, out);
    x += 4;

    fseek(in, x, SEEK_SET);
    fread(&buf, 2, 1, in);
    buf = shortswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 2, 1, out);
    x += 2;

    fseek(in, x, SEEK_SET);
    fread(&buf, 2, 1, in);
    buf = shortswap(buf);
    fseek(in, x, SEEK_SET);
    fwrite(&buf, 2, 1, out);
    x += 2;



    // swap each u32 and write it back
    /*for (x = 0x1C; x < size; x += 4)
    {
        fseek(in, x, SEEK_SET);
        fread(&buf, 4, 1, in);
        buf = byteswap(buf);
        fseek(in, x, SEEK_SET);
        fwrite(&buf, 4, 1, out);
    }*/
-
    // clean up and exit
    fclose(in);
    printf("\a\nAll done.  The byte-swapped narc file is at %s\n",filename);
    //getchar();
    return 0;
}
