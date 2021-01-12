<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Farmers_Market.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <header>
            <!-- Intro settings -->
            <style>
                /* Default height for small devices */
                #intro-example {
                    height: 100px;
                }

                /* Height for devices larger than 992px */
                @media (min-width: 992px) {
                    #intro-example {
                        height: 250px;
                    }
                }
            </style>

            <!-- Background image -->
            <div
                id="intro-example"
                class="p-5 text-center bg-image"
                style="margin-top: 30px; margin-bottom: 30px; background-image: url('assets/2.jpg'); object-fit: cover; width: 100%; border-radius: 0.5em;">
                <div class="mask" style="background-color: rgba(0, 0, 0, 0.7)">
                    <div class="d-flex justify-content-center align-items-center h-100">
                        <div class="text-white">
                            <h1 class="mb-3">Reach Us</h1>
                            <h5 class="mb-4">Contact Us at Farmer's Market</h5>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Background image -->
        </header>
        <div class="contactForm p-5">
            <!-- Name input -->
            <div class="form-group">
                <label class="form-label" for="txtName">Name</label>
                <asp:TextBox ID="txtName" runat="server" class="form-control" type="text"></asp:TextBox>
            </div>

            <!-- Email input -->
            <div class="form-group">
                <label class="form-label" for="txtEmail">Email address</label>
                <asp:TextBox ID="txtEmail" runat="server" class="form-control" type="text"></asp:TextBox>
            </div>

            <!-- Message input -->
            <div class="form-group">
                <label class="form-label" for="txtMsg">Message</label>
                <asp:TextBox ID="txtMsg" runat="server" TextMode="MultiLine" Rows="6" class="form-control" type="text"></asp:TextBox>
            </div>

            <!-- Submit button -->
            <button type="button" class="btn btn-primary"><a style="text-decoration:none;color:white;" href="mailto:farmersmarketnsbm@gmail.com?cc=secondemail@example.com, anotheremail@example.com, &bcc=lastemail@example.com&subject=Mail from our Farmer's Market&body=<script>document.getElementById('txtMsg.value')</script>">Send Email</a></button>
        </div>
    </div>

</asp:Content>
