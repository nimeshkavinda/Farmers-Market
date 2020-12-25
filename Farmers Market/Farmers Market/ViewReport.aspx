<%@ Page Title="All Reports" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewReport.aspx.cs" Inherits="Farmers_Market.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <!-- Jumbotron -->
            <div class="jumbotron" style="margin-top: 25px; margin-bottom: 50px;">
                <div class="container">
                    <h1 class="display-6">Welcome,
                <asp:Label ID="loggedInFarmer" runat="server" Text=""></asp:Label></h1>
                    <p class="lead">Easily navigate through all your reports at one place.</p>
                </div>
            </div>
            <!-- Jumbotron -->
        </div>
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a runat="server" href="~/">Home</a></li>
                    <li class="breadcrumb-item active">Profile</li>
                    <li class="breadcrumb-item active">Your Reports</li>
                </ol>
            </nav>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-12" style="margin-top: 10px; margin-bottom: 50px;">
                <asp:SqlDataSource ID="SqlDataSourceReport" runat="server">
                    <DeleteParameters>
                        <asp:Parameter Name="ReportId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="HarvestType" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="HarvestType" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Price" Type="String" />
                        <asp:Parameter Name="ReportId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="gridViewReport" runat="server" AutoGenerateColumns="False" CellPadding="18"  CellSpacing="18" DataKeyNames="ReportId" DataSourceID="SqlDataSourceReport" ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:TemplateField HeaderText="Report ID" InsertVisible="False" SortExpression="ReportId">
                            <EditItemTemplate>
                                <asp:Label ID="lblReportId" runat="server" Text='<%# Eval("ReportId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblReportId" runat="server" Text='<%# Bind("ReportId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Title" SortExpression="Title">
                            <EditItemTemplate>
                                <asp:TextBox ID="reportTitle" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validateReportTitle" runat="server" ErrorMessage="*" ControlToValidate="reportTitle" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblReportTitle" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Harvest Type" SortExpression="HarvestType">
                            <EditItemTemplate>
                                <asp:DropDownList ID="reportType" runat="server" Height="2em" SelectedValue='<%# Bind("HarvestType") %>'>
                                    <asp:ListItem Text="Fruit" Value="Fruit"></asp:ListItem>
                                    <asp:ListItem Text="Vegetable" Value="Vegetable"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="validateReportType" runat="server" ErrorMessage="*" ControlToValidate="reportType" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblReportType" runat="server" Text='<%# Bind("HarvestType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description" SortExpression="Description">
                            <EditItemTemplate>
                                <asp:TextBox ID="reportDesc" runat="server" TextMode="MultiLine" Text='<%# Bind("Description") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validateReportDesc" runat="server" ErrorMessage="*" ControlToValidate="reportDesc" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblDesc" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Price" SortExpression="Price">
                            <EditItemTemplate>
                                <asp:TextBox ID="reportPrice" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                                <asp:RequiredFieldValidator ID="validateReportPrice" runat="server" ErrorMessage="*" ControlToValidate="reportPrice" ForeColor="Red"></asp:RequiredFieldValidator>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="lblReportPrice" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
