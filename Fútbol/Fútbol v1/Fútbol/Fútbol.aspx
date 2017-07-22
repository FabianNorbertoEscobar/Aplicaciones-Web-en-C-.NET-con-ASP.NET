<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fútbol.aspx.cs" Inherits="Fútbol.Fútbol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblPartidoDeFutbol" runat="server" Text="Partido de Fútbol" BackColor="#CC6600" ForeColor="Lime"></asp:Label>
        <br /><br />
        <asp:Button ID="btnComenzarPartido" runat="server" OnClick="btnComenzarPartido_Click" Text="Comenzar" BackColor="Lime" />
        <br /><br />
        <asp:Button ID="btnSaludar" runat="server" OnClick="btnSaludar_Click" Text="Saludar" BackColor="Lime" />
        <br /><br />
        <asp:Label ID="lblJugadorSaludar" runat="server" Text=" "></asp:Label>
        <br /><br />
        <asp:Label ID="lblArbitroSaludar" runat="server" Text=" "></asp:Label>
    
    </div>
        
    </form>
</body>
</html>
