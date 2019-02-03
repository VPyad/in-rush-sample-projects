using System;
using System.Threading;

namespace ProcessManagment
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Start wait");
            Thread.Sleep(20000);
            Console.WriteLine("Waited");
        }
    }
}
