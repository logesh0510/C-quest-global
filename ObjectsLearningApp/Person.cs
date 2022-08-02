using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectsLearningApp
{
    internal class Person
    {
        private string name;
        private string place;
        private string phoneNumber;
        private int age;
        private string dateOfBirth;

        public void Read()
        {
            Console.WriteLine("enter name: ");
            name = Console.ReadLine();
            Console.WriteLine("enter place: ");
            place = Console.ReadLine();
            Console.WriteLine("enter phone number: ");
            phoneNumber = Console.ReadLine();
            Console.WriteLine("enter age: ");
            age = int.Parse(Console.ReadLine());
            Console.WriteLine("enter date of birth: ");
            dateOfBirth = Console.ReadLine();
        }
        public void Print()
        {
            Console.WriteLine($"Name:{name}");
            Console.WriteLine($"Place:{place}");
            Console.WriteLine($"Phone Number:{phoneNumber}");
            Console.WriteLine($"age:{age}");
            Console.WriteLine($"dateOfBirth:{dateOfBirth}");
        }
    }
}
