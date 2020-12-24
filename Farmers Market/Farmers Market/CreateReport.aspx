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
                                <div class="p-5" style="margin-top: 60px; margin-bottom: 60px;">
                                    <div class="text-left">
                                        <h4 class="text-dark mb-4">Create a Report</h4>
                                    </div>
                                    <div class="createReportForm">
                                        <div class="form-group">
                                            <label for="exampleFormControlInput1">Email address</label>
                                            <input type="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlSelect1">Example select</label>
                                            <select class="form-control" id="exampleFormControlSelect1">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlSelect2">Example multiple select</label>
                                            <select multiple class="form-control" id="exampleFormControlSelect2">
                                                <option>1</option>
                                                <option>2</option>
                                                <option>3</option>
                                                <option>4</option>
                                                <option>5</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleFormControlTextarea1">Example textarea</label>
                                            <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                                        </div>
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
