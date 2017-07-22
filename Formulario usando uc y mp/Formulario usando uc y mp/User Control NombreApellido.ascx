<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="User Control NombreApellido.ascx.cs" Inherits="Formulario_usando_uc_y_mp.User_Control_NombreApellido" %>

<asp:Label ID="lblNombre" runat="server" Text="Nombre" AssociatedControlID="txtNombre"></asp:Label>
<asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre" ></asp:TextBox>

<br /><br />

<asp:Label ID="lblApellido" runat="server" Text="Apellido" AssociatedControlID="txtApellido" ></asp:Label>
<asp:TextBox ID="txtApellido" runat="server" placeholder="Apellido" ></asp:TextBox>
