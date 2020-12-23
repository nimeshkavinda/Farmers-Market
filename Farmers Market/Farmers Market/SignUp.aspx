<%@ Page Title="Farmer registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Farmers_Market.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-9 col-lg-12 col-xl-10">
                <div class="card shadow-lg o-hidden border-0 my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-flex">
                                <div class="flex-grow-1 bg-login-image" style="background-image: url(&quot;assets/farmerreg.jpg&quot;);"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5" style="margin-top: 30px; margin-bottom: 30px;">
                                    <div class="text-left">
                                        <h4 class="text-dark mb-4">Register as a Farmer</h4>
                                    </div>
                                    <div class="text-left">
                                        <h5 class="mb-4">Personal information</h5>
                                        <hr />
                                    </div>
                                    <div class="signupForm">
                                        <div class="form-row">
                                            <div class="col-md-6 mb-3">
                                                <label for="farmerFName">First name</label>
                                                <asp:TextBox ID="farmerFName" runat="server" type="text" class="form-control" placeholder="First name" ValidationGroup="signupForm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="validateFarmerFName" runat="server" ErrorMessage="Required" ControlToValidate="farmerFName" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="farmerLName">Last name</label>
                                                <asp:TextBox ID="farmerLName" runat="server" type="text" class="form-control" placeholder="Last name" ValidationGroup="signupForm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="validateFarmerLName" runat="server" ErrorMessage="Required" ControlToValidate="farmerLName" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-6 mb-3">
                                                <label>Gender:</label>
                                                <asp:RadioButtonList ID="farmerGender" runat="server" RepeatDirection="Horizontal" CellPadding="8" CellSpacing="4" ValidationGroup="signupForm">
                                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:RequiredFieldValidator ID="validateFarmerGender" runat="server" ErrorMessage="Required" ControlToValidate="farmerGender" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label>Date of birth:</label>
                                                <asp:TextBox ID="farmerDob" runat="server" ValidationGroup="signupForm" TextMode="Date"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="validateFarmerDob" runat="server" ErrorMessage="Required" ControlToValidate="farmerDob" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="text-left">
                                            <h5 class="mb-4">Identification and contact information</h5>
                                            <hr />
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-8 mb-4">
                                                <label for="farmerNic">National identity card</label>
                                                <asp:TextBox ID="farmerNic" runat="server" type="text" class="form-control" placeholder="NIC" ValidationGroup="signupForm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="validateFarmerNic" runat="server" ErrorMessage="Required" ControlToValidate="farmerNic" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-6 mb-3">
                                                <label for="farmerEmail">Email address</label>
                                                <asp:TextBox ID="farmerEmail" runat="server" type="email" class="form-control" placeholder="Email address" ValidationGroup="signupForm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="validateFarmerEmail" runat="server" ErrorMessage="Required" ControlToValidate="farmerEmail" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="validateFarmerEmailFormat" runat="server" ErrorMessage="Invalid email" ForeColor="Red" ControlToValidate="farmerEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="signupForm"></asp:RegularExpressionValidator>
                                            </div>
                                            <div class="col-md-6 mb-3">
                                                <label for="farmerMobile">Mobile</label>
                                                <asp:TextBox ID="farmerMobile" runat="server" type="number" class="form-control" placeholder="Mobile" ValidationGroup="signupForm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="validateFarmerMobile" runat="server" ErrorMessage="Required" ControlToValidate="farmerMobile" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="col-md-4 mb-3">
                                                <label for="farmerCity">City</label>
                                                <asp:TextBox ID="farmerCity" runat="server" type="text" class="form-control" placeholder="City" ValidationGroup="signupForm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="validateFarmerCity" runat="server" ErrorMessage="Required" ControlToValidate="farmerCity" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <label for="farmerState">State</label>
                                                <asp:TextBox ID="farmerState" runat="server" type="text" class="form-control" placeholder="State" ValidationGroup="signupForm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="validateFarmerState" runat="server" ErrorMessage="Required" ControlToValidate="farmerState" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="col-md-4 mb-3">
                                                <label for="farmerZip">Zip</label>
                                                <asp:TextBox ID="farmerZip" runat="server" type="text" class="form-control" placeholder="Zip" ValidationGroup="signupForm"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="validateFarmerZip" runat="server" ErrorMessage="Required" ControlToValidate="farmerZip" ForeColor="Red" ValidationGroup="signupForm"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <asp:Button ID="btnFarmerAccount" runat="server" Text="Register" class="btn btn-primary" ValidationGroup="signupForm" OnClick="btnFarmerAccount_Click" />
                                        <label style="margin-left:20px;">Already a member? <asp:HyperLink ID="linkLogin" href="~/" runat="server">Log in</asp:HyperLink></label>
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
