using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentMarkProcessing
{
    internal class Student
    {
     private  string studentName;
     private int rollNumber;
     private  int primaryLanguageMark;
     private  int languageMark;
     private int scienceMark;
     private int socialMark;
        private int mathsMark;
         public void Read()
        {
            Console.WriteLine("enter student name: ");
            studentName= Console.ReadLine();
            Console.WriteLine("enter roll no: ");
            rollNumber= int.Parse(Console.ReadLine());
            Console.WriteLine("enter Language(primary) mark: ");
            primaryLanguageMark = int.Parse(Console.ReadLine());
            Console.WriteLine("enter Language(secondary) mark: ");
            languageMark= int.Parse(Console.ReadLine());
            Console.WriteLine("enter science mark: ");
            scienceMark = int.Parse(Console.ReadLine());
            Console.WriteLine("enter social mark: ");
            socialMark = int.Parse(Console.ReadLine());
            Console.WriteLine("enter maths mark: ");
            mathsMark = int.Parse(Console.ReadLine());
        }
        public void Print()
        {
            Console.WriteLine($"student name:{studentName} ");
            Console.WriteLine($"roll no:{rollNumber}");
            Console.WriteLine($"Language(primary) mark:{primaryLanguageMark}");
            Console.WriteLine($"Language(secondary) mark:{languageMark} ");
            Console.WriteLine($"enter science mark:{scienceMark} ");
            Console.WriteLine($"enter social mark:{socialMark} ");
            Console.WriteLine($"enter maths mark:{mathsMark} ");
            /*int total=findTotal();
            Console.WriteLine("The student{0}({1}) Total Mark is {2}", studentName, rollNumber, total);*/

        }
        public int findTotal()
        {
            int total = primaryLanguageMark + languageMark + scienceMark + socialMark + mathsMark;
            Console.WriteLine("The student{0}({1}) Total Mark is {2}", studentName, rollNumber, total);
            return total;
        }
    }
}
