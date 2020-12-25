<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Farmers_Market._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="googleMap" style="width: 100%; height: 500px; margin-top: 30px; margin-bottom: 50px; border-radius: 0.4em;"></div>

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
            
            marker = new google.maps.Marker({
                position: myLatlng,
                map: map,
                draggable: true
            });
            var infowindow = new google.maps.InfoWindow({
                content: "Testing"
            });

            infowindow.open(map, marker);
        }

        window.onload = function () { initialize() };
    </script>

</asp:Content>
