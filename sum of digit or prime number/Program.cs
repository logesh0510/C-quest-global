using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace sum_of_digit_or_prime_number
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int A;
            int B;
            Console.WriteLine("Enter value for A:");
            A = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter value for B:");
            B = Convert.ToInt32(Console.ReadLine());
            if ((A % 2) != 0)
            {
                int sum_of_digit = 0;
                int remainder=0;
                int loopvariable = B;
                while (loopvariable>0)
                {
                    remainder = loopvariable % 10;
                    sum_of_digit += remainder;
                    loopvariable /= 10;
                }
                Console.WriteLine("sum of digits of "+B+" is "+sum_of_digit);
            }
            else
            {
                int lowerlimit = B;
                int upperlimit = B + 10;
                int sum_of_prime_numbers = 0;
                Console.WriteLine("prime numbers between "+lowerlimit+" and "+upperlimit+" are:");
                for (int outerloopvar=lowerlimit;outerloopvar<=upperlimit;outerloopvar++)
                {
                    int flag = 0;
                    for (int innerloopvar=2;innerloopvar<=outerloopvar/2;innerloopvar++)
                    {
                        if (outerloopvar % innerloopvar == 0)
                            flag = 1;
                    }
                    if (outerloopvar == 1)
                        flag = 1;
                    if (flag == 0)
                    {
                        sum_of_prime_numbers += outerloopvar;
                        Console.Write(outerloopvar + " ");
                    }
                }
                Console.WriteLine();
                Console.WriteLine("Sum of prime numbers between " + lowerlimit + " and " + upperlimit + " is " + sum_of_prime_numbers);
            }
        }
    }
}
