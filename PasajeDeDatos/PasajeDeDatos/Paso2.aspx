<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Paso2.aspx.cs" Inherits="PasajeDeDatos.Paso2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Paso 2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblPasajeDeDatosPaso2" runat="server" Text="Pasaje de Datos - Paso 2"></asp:Label>
        <br />

        <asp:Label ID="lblNombre" runat="server" Text=" "></asp:Label>
        <br />
        <asp:Label ID="lblApellido" runat="server" Text=" "></asp:Label>
        <br />
        <asp:Label ID="lblDNI" runat="server" Text=" "></asp:Label>
        <br />

        <asp:Button ID="btnCargarSesion" runat="server" Text="Cargar Sesión" OnClick="btnCargarSesion_Click" />
        <asp:Button ID="btnCargarAplicacion" runat="server" Text="Cargar Aplicación" OnClick="btnCargarAplicacion_Click" />
    </div>
    </form>
</body>
</html>
