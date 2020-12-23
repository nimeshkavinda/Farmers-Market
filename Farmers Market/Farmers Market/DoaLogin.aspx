<%@ Page Title="Staff Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DoaLogin.aspx.cs" Inherits="Farmers_Market.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-12 col-xl-10">
                <div class="card shadow-lg o-hidden border-0 my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-login-image" style="background-image: url(&quot;assets/doalogin.jpg&quot;);"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5"  style="margin-top: 120px; margin-bottom: 120px;">
                                    <div class="text-left">
                                        <h4 class="text-dark mb-4">Login as Department of Agriculture Staff</h4>
                                    </div>
                                    <div class="doa">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" class="form-control form-control-user" type="text" ID="txtDoaUsername" placeholder="Username" ValidationGroup="doaLoginForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateTxtDoaUsername" runat="server" ErrorMessage="Required" ForeColor="Red" ValidationGroup="doaLoginForm" ControlToValidate="txtDoaUsername"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox runat="server" class="form-control form-control-user" type="password" ID="txtDoaPassword" placeholder="Password" ValidationGroup="doaLoginForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateTxtDoaPassword" runat="server" ErrorMessage="Required" ForeColor="Red" ValidationGroup="doaLoginForm" ControlToValidate="txtDoaPassword"></asp:RequiredFieldValidator>
                                        </div>
                                        <asp:Button ID="btnDoaLogin" runat="server" class="btn btn-primary btn-block text-white btn-user" Text="Login" style="margin-bottom: 15px;" ValidationGroup="doaLoginForm"/>
                                        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
