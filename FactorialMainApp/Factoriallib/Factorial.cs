using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Factoriallib
{
    public class Factorial
    {
        public static int FindFactorial(int num)
        {
            int factorial = 1;
            for (int i = num; i >= 1; i--)
            {
                factorial = factorial * i;
            }
            return factorial;
        }
    }
}
