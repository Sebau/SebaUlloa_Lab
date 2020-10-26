using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Dynamic;
using System.Runtime.InteropServices;

namespace Tarea2
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.WriteLine("Todos los Aviones");
           

            var numPasajeros = new Random();
            for (var i = 1; i < 6; i++)
            {
                var avion = new Avion(numPasajeros.Next(100));
                Console.WriteLine("avion " + i + " " + avion.Pasajeros() + " Pasajeros");
            }

            Console.WriteLine("Todos los Automoviles");
            
                for (var i = 1; i < 6; i++)
            {
                var automovil = new Automovil(numPasajeros.Next(5));
                Console.WriteLine("Auto " + i + " " + automovil.Pasajeros() + " Pasajeros");
            }

            Console.ReadKey();
        }
    }
}
