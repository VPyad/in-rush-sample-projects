#include <iostream>
#include <fstream>
#include <string>

using namespace std;
using std::cin;

int main()
{
	string line, text;

	ifstream infile("input.txt");
  if (infile.is_open())
  {
    while (getline (infile, line))
    {
      text += line;
    }
    infile.close();
  }

  else printf("Unable to open file"); 


	ofstream myfile("output.txt");
	if (myfile.is_open())
	{
		myfile << text;
		myfile.close();
	}
	else printf("Unable to open file");

	return 0;
}