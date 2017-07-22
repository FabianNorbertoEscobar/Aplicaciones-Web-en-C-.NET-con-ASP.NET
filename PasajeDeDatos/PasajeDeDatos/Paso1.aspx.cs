using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PasajeDeDatos
{
    public partial class Paso1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class SessionManager
        {
            private const string _apellidoKey = "apellido";
            private const string _dniKey = "dni";

            public static string Apellido
            {
                get
                {
                    if (HttpContext.Current.Session[_apellidoKey] == null)
                    {
                        HttpContext.Current.Session[_apellidoKey] = "";
                    }

                    return (string)HttpContext.Current.Session[_apellidoKey];
                }
                set
                {
                    HttpContext.Current.Session[_apellidoKey] = value;
                }
            }

            public static string DNI
            {
                get
                {
                    if (HttpContext.Current.Session[_dniKey] == null)
                    {
                        HttpContext.Current.Session[_dniKey] = "";
                    }

                    return (string)HttpContext.Current.Session[_dniKey];
                }
                set
                {
                    HttpContext.Current.Session[_dniKey] = value;
                }
            }
        }

        public class ApplicationManager
        {
            private const string _apellidoKey = "apellido";
            private const string _dniKey = "dni";

            public static string Apellido
            {
                get
                {
                    if (HttpContext.Current.Application[_apellidoKey] == null)
                    {
                        HttpContext.Current.Application[_apellidoKey] = "";
                    }

                    return (string)HttpContext.Current.Application[_apellidoKey];
                }
                set
                {
                    HttpContext.Current.Application[_apellidoKey] = value;
                }
            }

            public static string DNI
            {
                get
                {
                    if (HttpContext.Current.Application[_dniKey] == null)
                    {
                        HttpContext.Current.Application[_dniKey] = "";
                    }

                    return (string)HttpContext.Current.Application[_dniKey];
                }
                set
                {
                    HttpContext.Current.Application[_dniKey] = value;
                }
            }
        }

        protected void btnSigGet_Click(object sender, EventArgs e)
        {
            string qs = "?nombre=" + Server.UrlEncode(txtNombre.Text) + "&apellido=" + Server.UrlEncode(txtApellido.Text) + "&dni=" + Server.UrlEncode(txtDNI.Text);

            Response.Redirect("/Paso2.aspx" + qs);
        }

        protected void btnSigSession_Click(object sender, EventArgs e)
        {
            Session["nombre"] = txtNombre.Text;
            SessionManager.Apellido = txtApellido.Text;
            SessionManager.DNI = txtDNI.Text;

            Response.Redirect("/Paso2.aspx");
        }

        protected void btnSigApplication_Click(object sender, EventArgs e)
        {
            Application["nombre"] = txtNombre.Text;
            ApplicationManager.Apellido = txtApellido.Text;
            ApplicationManager.DNI = txtDNI.Text;

            Response.Redirect("/Paso2.aspx");
        }
    }
}