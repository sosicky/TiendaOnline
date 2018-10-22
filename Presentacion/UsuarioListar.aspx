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
    <!--grilla data -->
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" CssClass="table table-bordered">
        <Columns>
            <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" />
            <asp:BoundField DataField="Usuario1" HeaderText="Usuario1" SortExpression="Usuario1" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Puntos" HeaderText="Puntos" SortExpression="Puntos" />
        </Columns>
    </asp:GridView>

    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListarUsuarios" TypeName="LogicaNegocio.UsuarioBL"></asp:ObjectDataSource>

</asp:Content>
