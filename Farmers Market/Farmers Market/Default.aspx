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
                            "content": '<div class="card" style="width: 29rem;"><img src="<%# "data:image/jpg;base64," + Convert.ToBase64String((byte[])Eval("Image"))%>" class="card-img-top" style="margin-top:0.5em;border-radius:0.5em;object-fit: cover;width: 100%;height: 200px;" /><div class="card-body"><h5 class="card-title"><%# Eval("Title") %></h5><p class="card-text"><%# Eval("Description") %></p></div><ul class="list-group list-group-flush"><li class="list-group-item"><div class="p-2 badge bg-primary text-wrap" style="font-size: 16px;width: 8em;height: 2rem;">Rs. <%# Eval("Price") %></div></li></ul><div class="card-body"><div class="btn-group shadow-0" role="group"><button type="button" class="btn btn-link" data-mdb-color="dark" data-mdb-toggle="modal" data-mdb-target="#modalBuy">View Report</button><button type="button" class="btn btn-link" data-mdb-color="dark" data-mdb-toggle="modal" data-mdb-target="#modalContact">Contact Farmer</button><button type="button" class="btn btn-link" data-mdb-color="dark" data-mdb-toggle="modal" data-mdb-target="#exampleModal">Flag as inedible</button></div></div></div>'
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
        <!--Modal: Buy-->
        <div
            class="modal fade"
            id="modalBuy"
            tabindex="-1"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-fullscreen">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Report information</h5>
                        <button
                            type="button"
                            class="btn-close"
                            data-mdb-dismiss="modal"
                            aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">

                        <asp:PlaceHolder ID="paneError" runat="server">
                            <asp:Label ID="lblReportDetailError" runat="server" class="fs-1 d-flex align-items-center justify-content-center" Style="margin-top: 20%" Text="Only Department of Agriculture and Keels staff are eligible to view aditional details on reports"></asp:Label>
                        </asp:PlaceHolder>

                        <asp:PlaceHolder ID="paneInfo" runat="server">

                            <div class="container-fluid">
                                <div class="row">
                                    <h2 class="fs-1 p-3">Item in view
                                    </h2>
                                </div>
                            </div>
                            <div class="row p-3">
                                <div class="col-md-8">
                                    <div class="pb-3">

                                        <div class="card mb-3" style="max-width: 100%">
                                            <div class="row g-0">
                                                <div class="col-md-4">
                                                    <img
                                                        src="https://mdbootstrap.com/wp-content/uploads/2020/06/vertical.jpg"
                                                        alt="..."
                                                        class="img-fluid" />
                                                </div>
                                                <div class="col-md-8">
                                                    <div class="card-body p-4">
                                                        <h3 class="card-title">
                                                            Card title
                                                        </h3>
                                                        <p class="card-text">
                                                            This is a wider card with supporting text below as a natural lead-in to
                                                            additional content. This content is a little bit longer.
                                                        </p>
                                                        <p class="card-text">
                                                            <small class="text-muted">Report ID: 1</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="row">
                                        <div class="card bg-light mb-3" style="max-width: 98%">
                                            <div class="card-header">Farmer details</div>
                                            <div class="card-body">
                                                <div class="form-group">
                                                    <label for="lblFarmerName">Name:&nbsp;</label>
                                                    <asp:Label ID="lblFarmerName" runat="server" Text=""></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lblFarmerGender">Gender:&nbsp;</label>
                                                    <asp:Label ID="lblFarmerGender" runat="server" Text=""></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lblFarmerDob">Date of birth:&nbsp;</label>
                                                    <asp:Label ID="lblFarmerDob" runat="server" Text=""></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lblFarmerNic">National identity card:&nbsp;</label>
                                                    <asp:Label ID="lblFarmerNic" runat="server" Text=""></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lblFarmerMobile">Mobile:&nbsp;</label>
                                                    <asp:Label ID="lblFarmerMobile" runat="server" Text=""></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lblFarmerCity">City:&nbsp;</label>
                                                    <asp:Label ID="lblFarmerCity" runat="server" Text=""></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lblFarmerState">State:&nbsp;</label>
                                                    <asp:Label ID="lblFarmerState" runat="server" Text=""></asp:Label>
                                                </div>
                                                <div class="form-group">
                                                    <label for="lblFarmerZip">Zip:&nbsp;</label>
                                                    <asp:Label ID="lblFarmerZip" runat="server" Text=""></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <asp:PlaceHolder ID="paneBuy" runat="server">
                                            <div class="card text-white bg-danger mb-3" style="max-width: 98%">
                                                <div class="card-body">
                                                    <h5 class="card-title">Purchase item</h5>
                                                    <div class="row p-1">
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label for="lblItemPrice" style="padding-top:5px;">Price:&nbsp;Rs:&nbsp;</label>
                                                                <asp:Label ID="lblItemPrice" runat="server" Text="" Font-Bold="True"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-group">
                                                                <label for="lblItemFlag" style="padding-top:5px;">Flag:&nbsp;</label>
                                                                <asp:Label ID="lblItemFlag" runat="server" Text="" Font-Bold="True"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <asp:Button ID="btnBuyNow" class="btn btn-light btn-rounded" runat="server" Text="Buy now" Visible="true" Width="100%" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </asp:PlaceHolder>
                                    </div>

                                </div>
                            </div>

                        </asp:PlaceHolder>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <!--Modal: Contact-->
        <div
            class="modal fade"
            id="modalContact"
            tabindex="-1"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="modalLabel">Send message to farmer</h5>
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
                        <asp:Button ID="btnSendMessage" class="btn btn-primary" runat="server" Text="Send message" ValidationGroup="farmerContactForm" OnClick="btnSendMessage_Click" />
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
