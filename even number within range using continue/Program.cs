using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace even_number_within_range_using_continue
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int lwrange, uprange, i;
            Console.WriteLine("enter lower range");
            lwrange = int.Parse(Console.ReadLine());
            Console.WriteLine("enter uprange");
            uprange = int.Parse(Console.ReadLine());
            Console.WriteLine("printing the even numbers between " + lwrange + " and " + uprange);
            for(i=lwrange;i<=uprange;i++)
            {
                if (i % 2 != 0)
                    continue;
                else
                    Console.WriteLine(i);
            }
        }
    }
}
