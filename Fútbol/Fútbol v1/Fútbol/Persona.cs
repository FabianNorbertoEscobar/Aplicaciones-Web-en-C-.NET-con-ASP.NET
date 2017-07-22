using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fútbol
{
    public abstract class Persona
    {
        public string Nombre { get; private set; }

        public DateTime FecNac { get; private set; }

        public string Documento { get; private set; }

        public Persona(string nombre, DateTime fecNac)
        {
            Nombre = nombre;
            FecNac = fecNac;
        }

        public abstract string Saludar();
    }
}