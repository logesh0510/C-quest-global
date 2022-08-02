using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentMarkProcessing
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Student Logesh=new Student();
            Logesh.Read();
            Logesh.Print();
            Logesh.findTotal();
        }
    }
}
