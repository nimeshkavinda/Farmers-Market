<%@ Page Title="Admin Panel" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Farmers_Market.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" style="margin-bottom: 50px;">
        <div class="container">
            <h1 class="display-6">Welcome,
                <asp:Label ID="loggedInWebMaster" runat="server" Text=""></asp:Label></h1>
            <p class="lead">As the WebMaster, You can create admin accounts for staff members of Department of Agriculture and Keels.</p>
        </div>
    </div>

    <div class="create-accounts" style="margin-bottom: 50px;">
        <div class="row">
            <div class="col-3">
                <!-- Tab navs -->
                <div
                    class="nav flex-column nav-tabs text-center"
                    id="v-tabs-tab"
                    role="tablist"
                    aria-orientation="vertical">
                    <a
                        class="nav-link active"
                        id="v-tabs-doa-tab"
                        data-mdb-toggle="tab"
                        href="#v-tabs-doa"
                        role="tab"
                        aria-controls="v-tabs-home"
                        aria-selected="true">Department of Agriculture</a>
                    <a
                        class="nav-link"
                        id="v-tabs-keels-tab"
                        data-mdb-toggle="tab"
                        href="#v-tabs-keels"
                        role="tab"
                        aria-controls="v-tabs-profile"
                        aria-selected="false">Keels</a>
                </div>
                <!-- Tab navs -->
            </div>

            <div class="col-9">
                <!-- Tab content -->
                <div class="tab-content" id="v-tabs-tabContent">
                    <div
                        class="tab-pane fade show active"
                        id="v-tabs-doa"
                        role="tabpanel"
                        aria-labelledby="v-tabs-doa-tab">

                        <div class="row-cols-md-6">
                            <div class="col-md-6" style="margin-bottom: 1em;">
                                <h4>Create staff accounts for employees of Department of Agriculture.
                                </h4>
                            </div>

                            <!--DoA Content-->
                            <div class="col-md-12">
                                <hr />
                                <div class="doaForm">
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="doaFName">First name</label>
                                            <asp:TextBox ID="doaFName" runat="server" type="text" class="form-control" placeholder="First name" ValidationGroup="doaForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateDoaFName" runat="server" ErrorMessage="Required" ControlToValidate="doaFName" ForeColor="Red" ValidationGroup="doaForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="doaLName">Last name</label>
                                            <asp:TextBox ID="doaLName" runat="server" type="text" class="form-control" placeholder="Last name" ValidationGroup="doaForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateDoaLName" runat="server" ErrorMessage="Required" ControlToValidate="doaLName" ForeColor="Red" ValidationGroup="doaForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="doaUsername">Username</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="doaUsernameSpan">@</span>
                                                </div>
                                                <asp:TextBox ID="doaUsername" runat="server" type="text" class="form-control" placeholder="Username" ValidationGroup="doaForm"></asp:TextBox>
                                            </div>
                                            <asp:RequiredFieldValidator ID="validateDoaUsername" runat="server" ErrorMessage="Required" ControlToValidate="doaUsername" ForeColor="Red" ValidationGroup="doaForm"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="doaDesignation">Designation</label>
                                            <asp:TextBox ID="doaDesignation" runat="server" type="text" class="form-control" placeholder="Designation" ValidationGroup="doaForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateDoaDesignation" runat="server" ErrorMessage="Required" ControlToValidate="doaDesignation" ForeColor="Red" ValidationGroup="doaForm"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="doaEmail">Email address</label>
                                            <asp:TextBox ID="doaEmail" runat="server" type="email" class="form-control" placeholder="Email address" ValidationGroup="doaForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateDoaEmail" runat="server" ErrorMessage="Required" ControlToValidate="doaEmail" ForeColor="Red" ValidationGroup="doaForm"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="validateDoaEmailFormat" runat="server" ErrorMessage="Invalid email" ForeColor="Red" ControlToValidate="doaEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="doaForm"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="doaMobile">Mobile</label>
                                            <asp:TextBox ID="doaMobile" runat="server" type="number" class="form-control" placeholder="Mobile" ValidationGroup="doaForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateDoaMobile" runat="server" ErrorMessage="Required" ControlToValidate="doaMobile" ForeColor="Red" ValidationGroup="doaForm"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <label for="doaCity">City</label>
                                            <asp:TextBox ID="doaCity" runat="server" type="text" class="form-control" placeholder="City" ValidationGroup="doaForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateDoaCity" runat="server" ErrorMessage="Required" ControlToValidate="doaCity" ForeColor="Red" ValidationGroup="doaForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="doaState">State</label>
                                            <asp:TextBox ID="doaState" runat="server" type="text" class="form-control" placeholder="State" ValidationGroup="doaForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateDoaState" runat="server" ErrorMessage="Required" ControlToValidate="doaState" ForeColor="Red" ValidationGroup="doaForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="doaZip">Zip</label>
                                            <asp:TextBox ID="doaZip" runat="server" type="text" class="form-control" placeholder="Zip" ValidationGroup="doaForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateDoaZip" runat="server" ErrorMessage="Required" ControlToValidate="doaZip" ForeColor="Red" ValidationGroup="doaForm"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnDoaAccount" runat="server" Text="Create account" class="btn btn-primary" ValidationGroup="doaForm" OnClick="btnDoaAccount_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div
                        class="tab-pane fade"
                        id="v-tabs-keels"
                        role="tabpanel"
                        aria-labelledby="v-tabs-keels-tab">

                        <div class="row-cols-md-6">
                            <div class="col-md-6" style="margin-bottom: 1em;">
                                <h4>Create staff accounts for employees of Keels.
                                </h4>
                            </div>

                            <!--Keels Content-->
                            <div class="col-md-12">
                                <hr />
                                <div class="keelsForm">
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsFName">First name</label>
                                            <asp:TextBox ID="keelsFName" runat="server" type="text" class="form-control" placeholder="First name" ValidationGroup="keelsForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateKeelsFName" runat="server" ErrorMessage="Required" ControlToValidate="keelsFName" ForeColor="Red" ValidationGroup="keelsForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsLName">Last name</label>
                                            <asp:TextBox ID="keelsLName" runat="server" type="text" class="form-control" placeholder="Last name" ValidationGroup="keelsForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateKeelsLName" runat="server" ErrorMessage="Required" ControlToValidate="keelsLName" ForeColor="Red" ValidationGroup="keelsForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsUsername">Username</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="keelsUsernameSpan">@</span>
                                                </div>
                                                <asp:TextBox ID="keelsUsername" runat="server" type="text" class="form-control" placeholder="Username" ValidationGroup="keelsForm"></asp:TextBox>
                                            </div>
                                            <asp:RequiredFieldValidator ID="validateKeelsUsername" runat="server" ErrorMessage="Required" ControlToValidate="keelsUsername" ForeColor="Red" ValidationGroup="keelsForm"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsDesignation">Designation</label>
                                            <asp:TextBox ID="keelsDesignation" runat="server" type="text" class="form-control" placeholder="Designation" ValidationGroup="keelsForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateKeelsDesignation" runat="server" ErrorMessage="Required" ControlToValidate="keelsDesignation" ForeColor="Red" ValidationGroup="keelsForm"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsEmail">Email address</label>
                                            <asp:TextBox ID="keelsEmail" runat="server" type="email" class="form-control" placeholder="Email address" ValidationGroup="keelsForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateKeelsEmail" runat="server" ErrorMessage="Required" ControlToValidate="keelsEmail" ForeColor="Red" ValidationGroup="keelsForm"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="validateKeelsEmailFormat" runat="server" ErrorMessage="Invalid email" ForeColor="Red" ControlToValidate="keelsEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="keelsForm"></asp:RegularExpressionValidator>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsMobile">Mobile</label>
                                            <asp:TextBox ID="keelsMobile" runat="server" type="number" class="form-control" placeholder="Mobile" ValidationGroup="keelsForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateKeelsMobile" runat="server" ErrorMessage="Required" ControlToValidate="keelsMobile" ForeColor="Red" ValidationGroup="keelsForm"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <label for="keelsCity">City</label>
                                            <asp:TextBox ID="keelsCity" runat="server" type="text" class="form-control" placeholder="City" ValidationGroup="keelsForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateKeelsCity" runat="server" ErrorMessage="Required" ControlToValidate="keelsCity" ForeColor="Red" ValidationGroup="keelsForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="keelsState">State</label>
                                            <asp:TextBox ID="keelsState" runat="server" type="text" class="form-control" placeholder="State" ValidationGroup="keelsForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateKeelsState" runat="server" ErrorMessage="Required" ControlToValidate="keelsState" ForeColor="Red" ValidationGroup="keelsForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="keelsZip">Zip</label>
                                            <asp:TextBox ID="keelsZip" runat="server" type="text" class="form-control" placeholder="Zip" ValidationGroup="keelsForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateKeelsZip" runat="server" ErrorMessage="Required" ControlToValidate="keelsZip" ForeColor="Red" ValidationGroup="keelsForm"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnKeelsAccount" runat="server" Text="Create account" class="btn btn-primary" ValidationGroup="keelsForm" OnClick="btnKeelsAccount_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Tab content -->
                </div>
            </div>
        </div>
    </div>

</asp:Content>
