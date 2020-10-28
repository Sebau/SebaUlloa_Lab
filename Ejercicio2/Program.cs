using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ejercicio2
{
    class Program
    {
        static void Main(string[] args)
        {
            
            Console.WriteLine("Introduzca un Numero");
            
            int numUno = int.Parse(Console.ReadLine());

            MyExtensions.DivisionN(numUno);

            Console.ReadKey();

            //ACA PASO AL SEGUNDO NUMERO
            Console.ReadKey();

            Console.WriteLine("Introduzca un segundo numero");

            int numDos = int.Parse(Console.ReadLine());

            Console.WriteLine("Introduzca un tercer numero");

            int numTres = int.Parse(Console.ReadLine());

                try 
                {

                    MyExtensions.Division(numDos, numTres);
                }
                catch
                {
                    Console.WriteLine("Solamente Chuck Norris Divide Por 0");
                }
            Logic.CampoVacio();        
            Console.ReadKey();
        }
    }
}
