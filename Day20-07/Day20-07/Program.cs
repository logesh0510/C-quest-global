using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day20_07
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int ll, ul, n,num, reverse, remainder;
            Console.WriteLine("enter lower limit: ");
            ll = int.Parse(Console.ReadLine());
            Console.WriteLine("enter upper limit: ");
            ul = int.Parse(Console.ReadLine());
            Console.WriteLine("reverse of each number between " + ll + " and " + ul + " is:");
            n = ll;
            while(n<=ul)
            {
                reverse = 0;
                remainder = 0;
                num = n;
                while(num>0)
                {
                    remainder = num % 10;
                    reverse = (reverse * 10)+ remainder;
                    num = num / 10;
                }
                Console.WriteLine(reverse);
                n++;
            }
        }
    }
}
