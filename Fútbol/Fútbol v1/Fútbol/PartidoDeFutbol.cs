using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Fútbol
{
    public class PartidoDeFutbol
    {
        private DateTime _fechaPartido;

        private int _duracion = 0;

        private Equipo _local;

        private Equipo _visitante;

        private Arbitro _arbitro;

        public PartidoDeFutbol(Equipo a, Equipo b, Arbitro ar)
        {
            _local = a;
            _visitante = b;
            _arbitro = ar;
        }

        public PartidoDeFutbol(Equipo a, Equipo b, Arbitro ar, DateTime f) : this(a, b, ar)
        {
            _fechaPartido = f;
        }

        public Equipo Local
        {
            get { return _local; }
        }

        public Equipo Visitante
        {
            get { return _visitante; }
        }

        public bool Iniciar(DateTime inicio)
        {
            var equipoInicial = _arbitro.Sortear(Local, Visitante);

            _arbitro.Iniciar(inicio);

            var jugador = equipoInicial.JugadorInicioPartido;

            jugador.DarPase();

            return true;
        }
    }
}