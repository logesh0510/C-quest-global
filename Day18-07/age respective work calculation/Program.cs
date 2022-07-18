using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace age_respective_work_calculation
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int age;
            string result="not entering valid age";
            Console.WriteLine("enter a age: ");
            age = Convert.ToInt32(Console.ReadLine());
            if (age == 0)
            {
                result = "infant";
            }
            else if(age<=2)
                {
                result = "toddler";
            }
            else if (age <= 5)
            {
                result = "kinder garden school going";
            }
            else if (age <= 7)
            {
                result = "primary lower school going";
            }
            else if (age <= 10)
            {
                result = "primary upper school going";
            }
            else if (age <= 13)
            {
                result = "lower high school going";
            }
            else if (age <= 15)
            {
                result = "upper high school going";
            }
            else if (age <= 17)
            {
                result = "senior secondary school going";
            }
            else if (age <= 21)
            {
                result = "college going";
            }
            else if (age > 21)
            {
                result = "graduate";
            }
            Console.WriteLine("the person is "+result);
        }
    }
}
