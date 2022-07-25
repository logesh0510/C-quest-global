using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Day19_07
{
    internal class Program
    {
        static void Main(string[] args)
        {
                int i,j,k,digit=0,numul,numll, rem, result, temp;
                Console.WriteLine("enter the number lower limit: ");
                numll = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("enter the number upper limit: ");
            numul = Convert.ToInt32(Console.ReadLine());
                i = numll;
            Console.WriteLine("Armstrong numbers between {0} and {1} are",numll,numul);
            while (i <= numul)
            {
                digit = 0;
                k = i;
                while(k>0)
                {
                    k= k / 10;
                    digit++;
                }
                if (digit <= 3)
                {
                    result = 0;
                    rem = 0;
                    temp = i;
                    result = 0;
                    j = i;
                    while (j > 0)
                    {
                        rem = j % 10;
                        j = j / 10;
                        result += rem * rem * rem;
                    }
                    if (result == temp)
                    {
                        Console.WriteLine(result);

                    }

                }
                else
                {
                    result = 0;
                    rem = 0;
                    temp = i;
                    result = 0;
                    j = i;
                    while (j > 0)
                    {
                        rem = j % 10;
                        j = j / 10;
                        result += (int)Math.Pow(rem, digit);
                    }
                    if (result == temp)
                    {
                        Console.WriteLine(result);

                    }
                }
                i++;
            }
        
        }
    }
}
