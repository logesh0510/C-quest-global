using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace printing_divisible
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int number1, number2;
            string div;
            Console.WriteLine("enter number1");
            number1 = int.Parse(Console.ReadLine());
            Console.WriteLine("enter number2");
            number2 = int.Parse(Console.ReadLine());
           div=(number1 % number2 == 0) ?"divisible": "not divisible";
            Console.WriteLine(div);
        }
    }
}
