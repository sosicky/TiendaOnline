<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="UsuarioRegistrar.aspx.cs" Inherits="Presentacion.RegistrarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
    <link href="css/forms.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">


    <!--página para ingresar Usuarios-->
    <h2>Registrar Usuario</h2>
    <br />

    <div class="row">
        <div class="col-s6">

            <!-- Usr_name -->
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server"
                    ErrorMessage="Ingrese Nombre"
                    ControlToValidate="TxtNombre"
                    CssClass="texto-error"></asp:RequiredFieldValidator>
            </div>


            <!-- Usr_pais -->
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Pais"></asp:Label>
                <asp:DropDownList ID="DlPais" 
                    runat="server"
                    CssClass="form-control">
                    <asp:ListItem>Chile</asp:ListItem>
                    <asp:ListItem>Argentina</asp:ListItem>
                    <asp:ListItem>Perú</asp:ListItem>
                    <asp:ListItem>México</asp:ListItem>
                    <asp:ListItem>Venezuela</asp:ListItem>
                </asp:DropDownList>
            </div>
            <br />

            <!-- Usr_password -->
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TxtPass" runat="server" type="password" class="form-control"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                    runat="server" 
                    ErrorMessage="Ingrese Password" 
                    ControlToValidate="TxtPass" 
                    Display="Dynamic" 
                    CssClass="texto-error"></asp:RequiredFieldValidator>
            </div>

             <!-- repetir password -->
            <div>
                <asp:Label ID="Label5" runat="server" Text="Repetir Password"></asp:Label>                
            <asp:TextBox ID="TxtPass2" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
                    runat="server" 
                    ErrorMessage="Ingrese Password" 
                    ControlToValidate="TxtPass2" 
                    Display="Dynamic" 
                    CssClass="texto-error"></asp:RequiredFieldValidator>

                <asp:CompareValidator ID="CompareValidator1" 
                    runat="server" 
                    ErrorMessage="Las contraseñas no coinciden" 
                    Display="Dynamic" 
                    CssClass="texto-error" 
                    ControlToValidate="TxtPass2" 
                    ControlToCompare="TxtPass"></asp:CompareValidator>
            </div>
            <br />

            <!-- Usr_fecha_nacimiento -->
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Fecha de nacimiento dd-MM-yyyy"></asp:Label>
                <asp:TextBox ID="TxtFechaNacimiento" runat="server" CssClass="form-control"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server"
                    ErrorMessage="Ingrese fecha"
                    ControlToValidate="TxtFechaNacimiento"
                    CssClass="texto-error"></asp:RequiredFieldValidator>
            </div>

            <!--boton ingresar-->
            <div class="form-group">
                <asp:Button ID="BtnRegistrarUsuario"
                    runat="server"
                    Text="Registrar Usuario"
                    CssClass="btn btn-primary btn-lg"
                    OnClick="BtnRegistrarUsuario_Click" />
            </div>
        </div>
    </div>
</asp:Content>
