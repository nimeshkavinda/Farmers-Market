<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Farmers_Market._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div id="googleMap" style="width: 100%; height: 800px; margin-top: 30px; margin-bottom: 50px; border-radius: 0.4em;"></div>
        
        <script>

            var markers = [

                <asp:Repeater ID="reportMarker" runat="server">

                    <ItemTemplate>
                        {
                            "lat": '<%# Eval("Lat") %>',
                            "lng": '<%# Eval("Lng") %>',
                            "content": '<div class="card" style="width: 18rem;"><img src="<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Image"))%>" class="card-img-top" style="margin-top:0.5em;border-radius:0.5em;object-fit: cover;width: 100%;height: 250px;" /><div class="card-body"><h5 class="card-title"><%# Eval("Title") %></h5><p class="card-text"><%# Eval("Description") %></p></div><ul class="list-group list-group-flush"><li class="list-group-item"><div class="p-2 badge bg-primary text-wrap" style="font-size: 16px;width: 8em;height: 2rem;">Price: <%# Eval("Price") %></div></li></ul><div class="card-body"><a href="#" class="card-link">Buy</a><a href="#" class="card-link">Contact Farmer</a><a href="#" class="card-link">Flag as inedible</a></div></div>'
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
                    zoom: 10,
                    
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
                            infoWindow.setContent(data.content);
                            infoWindow.open(map, marker);
                        });
                    })(marker, data);
                }
            }

        </script>

    </div>

</asp:Content>
