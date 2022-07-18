using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Largest_of_three_salaries
{
    internal class Program
    {
        static void Main(string[] args)
        {
            double firstsalary = 0, secondsalary = 0, thirdsalary = 0,largest;
            Console.WriteLine("enter salary one by one");
            firstsalary=double.Parse(Console.ReadLine());
            secondsalary=double.Parse(Console.ReadLine());
            thirdsalary=double.Parse(Console.ReadLine());
            if ((firstsalary > secondsalary) && (firstsalary > thirdsalary))
            {
                largest = firstsalary;
            }
            else if (secondsalary > thirdsalary)
            {
                largest = secondsalary;
            }
            else
            {
                largest = thirdsalary;
            }
            Console.WriteLine("largest is " + largest);
        }
    }
}
