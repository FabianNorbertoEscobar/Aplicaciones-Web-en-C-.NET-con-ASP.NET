using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fútbol
{
    public class Jugador : Persona
    {
        private string _puesto;
        private int _posicion;

        
        public int Posicion
        {
            get { return _posicion; }
        }
        
        public Jugador(string nombre, DateTime fecNac, int pos) : base(nombre, fecNac)
        {
            _posicion = pos;
        }

        public bool DarPase()
        {
            return true;
        }

        public override string Saludar()
        {
            return "Hola, soy " + Nombre + ". Mi posición es " + _posicion.ToString();
        }
    }
}