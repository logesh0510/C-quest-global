using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace printing_even_numbers_from_1to_100
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int flag=0,count = 0;
            for(int i=1;i<=100;i++)
            {
                flag = 0;
                for (int mid = 2; mid<=(i/2); mid++)
                {
                    if (i % mid == 0)
                    {
                        flag = 1;
                    }
                }
                if (((i != 1) && (flag == 0)) && ((i <=20) || (i >=40)))
                {
                    count++;
                }
            }
            Console.WriteLine("Total prime number between 1 and 100 excluding prime between 20 and 40: ");
            Console.WriteLine(count);
        }
    }
}
