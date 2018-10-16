<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="UsuarioListar.aspx.cs" Inherits="Presentacion.ListarCliente" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">

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
