<%@ Page Title="Your Purchases" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PurchaseList.aspx.cs" Inherits="Farmers_Market.WebForm11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <!-- Jumbotron -->
            <div class="jumbotron" style="margin-top: 25px; margin-bottom: 50px;">
                <div class="container">
                    <h1 class="display-6">Welcome,
                <asp:Label ID="loggedInKeels" runat="server" Text=""></asp:Label></h1>
                    <p class="lead">Find all your purchases at one place</p>
                </div>
            </div>
            <!-- Jumbotron -->
        </div>
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a runat="server" href="~/">Home</a></li>
                    <li class="breadcrumb-item active">Profile</li>
                    <li class="breadcrumb-item active">Your Purchases</li>
                </ol>
            </nav>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-12" style="margin-top: 10px; margin-bottom: 50px;">
                <asp:SqlDataSource ID="SqlDataSourcePurchases" runat="server"></asp:SqlDataSource>
                <asp:GridView ID="gridViewPurchases" runat="server" AutoGenerateColumns="False" CellPadding="18"  CellSpacing="18" DataKeyNames="ReportId" DataSourceID="SqlDataSourcePurchases" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ReportId" HeaderText="Report ID" InsertVisible="False" ReadOnly="True" SortExpression="ReportId" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="HarvestType" HeaderText="Harvest Type" SortExpression="HarvestType" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Email" HeaderText="Farmer Email" SortExpression="Email" />
                    </Columns>
                    <EditRowStyle BackColor="#82B1FF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1266F1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />                 
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
