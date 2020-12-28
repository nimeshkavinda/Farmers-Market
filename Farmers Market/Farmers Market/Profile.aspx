<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Farmers_Market.WebForm10" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="jumbotron" style="margin-top: 25px; margin-bottom: 50px;">
            <div class="container">
                <h1 class="display-6">Welcome,
                <asp:Label ID="loggedInStaff" runat="server" Text=""></asp:Label></h1>
                <p class="lead">Secure your account by changing the login credentials</p>
            </div>
        </div>

    </div>

</asp:Content>
