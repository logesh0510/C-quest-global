using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BankApp
{
    internal class Account
    {
        private string accountNumber;
        private string accountHolderName;
        private float balance;
        public void Read()
        {
            Console.WriteLine("enter account number: ");
            accountNumber = Console.ReadLine();
            Console.WriteLine("enter accountHolderName: ");
            accountHolderName = Console.ReadLine();
            Console.WriteLine("enter balance: ");
            balance = float.Parse(Console.ReadLine());
        }
        public void Print()
        {
            Console.WriteLine($"account number :{accountNumber} ");
            Console.WriteLine($"account number :{accountHolderName} ");
            Console.WriteLine($"balance :{balance} ");
        }
        public void DoDeposit(float amount)
        {
            balance += amount;
        }
        public void DoWithdraw(float amount)
        {
            balance -= amount;
        }
    }
}
