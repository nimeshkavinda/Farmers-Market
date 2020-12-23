<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Farmers_Market._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Jumbotron -->
    <div class="jumbotron">
        <h1 class="display-4">Hello, world!</h1>
        <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
        <hr class="my-4">
        <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
        </p>
    </div>
    <!-- Jumbotron -->

    <div class="mapouter" style="margin-bottom: 50px;"><div class="gmap_canvas"><iframe width="1280" height="600" id="gmap_canvas" src="https://maps.google.com/maps?q=NSBM%20Green%20University&t=&z=15&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://123movies.embedgooglemap.net"></a></div><style>.mapouter{position:relative;text-align:right;height:600px;width:1280px;}.gmap_canvas {overflow:hidden;background:none!important;height:600px;width:1280px;}</style></div>

</asp:Content>
