<%@ Page Title="WebMaster Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebMasterLogin.aspx.cs" Inherits="Farmers_Market.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-12 col-xl-10">
                <div class="card shadow-lg o-hidden border-0 my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-login-image" style="background-image: url(&quot;assets/webmasterlogin.jpg&quot;);"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5"  style="margin-top: 120px; margin-bottom: 120px;">
                                    <div class="text-left">
                                        <h4 class="text-dark mb-4">Login as WebMaster</h4>
                                    </div>
                                    <div class="webmaster">
                                        <div class="form-group">
                                            <asp:TextBox runat="server" class="form-control form-control-user" type="text" id="txtWebMasterUsername" placeholder="Username" name="username" ValidationGroup="webmasterForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateUsername" runat="server" ErrorMessage="Required" ControlToValidate="txtWebMasterUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox runat="server" class="form-control form-control-user" type="password" id="txtWebMasterPassword" placeholder="Password" name="password" ValidationGroup="webmasterForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validatePassword" runat="server" ErrorMessage="Required" ControlToValidate="txtWebMasterPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                        <asp:Button ID="webMasterLogin" runat="server" class="btn btn-primary btn-block text-white btn-user" Text="Login" style="margin-bottom: 15px;" ValidationGroup="webmasterForm" OnClick="webMasterLogin_Click"/>
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
