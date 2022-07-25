using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace midspaced_hollow
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
                int numOfStars = lineNumber;
                for (int starI = 1; starI <= numOfStars; starI++)
                {
                    Console.Write((starI == 1 ? "*" : " "));
                }
                numOfStars = lineNumber;
                for (int starI = 1; starI <= numOfStars; starI++)
                {
                    Console.Write((starI == numOfStars ? "*" : " "));
                }
                Console.WriteLine();
            }
        for (int lineNumber = numberOfLines; lineNumber >= 1; lineNumber--)
            {
                int numOfSpaces = numberOfLines - lineNumber;
                for (int spaceI = 1; spaceI <= numOfSpaces; spaceI++)
                {
                    Console.Write(" ");
                }
                int numOfStars = lineNumber;
                for (int starI = 1; starI <= numOfStars; starI++)
                {
                    Console.Write((starI == 1 ? "*" : " "));
                }
                numOfStars = lineNumber;
                for (int starI = 1; starI <= numOfStars; starI++)
                {
                    Console.Write((starI == numOfStars ? "*" : " "));
                }
                Console.WriteLine();
            }
            Console.Read();
        }
    }
}
