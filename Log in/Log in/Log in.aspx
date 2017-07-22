<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log in.aspx.cs" Inherits="Log_in.Log_in" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblLogin" runat="server" Text="Iniciar Sesión" ForeColor="#0066FF"></asp:Label>
        <br /><br />

        <asp:Label ID="lblUser" runat="server" Text="Usuario:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUser" runat="server" Width="273px"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUser" runat="server" ErrorMessage="Campo requerido. Debe ingresar el usuario."></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="lblPassword" runat="server" Text="Contraseña:"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" Width="269px"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" runat="server" ErrorMessage="Campo requerido. Debe ingresar la contraseña."></asp:RequiredFieldValidator>
        <br /><br />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnLogin" runat="server" Text="Log In" BackColor="#0066FF" ForeColor="White" />
    </div>
        
    </form>
</body>
</html>
