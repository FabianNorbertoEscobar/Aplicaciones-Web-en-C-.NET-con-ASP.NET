using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EF_EMPRESA
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ActualizarGridView();
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Contexto ctx = new Contexto();

            Empleado emp = new Empleado();
            emp.Nombre = txtNombre.Text;
            emp.IdEmpresa = 1;

            ctx.Empleado.Add(emp);
            ctx.SaveChanges();

            ActualizarGridView();
        }

        protected void ActualizarGridView()
        {
            Contexto ctx = new Contexto();

            var emps = from e1 in ctx.Empleado select e1;
            dgvEmpleados.DataSource = emps.ToList();
            dgvEmpleados.DataBind();
        }
    }
}