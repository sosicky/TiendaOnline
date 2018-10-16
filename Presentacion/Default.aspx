<%@ Page Title="" Language="C#" MasterPageFile="~/Pagina.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Presentacion.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CPHHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPHBody" runat="server">
    <br />
    <br />

    <div class="card text-white">
        <div class="card-header bg-dark text-warning font-weight-bold">Utilizar el menu para la navegación entre páginas</div>
        <div class="card-body bg-secondary">
            <h5 class="card-title font-weight-bold">Bienvenido a nuestra tienda web!</h5>
            <p class="card-text">
                Por cada producto comprado, 
                     acumulas puntos en tu cuenta
                     para que los puedas canjear por otros productos de la tienda!
            </p>
        </div>
    </div>
    <br />
    <br />


    <div class="container-fluid">

        <!--Juegos-->
        <div class="card text-center bg-success">
            <h4 class="card-header font-weight-bold text-white">Games</h4>
            <div class="card-body bg-secondary">
                <div class="row justify-content-md-center">
                    <div class="card-group">
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Juegos/nier_automata.jpg" alt="Card image cap">
                                <h4 class="card-title text-center text-danger">$30.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 30 Puntos para canjear: 120</p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnJuegoNierAutomata" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-5"></div>
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Juegos/farcry5.jpg" alt="Card image cap" />
                                <h4 class="card-title text-center text-danger">$20.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 20 Puntos para canjear: 60 </p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnJuegoFarCry5" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />

        <!--ANTIVIRUS-->
        <div class="card text-center bg-success">
            <h4 class="card-header font-weight-bold text-white">Antivirus</h4>
            <div class="card-body bg-secondary">
                <div class="row justify-content-md-center">
                    <div class="card-group">
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Antivirus/panda.png" alt="Card image cap">
                                <h4 class="card-title text-center text-danger">$30.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 30 Puntos para canjear: 120</p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnPanda" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-5"></div>
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Antivirus/kaspersky.png" alt="Card image cap" />
                                <h4 class="card-title text-center text-danger">$20.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 20 Puntos para canjear: 60 </p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnKaspersky" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />

        <!--DISEÑO-->
        <div class="card text-center bg-success">
            <h4 class="card-header font-weight-bold text-white">Diseño</h4>
            <div class="card-body bg-secondary">
                <div class="row justify-content-md-center">
                    <div class="card-group">
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Diseño/photoshop.jpg" alt="Card image cap">
                                <h4 class="card-title text-center text-danger">$30.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 30 Puntos para canjear: 120</p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnPhotshop" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-5"></div>
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Diseño/autocad.jpg" alt="Card image cap" />
                                <h4 class="card-title text-center text-danger ">$20.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 20 Puntos para canjear: 60 </p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnAutocad" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <!--Ingeniería-->
        <div class="card text-center bg-success">
            <h4 class="card-header font-weight-bold text-white">Ingeniería</h4>
            <div class="card-body bg-secondary">
                <div class="row justify-content-md-center">
                    <div class="card-group">
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Ingenieria/visualStudio.jpg" alt="Card image cap">
                                <h4 class="card-title text-center text-danger">$30.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 30 Puntos para canjear: 120</p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnVisualStudio" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-5"></div>
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Ingenieria/sap.jpg" alt="Card image cap" />
                                <h4 class="card-title text-center text-danger ">$20.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 20 Puntos para canjear: 60 </p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnSap" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <!--Ofimatica-->
        <div class="card text-center bg-success">
            <h4 class="card-header font-weight-bold text-white">Ofimática</h4>
            <div class="card-body bg-secondary">
                <div class="row justify-content-md-center">
                    <div class="card-group">
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Ofimatica/office.jpg" alt="Card image cap">
                                <h4 class="card-title text-center text-danger">$30.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 30 Puntos para canjear: 120</p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnOffice" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-5"></div>
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/Ofimatica/corel.jpg" alt="Card image cap" />
                                <h4 class="card-title text-center text-danger ">$20.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 20 Puntos para canjear: 60 </p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnCorel" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <!--S.O.-->
        <div class="card text-center bg-success">
            <h4 class="card-header font-weight-bold text-white">Sistemas Operativos</h4>
            <div class="card-body bg-secondary">
                <div class="row justify-content-md-center">
                    <div class="card-group">
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/so/macosx.png" alt="Card image cap">
                                <h4 class="card-title text-center text-danger">$30.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 30 Puntos para canjear: 120</p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnMacosx" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                        <div class="col-5"></div>
                        <div class="col">
                            <div class="card">
                                <img class="card-img-top rounded" src="img/so/windows10.jpg" alt="Card image cap" />
                                <h4 class="card-title text-center text-danger ">$20.000</h4>
                                <p class="card-text text-center text-secondary">Puntos por la compra: 20 Puntos para canjear: 60 </p>
                                <div>
                                    <asp:Button type="button" runat="server" ID="BtnWindows10" Text="Comprar $" class="btn btn-success" OnClick="BtnTienda_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <!-- 6 coins-->
        <div class="card text-white bg-secondary text-center text-warning">
            <div class="card-header">Beneficios: Por cada producto comprado,  acumulas puntos en tu cuenta para que los puedas canjear por otros productos de la tienda!</div>
        </div>
    </div>
</asp:Content>
