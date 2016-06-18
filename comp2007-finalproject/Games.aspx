<%--
/**
 * @file Stats.aspx
 * @author Aristotle Rovithis & Karen Springford
 * @version 0.0.2
 * @desc Statistics Page for the Sports Tracking App
 */ 
--%>

<%@ Page Title="Games" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="comp2007_finalproject.Stats" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1><i class="fa fa-calendar fa-lg" aria-hidden="true"></i> Schedule</h1>
                 <br />
                <a href="GameDetails.aspx" class="btn btn-default btn-sm"><i class="fa fa-plus fa-lg"></i> Add a Game </a>
                <br />
                
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover" ID="GamesGridView" 
                    AutoGenerateColumns="true">
                    <%--<Columns>
                        <asp:BoundField DataField="HomeTeamId" HeaderText="HomeTeam ID" Visible="true"   />
                        <asp:BoundField DataField="AwayTeamId" HeaderText="AwayTeam ID" Visible="true"  />
                        <asp:BoundField DataField="HomePoints" HeaderText="Home Points" Visible="true"  />
                        <asp:BoundField DataField="AwayPoints" HeaderText="Away Points" Visible="true" />
                        <asp:BoundField DataField="Spectators" HeaderText="Spectators" Visible="true"   />
                        <asp:BoundField DataField="GameDate" HeaderText="Game Date" Visible="true"  DataFormatString ="{0:MMM dd, yyyy}" />
                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" NavigateUrl="~/GameDetails.aspx.cs"
                            ControlStyle-CssClass="btn btn-primary btn-sm" runat="server" DataNavigateUrlFields="GameId" DataNavigateUrlFormatString="GameDetails.aspx?GameId={0}" />
                        <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i>Delete"
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>--%>
                </asp:GridView>

            </div>
        </div>
    </div>

</asp:Content>
