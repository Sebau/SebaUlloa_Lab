using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tarea2
{
    public class Avion : Transporte
    {
        public Avion(int cantPasajeros) : base(cantPasajeros)
        {

        }
        public override string Pasajeros()
        {
            return base.Pasajeros() + " Vuelo con "+ this.CantPasajeros; 
        }
        public override string Acelerar()
        {
            return "FSSSH";
        }
        public override void Frenar()
        {
            base.Frenar();
        }
        
    }
}
