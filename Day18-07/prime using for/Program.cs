using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace prime_using_for
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i,j,ll, ul,flag=0;
            Console.WriteLine("enter lower limit: ");
            ll = int.Parse(Console.ReadLine());
            Console.WriteLine("enter upper limit: ");
            ul=int.Parse(Console.ReadLine());
            for(i=ll;i<=ul;i++)
            {
                if (i == 1)
                    {
                    flag = 1;
                }
                for(j=2;j<=i/2;j++)
                {
                    if (i%j==0)
                    {
                        flag = 1;
                    }
                }
                if (flag == 0)
                {
                    Console.WriteLine(i + " ");
                }
                flag = 0;
            }
        }
    }
}
