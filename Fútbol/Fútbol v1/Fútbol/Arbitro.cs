using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fútbol
{
    public class Arbitro : Persona
    {
        private int _edad;

        private int _horaInicio;
        private int _minutoInicio;

        public Arbitro(string nombre, DateTime fecNac)
            : base(nombre, fecNac)
        {

        }

        public Equipo Sortear(Equipo a, Equipo b)
        {
            Random rand = new Random();

            if (rand.Next(1, 2) == 1)
                return a;
            else
                return b;
        }

        public void Iniciar(DateTime inicio)
        {
            _horaInicio = inicio.Hour;
            _minutoInicio = inicio.Minute;
        }

        public override string Saludar()
        {
            return "Hola, soy " + Nombre + ". Penal Para Riber. " + " Juega el equipo...";
        }
    }
}