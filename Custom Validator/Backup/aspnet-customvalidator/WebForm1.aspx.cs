using System;
using System.Web.UI.WebControls;

namespace aspnet_customvalidator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Nombre.Text.ToLower().Contains("administrador"))
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }

        protected void Enviar_OnClick(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //TODO: Funcionalidad de negocio a implementar.
            }
        }
    }
}