<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora v5.aspx.cs" Inherits="Calculadora_v5.Calculadora_v5" %>

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
        <asp:Label ID="lblCalculadora" runat="server" Text="Calculadora" ForeColor="#FF6600"></asp:Label>
        <br /><asp:TextBox ID="txtOperando1" runat="server"></asp:TextBox>
        <br /><asp:TextBox ID="txtOperando2" runat="server"></asp:TextBox>
        <br /><asp:Button ID="btnOperar" runat="server" Text="Operar" ForeColor="#FF6600" OnClick="btnOperar_Click" />
        <br /><asp:Label ID="lblResultado" runat="server" Text=" "></asp:Label>
        <br />
        <asp:DropDownList ID="ddlOperacion" runat="server" OnSelectedIndexChanged="ddlOperacion_SelectedIndexChanged">
            <asp:ListItem Value="0">Escoja Operación</asp:ListItem>
            <asp:ListItem Value="1">Sumar</asp:ListItem>
            <asp:ListItem Value="2">Restar</asp:ListItem>
            <asp:ListItem Value="3">Multiplicar</asp:ListItem>
            <asp:ListItem Value="4">Dividir</asp:ListItem>
        </asp:DropDownList>
        <br /><asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" ForeColor="#FF6600" OnClick="btnLimpiar_Click" />
    </form>
</body>
</html>
