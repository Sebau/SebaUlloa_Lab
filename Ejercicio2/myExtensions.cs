using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Ejercicio2
{
    public class MyExtensions
    {

        //public static void ThrowCustomExtension()
        //{
        //    throw new CustomExtension();
        //}

        public static void DivisionN(int numUno)
        {

           Console.Write($"No se puede Dividir por Cero Burro!!");

        }
        public static void Division(int numDos, int numTres)
        {

            float division = numDos / numTres;
            //return division;
            Console.Write($"El resultado es {division}");

        }
       
            

        

    }
}
