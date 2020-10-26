using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tarea2
{
    public class Automovil : Transporte
    {
        public Automovil(int cantPasajeros) : base(cantPasajeros)
        {

        }
        public override string Pasajeros()
        {
            return base.Pasajeros() + " Conduzco con " + this.CantPasajeros;
        }
        public override string Acelerar()
        {
            return "BRAM BRAM";
        }
        public override void Frenar()
        {
            base.Frenar();
        }
    }
}
