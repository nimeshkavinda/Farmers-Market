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

                            <div class="col-md-12">
                                <hr />
                                <section>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="doaFName">First name</label>
                                            <asp:TextBox ID="doaFName" runat="server" type="text" class="form-control" placeholder="First name"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="doaLName">Last name</label>
                                            <asp:TextBox ID="doaLName" runat="server" type="text" class="form-control" placeholder="Last name"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="doaUsername">Username</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="doaUsernameSpan">@</span>
                                                </div>
                                                <asp:TextBox ID="doaUsername" runat="server" type="text" class="form-control" placeholder="Username"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="doaDesignation">Designation</label>
                                            <asp:TextBox ID="doaDesignation" runat="server" type="text" class="form-control" placeholder="Designation"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="doaEmail">Email address</label>
                                            <asp:TextBox ID="doaEmail" runat="server" type="email" class="form-control" placeholder="Email address"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="doaMobile">Mobile</label>
                                            <asp:TextBox ID="doaMobile" runat="server" type="number" class="form-control" placeholder="Mobile"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <label for="doaCity">City</label>
                                            <asp:TextBox ID="doaCity" runat="server" type="text" class="form-control" placeholder="City"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="doaState">State</label>
                                            <asp:TextBox ID="doaState" runat="server" type="text" class="form-control" placeholder="State"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="doaZip">Zip</label>
                                            <asp:TextBox ID="doaZip" runat="server" type="text" class="form-control" placeholder="Zip"></asp:TextBox>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnDoaAccount" runat="server" Text="Create account" class="btn btn-primary" Style="margin-top: 10px;" OnClick="btnDoaAccount_Click" />
                                </section>
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

                            <div class="col-md-12">
                                <hr />
                                <section>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsFName">First name</label>
                                            <asp:TextBox ID="keelsFName" runat="server" type="text" class="form-control" placeholder="First name"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsLName">Last name</label>
                                            <asp:TextBox ID="keelsLName" runat="server" type="text" class="form-control" placeholder="Last name"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsUsername">Username</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="keelsUsernameSpan">@</span>
                                                </div>
                                                <asp:TextBox ID="keelsUsername" runat="server" type="text" class="form-control" placeholder="Username"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsDesignation">Designation</label>
                                            <asp:TextBox ID="keelsDesignation" runat="server" type="text" class="form-control" placeholder="Designation"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsEmail">Email address</label>
                                            <asp:TextBox ID="keelsEmail" runat="server" type="email" class="form-control" placeholder="Email address"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="keelsMobile">Mobile</label>
                                            <asp:TextBox ID="keelsMobile" runat="server" type="number" class="form-control" placeholder="Mobile"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <label for="keelsCity">City</label>
                                            <asp:TextBox ID="keelsCity" runat="server" type="text" class="form-control" placeholder="City"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="keelsState">State</label>
                                            <asp:TextBox ID="keelsState" runat="server" type="text" class="form-control" placeholder="State"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="keelsZip">Zip</label>
                                            <asp:TextBox ID="keelsZip" runat="server" type="text" class="form-control" placeholder="Zip"></asp:TextBox>
                                        </div>
                                    </div>
                                    <asp:Button ID="btnKeelsAccount" runat="server" Text="Create account" class="btn btn-primary" Style="margin-top: 10px;" OnClick="btnKeelsAccount_Click" />
                                </section>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- Tab content -->
            </div>
        </div>
    </div>

</asp:Content>
