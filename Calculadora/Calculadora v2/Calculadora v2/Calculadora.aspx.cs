using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora_v2
{
    public partial class Calculadora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                txtOperando1.Text = "0";
                txtOperando2.Text = "0";
            }
        }

        protected void btnOperar_Click(object sender, EventArgs e)
        {
            int operando1 = Int32.MaxValue;
            int operando2 = Int32.MaxValue;

            int resultado;

            if (Int32.TryParse(txtOperando1.Text, out operando1) && Int32.TryParse(txtOperando2.Text, out operando2))
            {
                switch (ddlOperacion.SelectedValue)
                {
                    case "1":
                        resultado = operando1 + operando2;
                        lblResultado.Text = resultado.ToString();
                        break;

                    case "2":
                        resultado = operando1 - operando2;
                        lblResultado.Text = resultado.ToString();
                        break;

                    case "3":
                        resultado = operando1 * operando2;
                        lblResultado.Text = resultado.ToString();
                        break;

                    case "4":
                        try
                        {
                            resultado = operando1 / operando2;
                            lblResultado.Text = resultado.ToString();
                        }
                        catch(System.DivideByZeroException)
                        {
                            lblResultado.Text = "La división entre cero es una indeterminación matemática";
                        }

                        break;

                    default:
                        lblResultado.Text = "Escoja una de las operaciones de la lista desplegable";
                        break;
                }
            }
            else
                lblResultado.Text = "Ingrese números enteros válidos";
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtOperando1.Text = "0";
            txtOperando2.Text = "0";

            lblResultado.Text = " ";
        }
        
        protected void ddlOperacion_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}