<%@ Page Title="Farmer Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FarmerLogin.aspx.cs" Inherits="Farmers_Market.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-12 col-xl-10">
                <div class="card shadow-lg o-hidden border-0 my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-login-image" style="background-image: url(&quot;assets/farmerlogin.jpg&quot;);"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5"  style="margin-top: 120px; margin-bottom: 120px;">
                                    <div class="text-left">
                                        <h4 class="text-dark mb-4">Login as Farmer</h4>
                                    </div>
                                    <div class="farmer">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" class="form-control form-control-user" type="text" ID="txtFarmerEmail" placeholder="Email address" ValidationGroup="farmerLoginForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateTxtFarmerEmail" runat="server" ErrorMessage="Required" ForeColor="Red" ValidationGroup="farmerLoginForm" ControlToValidate="txtFarmerEmail"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="validateTxtFarmerEmailFormat" runat="server" ErrorMessage="Invalid email" ForeColor="Red" ControlToValidate="txtFarmerEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="farmerLoginForm"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox runat="server" class="form-control form-control-user" type="password" ID="txtFarmerPassword" placeholder="Password" ValidationGroup="farmerLoginForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateTxtFarmerPassword" runat="server" ErrorMessage="Required" ForeColor="Red" ValidationGroup="farmerLoginForm" ControlToValidate="txtFarmerPassword"></asp:RequiredFieldValidator>
                                        </div>
                                        <asp:Button ID="btnFarmerLogin" runat="server" class="btn btn-primary btn-block text-white btn-user" Text="Login" style="margin-bottom: 15px;" ValidationGroup="farmerLoginForm" OnClick="btnFarmerLogin_Click" />
                                        <label style="margin-top:10px;">Don't have an account? <asp:HyperLink ID="linkLogin" href="SignUp" runat="server">Sign Up</asp:HyperLink></label><br />
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
