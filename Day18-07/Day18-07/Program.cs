using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day18_07
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int h, b, r, option;
            double result;
            do
            {
                Console.WriteLine("enter the option: 1 for circle \n 2 for triangle area \n enter the option 3 for exit ");
                option = Convert.ToInt32(Console.ReadLine());
                switch (option)
                {
                    case 1:
                        Console.WriteLine("enter the radius: ");
                        r = Convert.ToInt32(Console.ReadLine());
                        result = 3.14 * r * r;
                        Console.WriteLine("circle area is " + result);
                        break;
                    case 2:
                        Console.WriteLine("enter the height: ");
                        h = Convert.ToInt32(Console.ReadLine());
                        Console.WriteLine("enter the base: ");
                        b = Convert.ToInt32(Console.ReadLine());
                        result = (h * b) / 2.0;
                        Console.WriteLine("triangle area is " + result);
                        break;
                    case 3:
                        result = 0;
                        Console.WriteLine(result);
                        break;
                }
            }
            while (option != 3);
            }
        }
    }

