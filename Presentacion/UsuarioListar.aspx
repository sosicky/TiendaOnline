<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="UsuarioListar.aspx.cs" Inherits="Presentacion.ListarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">

    <!--página para ingresar Usuarios-->
    <h2>Registrar Usuario</h2>
    <br />

    <div class="row">
        
          
            <!-- Usr_name -->
            <div class="form-group col-s6">
                <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                    runat="server"
                    ErrorMessage="Ingrese Nombre"
                    ControlToValidate="TxtNombre"
                    CssClass="texto-error"></asp:RequiredFieldValidator>
            </div>
            <!-- Usr_apellido -->
            <div class="form-group col-s6">
                <asp:Label ID="Label6" runat="server" Text="Apellido"></asp:Label>
                <asp:TextBox ID="TxtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                    runat="server"
                    ErrorMessage="Ingrese Apellido"
                    ControlToValidate="TxtApellido"
                    CssClass="texto-error"></asp:RequiredFieldValidator>
            </div>
            <!-- Usr_fecha-Nacimiento -->
            <div class="form-group col-s6">
                <asp:Label ID="Label7" runat="server" Text="Fecha Nacimiento"></asp:Label>
                <asp:TextBox ID="TxtFechaNac" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                    runat="server"
                    ErrorMessage="Ingrese Fecha Nacimiento"
                    ControlToValidate="TxtFechaNac"
                    CssClass="texto-error"></asp:RequiredFieldValidator>
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

            <!--boton ingresar-->
            <div class="form-group">
                <asp:Button ID="BtnRegistrarUsuario"
                    runat="server"
                    Text="Registrar Usuario"
                    CssClass="btn btn-primary btn-lg" />
                    <!--OnClick="BtnRegistrarUsuario_Click" -->
                    
            </div>
        
    </div>






    <!--página para listar usuarios-->
    <h2>Listar Usuarios</h2>






    <!--grilla-->
    <asp:GridView ID="GvUsuarios" 
        runat="server"
        AutoGenerateColumns="False" 
        CssClass="table table-bordered" 
        OnRowDeleting="GvUsuarios_RowDeleting" 
        OnSelectedIndexChanged="GvUsuarios_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="Usr_id" HeaderText="Id usuario" />
            <asp:BoundField DataField="Usr_passwd" HeaderText="Password" />
            <asp:BoundField DataField="Usr_name" HeaderText="Nombre usuario" />
            <asp:BoundField DataField="Usr_fecha_nacimiento" HeaderText="Fecha de nacimiento" />
            <asp:BoundField DataField="Usr_pais" HeaderText="Pais" />        
        
        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="BtnEditarUsuario" 
                    runat="server" 
                    Text="Editar"  
                    CssClass="btn btn-dark btn-sm"
                    CommandName="Select" />

                <asp:Button ID="BtnBorrarUsuario" 
                    runat="server" 
                    Text="Borrar" 
                    CssClass="btn btn-danger btn-sm" 
                    CommandName="Delete" />
            </ItemTemplate>
        </asp:TemplateField>
        
        </Columns>
    </asp:GridView>


</asp:Content>
