using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BankApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
				int menu = 0;
				Account account1 = new Account();
				do
				{
					Console.WriteLine("Choice(1-Read, 2-Print, 3-Deposit, 4-Withdraw, 0-Exit):");
					menu = int.Parse(Console.ReadLine());

					if (1 == menu)
					{
						account1.Read();
					}
					else if (2 == menu)
					{
						account1.Print();
					}
					else if (3 == menu)
					{
						float amount = 0.0f;
						Console.WriteLine("Enter amount to deposit:");
						amount = int.Parse(Console.ReadLine());
						account1.DoDeposit(amount);
					}
					else if (4 == menu)
					{
						float amount = 0.0f;
						Console.WriteLine("Enter amount to withdraw:");
						amount = int.Parse(Console.ReadLine());
						account1.DoWithdraw(amount);
					}
					else
					{
						Console.WriteLine("Exit from the app....");
					}
				} while (menu != 0);
		}
    }
}
