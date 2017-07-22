<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="Formulario_usando_uc_y_mp.Formulario" %>

<%@ Register Src="~/User Control NombreApellido.ascx" TagPrefix="uc" TagName="UserControlNombreApellido" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContenidoPáginaHija" runat="server">
    <uc:UserControlNombreApellido runat="server" id="ctrlNombreApellido" />
    <br /><br />
    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" />
</asp:Content>
