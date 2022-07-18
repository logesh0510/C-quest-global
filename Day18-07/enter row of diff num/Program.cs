using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace enter_row_of_diff_num
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int i,j,row, column;
            Console.WriteLine("enter row: ");
            row = Convert.ToInt32(Console.ReadLine());
            for(i=1;i<=row;i++)
            {
                for(j=1;j<=i;j++)
                {
                    Console.Write(j+" ");
                }
                Console.WriteLine();
            }
        }
    }
}
