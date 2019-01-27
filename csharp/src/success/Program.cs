using System;
using System.IO;

namespace ConsoleApp4
{
class Program
{
static void Main(string[] args)
{
string currentDir = Directory.GetCurrentDirectory();
string text = "";

using (StreamReader sr = new StreamReader("input.txt"))
{
text += sr.ReadLine();
}

using (StreamWriter sw = new StreamWriter("output.txt"))
{
sw.Write(text);
}
}
}
}