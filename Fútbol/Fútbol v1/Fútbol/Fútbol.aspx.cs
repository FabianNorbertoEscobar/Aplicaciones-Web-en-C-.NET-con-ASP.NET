using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fútbol
{
    public partial class Fútbol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnComenzarPartido_Click(object sender, EventArgs e)
        {
            var jugadoresA = new List<Jugador>();
            jugadoresA.Add(new Jugador("Fabián", new DateTime(1995, 8, 3), 9));

            var jugadoresB = new List<Jugador>();
            jugadoresB.Add(new Jugador("Bianca", new DateTime(1995, 7, 2), 11));

            Equipo Local = new Equipo(jugadoresA);
            Equipo Visitante = new Equipo(jugadoresB);

            Arbitro Arbitro1 = new Arbitro("Lucas", new DateTime(1995, 9, 20));

            PartidoDeFutbol p = new PartidoDeFutbol(Local, Visitante, Arbitro1);

            Local = p.Local;
            Visitante = p.Visitante;
        }

        protected void btnSaludar_Click(object sender, EventArgs e)
        {
            Jugador j = new Jugador("José", new DateTime(1981, 7, 10), 7);

            Arbitro a = new Arbitro("Lunati", new DateTime(1980, 10, 10));

            lblJugadorSaludar.Text = j.Saludar();

            lblArbitroSaludar.Text = a.Saludar();
        }
    }
}