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
                    <li class="breadcrumb-item active">Create a Report</li>
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
                                            <label for="reportType">Harvest type&nbsp;</label>
                                            <asp:DropDownList ID="reportType" runat="server" Height="2em" ValidationGroup="reportForm">
                                                <asp:ListItem Enabled="true" Text="Fruit" Value="Fruit" Selected="True"></asp:ListItem>
                                                <asp:ListItem Text="Vegetable" Value="Vegetable"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="validateReportForm" runat="server" ErrorMessage="Required" ControlToValidate="reportType" ForeColor="Red" ValidationGroup="createReportForm"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="form-group">
                                            <label>Location (Use map to get the location)</label><br />
                                            <div class="form-row">
                                                <div class="col-md-6">
                                                    <asp:TextBox ID="reportLat" runat="server" type="text" class="form-control" placeholder="Latitude" ValidationGroup="createReportForm"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="validateReportLat" runat="server" ErrorMessage="Required" ControlToValidate="reportLat" ForeColor="Red" ValidationGroup="createReportForm"></asp:RequiredFieldValidator>
                                                </div>
                                                <div class="col-md-6">
                                                    <asp:TextBox ID="reportLng" runat="server" type="text" class="form-control" placeholder="Longitude" ValidationGroup="createReportForm"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="validateReportLng" runat="server" ErrorMessage="Required" ControlToValidate="reportLng" ForeColor="Red" ValidationGroup="createReportForm"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>
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
                                            <asp:FileUpload ID="reportPhoto" runat="server" accept=".jpg" />
                                            <asp:RequiredFieldValidator ID="validateReportPhoto" runat="server" ErrorMessage="Required" ForeColor="Red" ValidationGroup="createReportForm" ControlToValidate="reportPhoto"></asp:RequiredFieldValidator>
                                        </div>
                                        <div class="text-left">
                                            <h4 class="text-dark mb-4">Contact details</h4>
                                            <hr />
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Name</label><br />
                                            <asp:Label ID="lblName" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Email</label><br />
                                            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Mobile</label><br />
                                            <asp:Label ID="lblMobile" runat="server" Text=""></asp:Label>
                                        </div>
                                        <asp:Button ID="btnCreateReport" runat="server" Text="Create report" class="btn btn-primary" ValidationGroup="createReportForm" OnClick="btnCreateReport_Click" />
                                        <asp:Label ID="lblSuccess" runat="server" Text="" ForeColor="Green"></asp:Label>
                                        <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                                        <asp:Image ID="Image1" runat="server" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 d-none d-lg-flex">

                                <script>
                                    var map;
                                    function initialize() {
                                        var myLatlng = new google.maps.LatLng(6.9271, 79.8612);
                                        var myOptions = {
                                            zoom: 12,
                                            center: myLatlng,
                                            mapTypeId: google.maps.MapTypeId.ROADMAP
                                        }
                                        map = new google.maps.Map(document.getElementById("googleMap"), myOptions);
                                        // marker refers to a global variable
                                        marker = new google.maps.Marker({
                                            position: myLatlng,
                                            map: map,
                                            draggable: true
                                        });

                                        google.maps.event.addListener(marker, "dragend", function (event) {
                                            // get lat/ lng of marker
                                            var markerLat = event.latLng.lat();
                                            var markerLng = event.latLng.lng();

                                            // get Lat/ Lng in the txtbox
                                            document.getElementById("<%=reportLat.ClientID%>").value = markerLat.toFixed(5);
                                            document.getElementById("<%=reportLng.ClientID%>").value = markerLng.toFixed(5);

                                        });
                                    }

                                    window.onload = function () { initialize() };
                                </script>

                                <div id="googleMap" style="width: 100%;"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
