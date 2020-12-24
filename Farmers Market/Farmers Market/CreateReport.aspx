<%@ Page Title="Create Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateReport.aspx.cs" Inherits="Farmers_Market.WebForm7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <!-- Jumbotron -->
            <div class="p-5 text-left">
                <h1 class="mb-3">Sell your harvest without a hassle on Farmer's Market</h1>
                <h4 class="mb-3">Project of Department of Agriculture in-collaboration with Keels</h4>
                <a class="btn btn-primary" runat="server" href="~/" role="button">See All Reports</a>
            </div>
            <!-- Jumbotron -->
        </div>
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a runat="server" href="~/">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Create a Report</li>
                </ol>
            </nav>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card shadow-lg o-hidden border-0 my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="p-5" style="margin-top: 20px; margin-bottom: 20px;">
                                    <div class="text-left">
                                        <h4 class="text-dark mb-4">Create a report</h4>
                                        <hr />
                                    </div>
                                    <div class="createReportForm">
                                        <div class="form-group">
                                            <label for="exampleFormControlInput1">Title</label>
                                            <asp:TextBox ID="reportTitle" runat="server" type="text" class="form-control" placeholder="Give a proper title to your report" ValidationGroup="createReportForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateReportTitle" runat="server" ErrorMessage="Required" ControlToValidate="reportTitle" ForeColor="Red" ValidationGroup="createReportForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label for="reportType">Harvest type</label>
                                            <asp:DropDownList ID="reportType" runat="server">
                                                <asp:ListItem Enabled="true" Text="Fruit" Value="Fruit"></asp:ListItem>
                                                <asp:ListItem Text="Vegetable" Value="Vegetable"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label for="reportDesc">Description</label>
                                            <asp:TextBox ID="reportDesc" runat="server" type="text" class="form-control" placeholder="A good description attracts more buyers" ValidationGroup="createReportForm" TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateReportDesc" runat="server" ErrorMessage="Required" ForeColor="Red" ValidationGroup="createReportForm" ControlToValidate="reportDesc"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label for="reportPrice">Price</label>
                                            <asp:TextBox ID="reportPrice" runat="server" type="number" class="form-control" placeholder="Pick a good price" ValidationGroup="createReportForm"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validateReportPrice" runat="server" ErrorMessage="Required" ControlToValidate="reportPrice" ForeColor="Red" ValidationGroup="createReportForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group" style="margin-bottom: 40px;">
                                            <label for="reportPhoto">Upload a photo</label><br />
                                            <asp:FileUpload ID="reportPhoto" runat="server" />
                                            <asp:RequiredFieldValidator ID="validateReportPhoto" runat="server" ErrorMessage="Required" ForeColor="Red" ValidationGroup="createReportForm" ControlToValidate="reportPhoto"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="text-left">
                                            <h4 class="text-dark mb-4">Contact details</h4>
                                            <hr />
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Name</label><br />
                                            <asp:Label ID="lblName" runat="server" Text="Nimesh Kavinda"></asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Email</label><br />
                                            <asp:Label ID="lblEmail" runat="server" Text="nimeshkavinda13@gmail.com"></asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Mobile</label><br />
                                            <asp:Label ID="lblMobile" runat="server" Text="0716956139"></asp:Label>
                                        </div>
                                        <asp:Button ID="btnCreateReport" runat="server" Text="Create report" class="btn btn-primary" ValidationGroup="createReportForm" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 d-none d-lg-flex">

                                <div id="googleMap" style="width: 100%;"></div>

                                <script>
                                    function myMap() {
                                        var mapProp = {
                                            center: new google.maps.LatLng(51.508742, -0.120850),
                                            zoom: 5,
                                        };
                                        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
                                    }
                                </script>

                                <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCyPRijM0WrNsgs5v4-aiyAmM5n9yi45n4&callback=myMap"></script>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
