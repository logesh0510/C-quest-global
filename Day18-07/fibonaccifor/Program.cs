using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace fibonaccifor
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i,old=0, current=1, next=0;
            Console.WriteLine("fibonacci series upto 100 is : ");
            Console.Write(old + " " + current);
            for (i=next;current<100;i++)
            {
                next = old + current;
                old = current;
                current = next;
                Console.Write(" "+old);
            }
        }
    }
}
