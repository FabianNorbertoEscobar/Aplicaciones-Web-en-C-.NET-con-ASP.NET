using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PasajeDeDatos
{
    public partial class Paso2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblNombre.Text = Server.UrlDecode(Request.QueryString["nombre"]);
            lblApellido.Text = Server.UrlDecode(Request.QueryString["apellido"]);
            lblDNI.Text = Server.UrlDecode(Request.QueryString["dni"]);
        }

        protected void btnCargarSesion_Click(object sender, EventArgs e)
        {
            lblNombre.Text = (string)Session["nombre"];
            lblApellido.Text = PasajeDeDatos.Paso1.SessionManager.Apellido;
            lblDNI.Text = PasajeDeDatos.Paso1.SessionManager.DNI;
        }

        protected void btnCargarAplicacion_Click(object sender, EventArgs e)
        {
            lblNombre.Text = (string)Application["nombre"];
            lblApellido.Text = PasajeDeDatos.Paso1.ApplicationManager.Apellido;
            lblDNI.Text = PasajeDeDatos.Paso1.ApplicationManager.DNI;
        }
    }
}