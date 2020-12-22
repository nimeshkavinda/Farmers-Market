<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Farmers_Market.WebForm2" %>

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
                                            <input type="text" class="form-control" id="doaFName" placeholder="First name" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="doaLName">Last name</label>
                                            <input type="text" class="form-control" id="doaLName" placeholder="Last name" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="doaUsername">Username</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="doaUsernameSpan">@</span>
                                                </div>
                                                <input type="text" class="form-control" id="doaUsername" placeholder="Username" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="doaDesignation">Designation</label>
                                            <input type="text" class="form-control" id="doaDesignation" placeholder="Designation" required>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-4 mb-3">
                                            <label for="doaEmail">Email address</label>
                                            <input type="text" class="form-control" id="doaEmail" placeholder="Email address" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="doaMobile">Mobile</label>
                                            <input type="text" class="form-control" id="doaMobile" placeholder="Mobile" required>
                                        </div>
                                    </div>                         
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <label for="doaCity">City</label>
                                            <input type="text" class="form-control" id="doaCity" placeholder="City" required>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="doaState">State</label>
                                            <input type="text" class="form-control" id="doaState" placeholder="State" required>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="doaZip">Zip</label>
                                            <input type="text" class="form-control" id="doaZip" placeholder="Zip" required>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="submit" style="margin-top: 10px;">Create account</button>
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
                                            <label for="validationDefault01">First name</label>
                                            <input type="text" class="form-control" id="validationDefault01" placeholder="First name" value="Mark" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationDefault02">Last name</label>
                                            <input type="text" class="form-control" id="validationDefault02" placeholder="Last name" value="Otto" required>
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="validationDefaultUsername">Username</label>
                                            <div class="input-group">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="inputGroupPrepend2">@</span>
                                                </div>
                                                <input type="text" class="form-control" id="validationDefaultUsername" placeholder="Username" aria-describedby="inputGroupPrepend2" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <label for="validationDefault03">City</label>
                                            <input type="text" class="form-control" id="validationDefault03" placeholder="City" required>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationDefault04">State</label>
                                            <input type="text" class="form-control" id="validationDefault04" placeholder="State" required>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationDefault05">Zip</label>
                                            <input type="text" class="form-control" id="validationDefault05" placeholder="Zip" required>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="invalidCheck2" required>
                                            <label class="form-check-label" for="invalidCheck2">
                                                Agree to terms and conditions
                                            </label>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="submit">Submit form</button>
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
