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

            google.maps.event.addListener(marker, 'click', function () {
                var pos = map.getZoom();
                map.setZoom(9);
                map.setCenter(marker.getPosition());
                window.setTimeout(function () { map.setZoom(pos); }, 3000);
            });

            google.maps.event.addListener(map, 'click', function (event) {
                placeMarker(map, event.latLng);
            });

            function placeMarker(map, location) {
                var marker = new google.maps.Marker({
                    position: location,
                    map: map
                });
                var infowindow = new google.maps.InfoWindow({
                    content: 'Latitude: ' + location.lat() +
                        '<br>Longitude: ' + location.lng()
                });
                infowindow.open(map, marker);
            }

            infowindow.open(map, marker);
        }

        window.onload = function () { initialize() };

    </script>

    <!-- Button trigger modal -->
    <button
        type="button"
        class="btn btn-primary"
        data-mdb-toggle="modal"
        data-mdb-target="#exampleModal">
        Launch demo modal
    </button>

    <!-- Modal -->
    <div
        class="modal fade"
        id="exampleModal"
        tabindex="-1"
        aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button
                        type="button"
                        class="btn-close"
                        data-mdb-dismiss="modal"
                        aria-label="Close">
                    </button>
                </div>
                <div class="modal-body">...</div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">
                        Close
                    </button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
