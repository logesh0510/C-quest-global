using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Employee_base_slip
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int current_employee,number_of_employees=4;
            for (current_employee = 1; current_employee <= number_of_employees; current_employee++) //to get new person's information
            {
                string name = "", department = "";
                int Employee_ID = 0, option;
                double Base_salary = 0, Allowance = 0, Total_Deduction = 0, Gross_salary = 0, Net_salary = 0;
                do //to enter or alter the single person details until you give option 4 for exit
                {
                    Console.WriteLine("information of person " + current_employee);
                    Console.WriteLine("enter option\n1.personal details\n2.salary details\n3.employee base slip\n4.To exit");
                    option = int.Parse(Console.ReadLine());
                    switch (option)
                    {
                        case 1:
                            {
                                Console.WriteLine("enter name: ");
                                name = Console.ReadLine();
                                Console.WriteLine("enter department: ");
                                department = Console.ReadLine();
                                Console.WriteLine("Enter employee ID: ");
                                Employee_ID = int.Parse(Console.ReadLine());
                                break;
                            }
                        case 2:
                            {
                                Console.WriteLine("enter name: ");
                                name = Console.ReadLine();
                                Console.WriteLine("enter Base salary: ");
                                Base_salary = double.Parse(Console.ReadLine());
                                Console.WriteLine("enter permitted allowance: ");
                                Allowance = double.Parse(Console.ReadLine());
                                Console.WriteLine("enter Total deduction: ");
                                Total_Deduction = double.Parse(Console.ReadLine());
                                Gross_salary = Base_salary + Total_Deduction + Allowance;
                                Net_salary = Gross_salary - Total_Deduction;
                                break;
                            }
                        case 3:
                            {
                                Console.WriteLine("Base slip of " + name);
                                Console.WriteLine("Name: " + name);
                                Console.WriteLine("Employee-ID: " + Employee_ID);
                                Console.WriteLine("Department: " + department);
                                Console.WriteLine("Salary information of " + name);
                                Console.WriteLine("Base salary: " + Base_salary);
                                Console.WriteLine("Gross salary: " + Gross_salary);
                                Console.WriteLine("Net salary: " + Net_salary);
                                break;
                            }
                        case 4:
                            {
                                Console.WriteLine("you exited thank you");
                                break;
                            }
                    }
                } while (option != 4);
            }
         }
    }
}
