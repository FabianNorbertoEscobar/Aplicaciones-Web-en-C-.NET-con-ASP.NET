<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="aspnet_customvalidator.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script language="javascript" src="customvalidator.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            <span>Nombre</span>
            <div>
                <asp:textbox runat="server" id="Nombre" runat="server">
                </asp:textbox>
            </div>
            <div>
                <asp:requiredfieldvalidator runat="server" errormessage="El campo es obligatorio"
                    display="Dynamic" controltovalidate="Nombre">
                </asp:requiredfieldvalidator>
                <asp:customvalidator runat="server" errormessage="La palabra Admnistrador no puede ser utilizada como nombre."
                    controltovalidate="Nombre" onservervalidate="OnServerValidate" display="Dynamic"
                    clientvalidationfunction="validarPalabras">
                </asp:customvalidator>
            </div>
        </div>
        <div>
            <asp:button runat="server" text="Enviar" id="Enviar" OnClick="Enviar_OnClick" />
        </div>
    </div>
    </form>
</body>
</html>
