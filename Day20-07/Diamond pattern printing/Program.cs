using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Diamond_pattern_printing
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int numberOfLines = 0;
            Console.Write("Enter number of lines:");
            numberOfLines = int.Parse(Console.ReadLine());
            for (int lineNumber = 1; lineNumber <= numberOfLines; lineNumber++)
            {
                int numOfSpaces = numberOfLines - lineNumber;
                for (int spaceI = 1; spaceI <= numOfSpaces; spaceI++)
                {
                    Console.Write(" ");
                }
                int numOfStars = lineNumber + lineNumber - 1;
                for (int starI = 1; starI <= numOfStars; starI++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }
            for (int lineNumber = numberOfLines - 1; lineNumber >= 1; lineNumber--)
            {
                int numOfSpaces = numberOfLines - lineNumber;
                for (int spaceI = 1; spaceI <= numOfSpaces; spaceI++)
                {
                    Console.Write(" ");
                }
                int numOfStars = lineNumber + lineNumber - 1;
                for (int starI = 1; starI <= numOfStars; starI++)
                {
                    Console.Write("*");
                }
                Console.WriteLine();
            }
            Console.Read();
        }
    }
    
}
