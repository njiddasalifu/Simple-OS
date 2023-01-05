#include "include/screen.h"
#include "include/kb.h"
#include "include/string.h"
void kmain()
{
       clearScreen();
       print("Welcome to our simple operating system\nPlease enter a command\n\n");
       print("NOTE: Some commands are bad commands, Please do avoid them.\n");
       while (1)
       {
                print("\nSimple OS> ");
                
                string ch = readStr();
                if(strEql(ch,"cmd"))
                {
                        print("\nYou are allready in command prompt\n");
                }
                else if(strEql(ch,"clear"))
                {
                        clearScreen();
                }
                
                else
                {
                        print("\nBad command!\n");
                }
                
                print("\n");        
       }
        
}
