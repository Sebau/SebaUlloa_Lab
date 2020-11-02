using Lab.Demo.Entitys;
using Lab.Demo.ResourceAcces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab.Demo.Logic
{
    public class RegionLogic
    {
        //GENERO UN CONTEXTO PARA LLAMAR UNA SOLA VEZ A LA CONEXION
        private readonly NorthwindContext context;
        
        public RegionLogic()
        {
            this.context = new NorthwindContext();
        }        
        
        
        //PARA TRAER TODAS LAS REGIONES
        public List<Region> Regions()
        {
            return context.Region.ToList();
        }

        //PARA TRAER UNA REGION
        public Region Region(int id)
        {
            return context.Region.FirstOrDefault(r => r.RegionID.Equals(id));
        }
    }
}