using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp3
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int num,half,i,flag;
            Console.WriteLine("enter the number: ");
            num = Convert.ToInt32(Console.ReadLine());
            half = (int)num / 2;
            i = 2;flag = 0;
            while(i<=half)
            {
                if (num % i == 0)
                {
                    Console.WriteLine("It's not prime");
                    flag = 1;
                    break;
                }
                i++;
            }
            if (flag == 0)
            {
                Console.WriteLine("It's prime");
            }

        }
    }
}
