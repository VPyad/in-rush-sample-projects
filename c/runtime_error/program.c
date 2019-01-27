#include <stdio.h>
#define MAXCHAR 1000
int main ()
{

FILE *fp;
    char str[MAXCHAR];
    char text[MAXCHAR];
    //char* filename = 'input.txt';
 
    fp = fopen("input.txt", "r");
    /*if (fp == NULL){
        printf("Could not open file"); // %s",filename);
        return 1;
    }*/
    while (fgets(str, MAXCHAR, fp) != NULL)
    {}    //text += str;
    fclose(fp);

FILE *f = fopen("output.txt", "w");

if (f == NULL)
{
    printf("Error opening file!\n");
    return 0;
}

fprintf(f, "Some text: %s\n", str);

fclose(f);
return 0;
}