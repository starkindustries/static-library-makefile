// player.h must be in the current directory. or use relative or absolute path to it. e.g #include "include/player.h"
#include "logger.h"  
#include <stdio.h>

void logToConsole(char const* myString)
{
    printf("Logging: %s\n", myString);
}