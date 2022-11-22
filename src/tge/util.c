#include "tge/util.h"

//c libs
#include <stdio.h>
#include <stdlib.h>


char* tge_util_file_to_string(const char* filepath)
{
    FILE* f = fopen(filepath, "rb");
    if (!f) {
        return NULL;
    }
    fseek(f, 0, SEEK_END);
    size_t length = ftell(f);
    fseek(f, 0, SEEK_SET);
    char* buffer = malloc(length + 1);

    fread(buffer, 1, length, f);
    buffer[length] = '\0';

    fclose(f);
    return buffer;
}
