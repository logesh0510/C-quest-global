using System;
class HelloWorld
{
    static void Main()
    {
        int num, rem, result, temp;
        Console.WriteLine("enter the number: ");
        num = Convert.ToInt32(Console.ReadLine());
        temp = num;
        result = 0;
        while (num > 0)
        {
            rem = num % 10;
            num = num / 10;
            result += (rem * rem * rem);
        }
        if (result == temp)
        {
            Console.WriteLine("it's armstrong");
        }
        else
        {
            Console.WriteLine("it's not armstrong");
        }
    }
}