<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Farmers_Market._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid" style="padding: 0 !important;margin: 0 !important";>

        <div id="googleMap" style="width: 100%; height: 94vh;"></div>
        
        <script>

            var markers = [

                <asp:Repeater ID="reportMarker" runat="server">

                    <ItemTemplate>
                        {
                            "lat": '<%# Eval("Lat") %>',
                            "lng": '<%# Eval("Lng") %>',
                            "farmer": '<%# Eval("Email") %>',
                            "content": '<div class="card" style="width: 25rem;"><img src="<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Image"))%>" class="card-img-top" style="margin-top:0.5em;border-radius:0.5em;object-fit: cover;width: 100%;height: 200px;" /><div class="card-body"><h5 class="card-title"><%# Eval("Title") %></h5><p class="card-text"><%# Eval("Description") %></p></div><ul class="list-group list-group-flush"><li class="list-group-item"><div class="p-2 badge bg-primary text-wrap" style="font-size: 16px;width: 8em;height: 2rem;">Rs. <%# Eval("Price") %></div></li></ul><div class="card-body"><div class="btn-group shadow-0" role="group"><button type="button" class="btn btn-link" data-mdb-color="dark" data-mdb-toggle="modal" data-mdb-target="#exampleModal">Buy</button><button type="button" class="btn btn-link" data-mdb-color="dark" data-mdb-toggle="modal" data-mdb-target="#modalContact">Contact Farmer</button><button type="button" class="btn btn-link" data-mdb-color="dark" data-mdb-toggle="modal" data-mdb-target="#exampleModal">Flag as inedible</button></div></div></div>'
                        }
                    </ItemTemplate>

                    <SeparatorTemplate>
                        ,
                    </SeparatorTemplate>

                </asp:Repeater>

                ];

        </script>
        
        <script>

            window.onload = function () {

                var mapOptions = {
                    center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                    zoom: 12,
                    mapTypeControl: false

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
                            document.getElementById('recipientName').value = data.farmer;
                        });
                    })(marker, data);

                }

            }

        </script>

        <!--Modals-->        
        <!--Modal: Contact-->
        <div
            class="modal fade"
            id="modalContact"
            tabindex="-1"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalLabel">New message</h5>
                        <button
                            type="button"
                            class="btn-close"
                            data-mdb-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="farmerContactForm">
                            <div class="mb-3">
                                <label for="recipientName" class="col-form-label">Recipient:</label>
                                <asp:TextBox ID="recipientName" type="text" ClientIDMode="Static" class="form-control" runat="server" ValidationGroup="farmerContactForm"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validateRecipientName" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="recipientName" ValidationGroup="farmerContactForm"></asp:RequiredFieldValidator>
                            </div>
                            <div class="mb-3">
                                <label for="messageText" class="col-form-label">Message:</label>
                                <asp:TextBox ID="messageText" TextMode="MultiLine" class="form-control" runat="server" ValidationGroup="farmerContactForm"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validateMessageText" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="messageText" ValidationGroup="farmerContactForm"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">Close</button>
                        <asp:Button ID="btnSendMessage" class="btn btn-primary" runat="server" Text="Send message" ValidationGroup="farmerContactForm" />
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
