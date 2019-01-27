using System;

namespace OutOfMemoryException
{
    class Program
    {
        static void Main(string[] args)
        {
            throw new System.OutOfMemoryException();
        }
    }
}
