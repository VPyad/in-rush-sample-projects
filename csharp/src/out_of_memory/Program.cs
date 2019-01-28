using System;
using System.Linq;

namespace out_of_memory
{
    class Program
    {
        static void Main(string[] args)
        {
			var result = Enumerable.Range(1, 100000000).ToArray();
			var range = string.Join("", result);

			Console.WriteLine("Done");
        }
    }
}