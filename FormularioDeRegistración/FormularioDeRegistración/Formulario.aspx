<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="FormularioDeRegistración.Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="lblFormularioDeRegistracion" runat="server" Text="Formulario De Registración" ForeColor="Blue"></asp:Label>
        <br /><br />

        <p>Complete todos los campos con la información solicitada para poder registrarse</p>
        <br /><br />

    </div>

        <asp:Label ID="lblName" runat="server" Text="Nombre:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ControlToValidate="txtName" runat="server" ErrorMessage="  Campo requerido. "></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="lblSurname" runat="server" Text="Apellido:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtSurname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorSurname" ControlToValidate="txtSurname" runat="server" ErrorMessage="  Campo requerido. "></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="lblAge" runat="server" Text="Edad:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAge" ControlToValidate="txtAge" runat="server" ErrorMessage="  Campo requerido. "></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidatorAge" ControlToValidate="txtAge" MinimumValue="17" MaximumValue="150" Type="Integer" runat="server" ErrorMessage="La edad para registrarse debe ser mayor a 17. "></asp:RangeValidator>
        <br /><br />

        <asp:Label ID="lblEmail" runat="server" Text="E-mail:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ControlToValidate="txtEmail" runat="server" ErrorMessage="  Campo requerido. "></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server" ErrorMessage="La expresión ingresada no se corresponde con el formato de una cuenta de correo electrónico"></asp:RegularExpressionValidator>
        <br /><br />

        <asp:Label ID="lblPassWord" runat="server" Text="Contraseña:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" ControlToValidate="txtPassword" runat="server" ErrorMessage="  Campo requerido. "></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Label ID="lblRepeatPassWord" runat="server" Text="Repetir Contraseña:"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtRepeatPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRepeatPassword" ControlToValidate="txtRepeatPassword" runat="server" ErrorMessage="  Campo requerido. "></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidatorRepeatPassword" ControlToValidate="txtRepeatPassword" ControlToCompare="txtPassword" runat="server" ErrorMessage="La contraseña no es la ingresada anteriormente"></asp:CompareValidator>
        <br /><br />

        <br /><br />
        <asp:Button ID="btnSingIn" runat="server" Text="Registrarse" BackColor="Blue" ForeColor="White" OnClick="btnSingIn_Click" />
    </form>
</body>
</html>
