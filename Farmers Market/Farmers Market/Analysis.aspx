﻿<%@ Page Title="Analysis" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Analysis.aspx.cs" Inherits="Farmers_Market.WebForm9" %>

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
        <div class="row">
            <div class="col-lg-6 mb-4">
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="text-primary font-weight-bold m-0">Projects</h6>
                    </div>
                    <div class="card-body">
                        <h4 class="small font-weight-bold">Server migration<span class="float-right">20%</span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-danger" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;"><span class="sr-only">20%</span></div>
                        </div>
                        <h4 class="small font-weight-bold">Sales tracking<span class="float-right">40%</span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-warning" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%;"><span class="sr-only">40%</span></div>
                        </div>
                        <h4 class="small font-weight-bold">Customer Database<span class="float-right">60%</span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-primary" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"><span class="sr-only">60%</span></div>
                        </div>
                        <h4 class="small font-weight-bold">Payout Details<span class="float-right">80%</span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-info" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;"><span class="sr-only">80%</span></div>
                        </div>
                        <h4 class="small font-weight-bold">Account setup<span class="float-right">Complete!</span></h4>
                        <div class="progress mb-4">
                            <div class="progress-bar bg-success" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;"><span class="sr-only">100%</span></div>
                        </div>
                    </div>
                </div>
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="text-primary font-weight-bold m-0">Todo List</h6>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            <div class="row align-items-center no-gutters">
                                <div class="col mr-2">
                                    <h6 class="mb-0"><strong>Lunch meeting</strong></h6>
                                    <span class="text-xs">10:30 AM</span>
                                </div>
                                <div class="col-auto">
                                    <div class="custom-control custom-checkbox">
                                        <input class="custom-control-input" type="checkbox" id="formCheck-1"><label class="custom-control-label" for="formCheck-1"></label>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row align-items-center no-gutters">
                                <div class="col mr-2">
                                    <h6 class="mb-0"><strong>Lunch meeting</strong></h6>
                                    <span class="text-xs">11:30 AM</span>
                                </div>
                                <div class="col-auto">
                                    <div class="custom-control custom-checkbox">
                                        <input class="custom-control-input" type="checkbox" id="formCheck-2"><label class="custom-control-label" for="formCheck-2"></label>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="list-group-item">
                            <div class="row align-items-center no-gutters">
                                <div class="col mr-2">
                                    <h6 class="mb-0"><strong>Lunch meeting</strong></h6>
                                    <span class="text-xs">12:30 AM</span>
                                </div>
                                <div class="col-auto">
                                    <div class="custom-control custom-checkbox">
                                        <input class="custom-control-input" type="checkbox" id="formCheck-3"><label class="custom-control-label" for="formCheck-3"></label>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <div class="col-lg-6 mb-4">
                        <div class="card text-white bg-primary shadow">
                            <div class="card-body">
                                <p class="m-0">Primary</p>
                                <p class="text-white-50 small m-0">#4e73df</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-4">
                        <div class="card text-white bg-success shadow">
                            <div class="card-body">
                                <p class="m-0">Success</p>
                                <p class="text-white-50 small m-0">#1cc88a</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-4">
                        <div class="card text-white bg-info shadow">
                            <div class="card-body">
                                <p class="m-0">Info</p>
                                <p class="text-white-50 small m-0">#36b9cc</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-4">
                        <div class="card text-white bg-warning shadow">
                            <div class="card-body">
                                <p class="m-0">Warning</p>
                                <p class="text-white-50 small m-0">#f6c23e</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-4">
                        <div class="card text-white bg-danger shadow">
                            <div class="card-body">
                                <p class="m-0">Danger</p>
                                <p class="text-white-50 small m-0">#e74a3b</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mb-4">
                        <div class="card text-white bg-secondary shadow">
                            <div class="card-body">
                                <p class="m-0">Secondary</p>
                                <p class="text-white-50 small m-0">#858796</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
