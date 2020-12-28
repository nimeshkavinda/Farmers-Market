<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Farmers_Market._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid" style="padding: 0 !important;padding: 0 !important";>

        <div id="googleMap" style="width: 100%; height: 94vh;"></div>
        
        <script>

            var markers = [

                <asp:Repeater ID="reportMarker" runat="server">

                    <ItemTemplate>
                        {
                            "lat": '<%# Eval("Lat") %>',
                            "lng": '<%# Eval("Lng") %>',
                            "content": '<div class="card" style="width: 25rem;"><img src="<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Image"))%>" class="card-img-top" style="margin-top:0.5em;border-radius:0.5em;object-fit: cover;width: 100%;height: 200px;" /><div class="card-body"><h5 class="card-title"><%# Eval("Title") %></h5><p class="card-text"><%# Eval("Description") %></p></div><ul class="list-group list-group-flush"><li class="list-group-item"><div class="p-2 badge bg-primary text-wrap" style="font-size: 16px;width: 8em;height: 2rem;">Rs. <%# Eval("Price") %></div></li></ul><div class="card-body"><div class="btn-group shadow-0" role="group"><button type="button" class="btn btn-link" data-mdb-color="dark">Buy</button><button type="button" class="btn btn-link" data-mdb-color="dark" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Contact Farmer</button><button type="button" class="btn btn-link" data-mdb-color="dark">Flag as inedible</button></div></div></div>'
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
                        });
                    })(marker, data);
                }

            }

        </script>

        <script>

            $('#exampleModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget) // Button that triggered the modal
                var recipient = button.data('whatever') // Extract info from data-* attributes
                // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                var modal = $(this)
                modal.find('.modal-title').text('New message to ' + recipient)
                modal.find('.modal-body input').val(recipient)
            })

        </script>

        <!--Modals-->
        
        <!--Modal: Contact-->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="messageForm">
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Recipient:</label>
                                <input type="text" class="form-control" id="recipient-name">
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label">Message:</label>
                                <textarea class="form-control" id="message-text"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Send message</button>
                    </div>
                </div>
            </div>
        </div>
        <div
            class="modal fade"
            id="modalContact"
            tabindex="-1"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalLabel">New message</h5>
                        <asp:Button
                            ID="btnClose"
                            runat="server"
                            class="btn-close"
                            data-mdb-dismiss="modal">
                        </asp:Button>
                    </div>
                    <div class="modal-body">
                        <div class="messageForm">
                            <div class="mb-3">
                                <label for="recipientName" class="col-form-label">Recipient:</label>
                                <asp:TextBox ID="recipientName" runat="server" type="text" class="form-control" ValidationGroup="messageForm"></asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="messageText" class="col-form-label">Message:</label>
                                <asp:TextBox ID="messageText" runat="server" class="form-control" TextMode="MultiLine" ValidationGroup="messageForm"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnMsgClose" runat="server" Text="Close" class="btn btn-secondary" data-mdb-dismiss="modal" />
                        <asp:Button ID="btnMsgSend" runat="server" Text="Send message" class="btn btn-primary" ValidationGroup="messageForm" />
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
