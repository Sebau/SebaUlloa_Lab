using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tarea2
{
    public abstract class Transporte
    {
        #region Atributo
        private int cantPasajeros;
        #endregion

        #region Constructor
        public Transporte(int cantPasajeros)
        {
            this.cantPasajeros = cantPasajeros;
        }
        #endregion


        #region Metodos
        public int CantPasajeros
        {
            get { return this.cantPasajeros; }
        }

        public virtual string Pasajeros() 
        {
            return "Transporta";
        }
        public abstract string Acelerar();

        public virtual void Frenar()
        {
            Console.WriteLine("Freno");
        }
        #endregion
    }
}
