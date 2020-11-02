using Lab.Demo.Entitys;
using Lab.Demo.ResourceAcces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab.Demo.Logic
{
    public class TerritoriesLogic
    {
        private readonly NorthwindContext context;


        public TerritoriesLogic()
        {
            this.context = new NorthwindContext();
        }


        //PARA TRAER TODAS LOS TERRITORIOS
        public List<Territories> Territorios()
        {
            return context.Territories.ToList();
        }

        //PARA TRAER UNA REGION
        public Territories Territorio(int id)
        {
            return context.Territories.FirstOrDefault(t => t.TerritoryID.Equals(id));
        }
    }
}
    
