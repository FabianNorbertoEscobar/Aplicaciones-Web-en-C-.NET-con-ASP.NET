using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculadora_v1
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

        protected void btnSumar_Click(object sender, EventArgs e)
        {
            int operando1 = Int32.MaxValue;
            int operando2 = Int32.MaxValue;

            if (Int32.TryParse(txtOperando1.Text, out operando1) && Int32.TryParse(txtOperando2.Text, out operando2))
            {
                int resultado = operando1 + operando2;
                lblResultado.Text = resultado.ToString();
            }
            else
                lblResultado.Text = "Ingrese números enteros válidos";
        }
    }
}