#include <iostream>
#include "logger.h"
#include "filereader.h"

using namespace std;
int main() 
{
    cout << "Hello, World! Test #2" << endl;
    logToConsole("Booya console! Test #2");
    readFile("MyImportantFile");
    return 0;
}