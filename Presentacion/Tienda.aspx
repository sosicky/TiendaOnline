<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="Tienda.aspx.cs" Inherits="Presentacion.Tienda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">

    <br />
    <br />
    <div class="card text-white bg-info">
        <div class="card-header">Tienda</div>
        <div class="card-body">
            <h5 class="card-title">Bienvenido a nuestra tienda web!</h5>
            <p class="card-text">
                Por cada producto comprado, 
                     acumulas puntos en tu cuenta
                     para que los puedas canjear por otros productos de la tienda!
            </p>
        </div>
    </div>
    <br />
    <br />

    <div class="conrainer">
        <asp:GridView ID="GvProductos" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="Pro_id" HeaderText="ID" />
                <asp:BoundField DataField="Pro_name" HeaderText="Name" />
                <asp:BoundField DataField="Pro_tipo" HeaderText="Tipo" />
                <asp:BoundField DataField="Pro_precio" HeaderText="Precio" />
                <asp:BoundField DataField="Pro_ptos_por_compra" HeaderText="Puntos por compra" />
                <asp:BoundField DataField="Pro_ptos_para_canjear" HeaderText="Puntos para canjear" />
            
            <asp:TemplateField>
                <ItemTemplate>

                    <asp:CheckBox ID="ChkProductoSeleccionado" runat="server" Text="Comprar"/>

                </ItemTemplate>
            </asp:TemplateField>
            
            </Columns>
        </asp:GridView>
    </div>

    <div class="container">
        <asp:Button ID="BtnComprar" 
            type="button"
            runat="server" 
            Text="Comprar" 
            CssClass="btn btn-warning btn-block"/>
    </div>


</asp:Content>
