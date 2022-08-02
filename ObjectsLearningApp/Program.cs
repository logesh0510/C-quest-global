using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectsLearningApp
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Person Logesh=new Person();//new reference created
            Console.WriteLine("Enter personal details of Logesh: ");
            Logesh.Read();
            Console.WriteLine("-----------------------------------------");

            Console.WriteLine("Display personal details of Logesh ");
            Console.WriteLine("-----------------------------------------");

            Logesh.Print();

            Logesh = new Person();//new reference for logesh object created and old logesh object details deleted
            Console.WriteLine("Display new personal details of Logesh: ");
            Console.WriteLine("-----------------------------------------");

            Logesh.Print();
        }
    }
}
