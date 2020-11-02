using Lab.Demo.Entitys;
using Lab.Demo.ResourceAcces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab.Demo.Logic
{
    public class EmployeesLogic {
    
        private readonly NorthwindContext context;


        public EmployeesLogic()
        {
            this.context = new NorthwindContext();
        }

        //PARA TRAER TODAS LOS TERRITORIOS
        public List<Employees> Empleados()
        {
            return context.Employees.ToList();
        }

        //PARA TRAER UNA REGION
        public Employees Empleado(string FirstNAme)
        {
            return context.Employees.FirstOrDefault(e => e.EmployeesFirstName.Equals(FirstNAme));
        }

    }
}
