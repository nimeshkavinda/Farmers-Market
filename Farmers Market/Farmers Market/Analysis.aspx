<%@ Page Title="Analysis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Analysis.aspx.cs" Inherits="Farmers_Market.WebForm9" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="d-sm-flex justify-content-between align-items-center mb-4" style="margin-top: 50px;">
            <h3 class="text-dark mb-0">Analysis</h3>
            <a class="btn btn-primary btn-sm d-none d-sm-inline-block" role="button" href="#"><i class="fas fa-download fa-sm text-white-50"></i>&nbsp;Generate Report</a>
        </div>
        <div class="row">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb" style="margin-bottom: 30px;">
                    <li class="breadcrumb-item"><a runat="server" href="~/">Home</a></li>
                    <li class="breadcrumb-item active">Analysis</li>
                </ol>
            </nav>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="card shadow border-left-primary py-2" style="margin-bottom: 30px; padding: 1em;">
                    <div class="card-body">
                        <div class="row align-items-center no-gutters">
                            <div class="col mr-2">
                                <div class="text-uppercase text-primary font-weight-bold text-xs mb-1"><span>Most reported harvest type</span></div>
                                <div class="text-dark font-weight-bold h5 mb-0">
                                    <asp:Label ID="mostItemType" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div class="col-auto"><i class="fas fa-calendar fa-2x text-gray-300"></i></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card shadow border-left-primary py-2" style="margin-bottom: 30px; padding: 1em;">
                    <div class="card-body">
                        <div class="row align-items-center no-gutters">
                            <div class="col mr-2">
                                <div class="text-uppercase text-success font-weight-bold text-xs mb-1"><span>Most reported price (in rupees)</span></div>
                                <div class="text-dark font-weight-bold h5 mb-0">
                                    <asp:Label ID="mostItemPrice" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <div class="col-auto"><i class="fas fa-dollar-sign fa-2x text-gray-300"></i></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-lg-6 col-xl-7">
                <div class="card shadow mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h6 class="text-primary font-weight-bold m-0">Prices</h6>
                    </div>
                    <div class="card-body">
                        <div class="chart-area">
                            <asp:Chart ID="chartPrice" runat="server" Width="450px">
                                <Series>
                                    <asp:Series Name="chartPriceSeries" ChartArea="chartPriceArea" ChartType="Line" YValuesPerPoint="4">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="chartPriceArea">
                                        <AxisX Title="Item">
                                        </AxisX>
                                        <AxisY Title="Price (in rupees)">
                                        </AxisY>
                                    </asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-5">
                <div class="card shadow mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h6 class="text-primary font-weight-bold m-0">Harvest Types</h6>
                    </div>
                    <div class="card-body">
                        <div class="chart-area">
                            <asp:Chart ID="chartItemType" runat="server" Width="400px">
                                <Series>
                                    <asp:Series Name="chartItemTypeSeries" ChartArea="chartItemTypeArea" ChartType="Pie" YValuesPerPoint="4" Legend="Harvest Type">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="chartItemTypeArea">
                                        <AxisX Title="Item">
                                        </AxisX>
                                        <AxisY Title="Price">
                                        </AxisY>
                                    </asp:ChartArea>
                                </ChartAreas>
                                <Legends>
                                    <asp:Legend Name="Harvest Type">
                                    </asp:Legend>
                                </Legends>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="margin-bottom:20px;">
            <div class="col-lg-5 col-xl-6">
                <div class="card shadow mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h6 class="text-primary font-weight-bold m-0">Sell Ratio</h6>
                    </div>
                    <div class="card-body">
                        <div class="chart-area">
                            <asp:Chart ID="chart1" runat="server" Width="450px">
                                <Series>
                                    <asp:Series Name="chartPriceSeries" ChartArea="chartPriceArea" ChartType="Bar" YValuesPerPoint="4">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="chartPriceArea">
                                        <AxisX Title="Item">
                                        </AxisX>
                                        <AxisY Title="Price (in rupees)">
                                        </AxisY>
                                    </asp:ChartArea>
                                </ChartAreas>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-7 col-xl-6">
                <div class="card shadow mb-4">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h6 class="text-primary font-weight-bold m-0">Flags</h6>
                    </div>
                    <div class="card-body">
                        <div class="chart-area">
                            <asp:Chart ID="chart2" runat="server" Width="400px">
                                <Series>
                                    <asp:Series Name="chartItemTypeSeries" ChartArea="chartItemTypeArea" ChartType="Pie" YValuesPerPoint="4" Legend="Harvest Type">
                                    </asp:Series>
                                </Series>
                                <ChartAreas>
                                    <asp:ChartArea Name="chartItemTypeArea">
                                        <AxisX Title="Item">
                                        </AxisX>
                                        <AxisY Title="Price">
                                        </AxisY>
                                    </asp:ChartArea>
                                </ChartAreas>
                                <Legends>
                                    <asp:Legend Name="Harvest Type">
                                    </asp:Legend>
                                </Legends>
                            </asp:Chart>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
