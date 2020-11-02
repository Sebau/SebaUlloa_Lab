using Lab.Demo.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab.Capas.Consola
{
    class Program
    {
        static void Main(string[] args)
        {
            RegionLogic regionLogic = new RegionLogic();
            var region = regionLogic.Region(1);
            var regiones = regionLogic.Regions();
            Console.WriteLine(region);
            Console.WriteLine("Todas las regiones son" + regiones);

            TerritoriesLogic territorioLogic = new TerritoriesLogic();
            var territorio = territorioLogic.Territorio(1);
            var territorios = territorioLogic.Territorios();
            Console.WriteLine(territorio);
            Console.WriteLine("Todas las regiones son" + territorios);

            EmployeesLogic empleadoLogic = new EmployeesLogic();
            var empleados = empleadoLogic.Empleados();
            var empleado = empleadoLogic.Empleado("Nancy");
            Console.WriteLine("Existe actualmente" + empleados + "Y tenemos un/a" + empleado + "que trabaja con nosotros");
            Console.ReadKey();
        }
    }
}
