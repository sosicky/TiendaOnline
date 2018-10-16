<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="UsuarioEditar.aspx.cs" Inherits="Presentacion.EditarUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
    <link href="css/forms.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">

    <!--página para editar Usuarios-->
    <h2>Editar Usuarios</h2>

    <!--campo oculto-->
    <asp:HiddenField ID="HfIndice" runat="server" />

    <div class="row">
        <div class="col-s6">

            <!-- Usr_name -->
            <div class="form-group">
                <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="TxtEditNombre" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingrese Nombre" ControlToValidate="TxtEditNombre" CssClass="texto-error"></asp:RequiredFieldValidator>
            </div>

            <!-- Usr_pais -->
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Text="Pais"></asp:Label>
                <asp:DropDownList ID="DlEditPais" runat="server">
                    <asp:ListItem>Chile</asp:ListItem>
                    <asp:ListItem>Argentina</asp:ListItem>
                    <asp:ListItem>Perú</asp:ListItem>
                    <asp:ListItem>México</asp:ListItem>
                    <asp:ListItem>Venezuela</asp:ListItem>
                </asp:DropDownList>
            </div>

            <!-- Usr_password -->
            <div class="form-group">
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TxtEditPass" type="password" runat="server" CssClass="form-control"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Ingrese Password" ControlToValidate="TxtEditPass" CssClass="texto-error"></asp:RequiredFieldValidator>
            </div>

            <!-- Usr_fecha_nacimiento -->
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Fecha de nacimiento dd MM yyyy"></asp:Label>
                <asp:TextBox ID="TxtEditFechaNacimiento" runat="server" CssClass="form-control"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                    runat="server"
                    ErrorMessage="Ingrese fecha"
                    ControlToValidate="TxtEditFechaNacimiento"
                    CssClass="texto-error"></asp:RequiredFieldValidator>
            </div>

            <!--boton editar y cancelar-->
            <div class="form-group">

                <asp:Button ID="BtnCancelar"
                    runat="server"
                    Text="Cancelar"
                    CssClass="btn btn-secondary" OnClick="BtnCancelar_Click" />

                <asp:Button ID="BtnEditarUsuario"
                    runat="server"
                    Text="Editar Usuario"
                    CssClass="btn btn-success" OnClick="BtnEditarUsuario_Click" />
            </div>
        </div>
    </div>
</asp:Content>
