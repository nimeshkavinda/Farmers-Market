<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Farmers_Market._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div id="googleMap" style="width: 100%; height: 500px; margin-top: 30px; margin-bottom: 50px; border-radius: 0.4em;"></div>
        
        <script>
            var markers = [
                <asp:Repeater ID="rptMarkers" runat="server">
                    <ItemTemplate>
                        {
                            "lat": '<%# Eval("Lat") %>',"lng": '<%# Eval("Lng") %>',"description": '<%# Eval("Title") %>'
                        }
                        </ItemTemplate>
                    <SeparatorTemplate>
                        ,
                    </SeparatorTemplate>
                </asp:Repeater >
                ];
        </script>

        <script>

            window.onload = function () {
                var mapOptions = {
                    center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                    zoom: 5,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var infoWindow = new google.maps.InfoWindow();
                var map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);
                for (i = 0; i < markers.length; i++) {
                    var data = markers[i]
                    var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                    var marker = new google.maps.Marker({
                        position: myLatlng,
                        map: map,
                        title: data.title
                    });
                    (function (marker, data) {
                        google.maps.event.addListener(marker, "click", function (e) {
                            infoWindow.setContent(data.description);
                            infoWindow.open(map, marker);
                        });
                    })(marker, data);
                }
            }
        </script>

    </div>

</asp:Content>
