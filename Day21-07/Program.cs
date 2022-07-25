using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day21_07
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int lwrange, uprange,i,flag=0;
            Console.WriteLine("enter lower range");
            lwrange = int.Parse(Console.ReadLine());
            Console.WriteLine("enter uprange");
            uprange = int.Parse(Console.ReadLine());
            Console.WriteLine("printing the numbers until it reaches first prime between " + lwrange + " and " + uprange);
            for (i=lwrange;i<=uprange;i++)
            {
                flag = 0;
                if (i == 1)
                    Console.WriteLine(i);
                for (int prime = 2; prime <= i / 2; prime++)
                {
                    if (i % prime == 0)
                        flag = 1;
                }
                if (flag == 1)
                    Console.WriteLine(i);
                else
                    break;
            }
        }
    }
}
