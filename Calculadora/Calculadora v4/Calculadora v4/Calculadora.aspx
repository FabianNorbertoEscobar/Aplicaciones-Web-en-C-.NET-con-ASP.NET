<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Calculadora_v4.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblCalculadora" runat="server" Text="Calculadora" ForeColor="#00CC00"></asp:Label>
        <br /><asp:TextBox ID="txtOperando1" runat="server"></asp:TextBox>
        <br /><asp:TextBox ID="txtOperando2" runat="server"></asp:TextBox>
        <br /><asp:Button ID="btnOperar" runat="server" Text="Operar" ForeColor="#00CC00" OnClick="btnOperar_Click" />
        <br /><asp:Label ID="lblResultado" runat="server" Text=" "></asp:Label>
        <div>
        <asp:DropDownList ID="ddlOperacion" runat="server" OnSelectedIndexChanged="ddlOperacion_SelectedIndexChanged">
            <asp:ListItem Value="0">Escoja operación</asp:ListItem>
            <asp:ListItem Value="1">Sumar</asp:ListItem>
            <asp:ListItem Value="2">Restar</asp:ListItem>
            <asp:ListItem Value="3">Multiplicar</asp:ListItem>
            <asp:ListItem Value="4">Dividir</asp:ListItem>
        </asp:DropDownList>
        </div>
        <br /><asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" ForeColor="#00CC00" OnClick="btnLimpiar_Click" />
    </form>
</body>
</html>
