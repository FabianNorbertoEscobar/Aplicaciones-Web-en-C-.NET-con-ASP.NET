<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paso1.aspx.cs" Inherits="PasajeDeDatos.Paso1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Paso 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblPasajeDeDatosPaso1" runat="server" Text="Pasaje de Datos - Paso 1"></asp:Label>
        <br />

        <asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblApellido" runat="server" Text="Apellido:"></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="lblDNI" runat="server" Text="DNI:"></asp:Label>
        <asp:TextBox ID="txtDNI" runat="server"></asp:TextBox>
        <br />

        <asp:Button ID="btnSigGet" runat="server" Text="Sig Get" OnClick="btnSigGet_Click" />
        <asp:Button ID="btnSigSession" runat="server" Text="Sig Session" OnClick="btnSigSession_Click" />
        <asp:Button ID="btnSigApplication" runat="server" Text="Sig Application" OnClick="btnSigApplication_Click" />
    </div>
    </form>
</body>
</html>
