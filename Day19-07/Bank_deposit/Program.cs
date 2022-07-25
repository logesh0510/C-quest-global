using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bank_deposit
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int accountno,time, option;
            double principle,calc_CI,SI, CI, rate = (double)4/100;
            Console.WriteLine("Enter your account number: ");
            accountno=int.Parse(Console.ReadLine());
            Console.WriteLine("Enter the amount you are ready to deposit: ");
            principle=double.Parse(Console.ReadLine());
            Console.WriteLine("for how long you are going to invest: ");
            time=int.Parse(Console.ReadLine());
            do
            {
                Console.WriteLine("for information about your SI or CI click 1 or 2\n1.SI\n2.CI\n3.exit");
                option = int.Parse(Console.ReadLine());
                switch (option)
                {
                    case 1:
                        SI = (principle * rate * time);
                        Console.WriteLine("your SI for amount " + principle + " for " + time + " years is " + SI);
                        break;
                    case 2:
                        calc_CI = (double)Math.Pow((1 + rate), time);
                        CI = principle * (calc_CI) - principle;
                        Console.WriteLine("your CI for amount " + principle + " for " + time + " years is " + CI);
                        break;
                    case 3:
                        Console.WriteLine("you exited");
                        break;
                }
            } while (option != 3);
        }
    }
}
