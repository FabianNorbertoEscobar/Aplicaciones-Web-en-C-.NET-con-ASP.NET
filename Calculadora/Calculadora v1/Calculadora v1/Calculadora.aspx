<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Calculadora_v1.Calculadora" %>

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
        <asp:Label ID="lblCalculadora" runat="server" Text="Calculadora" ForeColor="Blue"></asp:Label>
        <br /><asp:TextBox ID="txtOperando1" runat="server"></asp:TextBox>
        <br /><asp:TextBox ID="txtOperando2" runat="server"></asp:TextBox>
        <br /><asp:Button ID="btnSumar" runat="server" Text="Sumar" OnClick="btnSumar_Click" ForeColor="Blue" />
        <br /><asp:Label ID="lblResultado" runat="server" Text=" "></asp:Label>
    </form>
</body>
</html>
