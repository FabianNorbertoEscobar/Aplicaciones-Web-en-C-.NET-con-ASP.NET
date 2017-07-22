using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using CalculadoraOperaciones;

namespace Calculadora_v4
{
    public partial class Calculadora : System.Web.UI.Page
    {
       protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtOperando1.Text = "0";
                txtOperando2.Text = "0";
            }
        }

        protected void btnOperar_Click(object sender, EventArgs e)
        {
            double operando1 = Double.MaxValue;
            double operando2 = Double.MaxValue;

            double resultado;

            txtOperando1.Text = txtOperando1.Text.Replace('.', ',');
            txtOperando2.Text = txtOperando2.Text.Replace('.', ',');

            if (Double.TryParse(txtOperando1.Text, out operando1) && Double.TryParse(txtOperando2.Text, out operando2))
            {
                switch (ddlOperacion.SelectedValue)
                {
                    case "1":
                        resultado = Operaciones.Sumar(operando1, operando2);
                        lblResultado.Text = resultado.ToString();
                        break;

                    case "2":
                        resultado = Operaciones.Restar(operando1, operando2);
                        lblResultado.Text = resultado.ToString();
                        break;

                    case "3":
                        resultado = Operaciones.Multiplicar(operando1, operando2);
                        resultado = operando1 * operando2;
                        lblResultado.Text = resultado.ToString();
                        break;

                    case "4":
                        try
                        {
                            resultado = Operaciones.Dividir(operando1, operando2);
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