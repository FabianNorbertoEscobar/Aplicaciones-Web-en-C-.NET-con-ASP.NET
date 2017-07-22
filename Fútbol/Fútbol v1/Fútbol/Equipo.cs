using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fútbol
{
    public class Equipo
    {
        private string _nombre;

        private List <Jugador> _jugadores = new List <Jugador>();

        public Equipo(List <Jugador> jugadores)
        {
            _jugadores = jugadores;
        }

        public Jugador JugadorInicioPartido
        {
            get
            {
                return _jugadores.First(j => j.Posicion == 9);
            }
        }
    }
}