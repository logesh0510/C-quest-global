using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Assesment_1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string item;
            double price,shipping=0,total;
            int overnight_delivery;
            Console.WriteLine("Enter the item:");
            item = Console.ReadLine();
            Console.WriteLine("Enter the price:");
            price = Convert.ToDouble(Console.ReadLine());
            Console.WriteLine("overnight delivery required(click 0=No,1=Yes):");
            overnight_delivery=Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Invoice:");
            switch(overnight_delivery)
            {
                case 0:
                    Console.WriteLine(item + " " + price);
                    if (price < 100)
                        shipping = 20;
                    else if (price >= 100)
                        shipping = 30;
                    Console.WriteLine("Shipping   "+shipping);
                    total = price + shipping;
                    Console.WriteLine("Total      " + total);
                    break;
                case 1:
                    Console.WriteLine(item + " " + price);
                    if (price < 100)
                        shipping = 20+50;
                    else if (price >= 100)
                        shipping = 30+50;
                    Console.WriteLine("Shipping   " + shipping);
                    total = price + shipping;
                    Console.WriteLine("Total      " + total);
                    break;
            }
        }
    }
}
