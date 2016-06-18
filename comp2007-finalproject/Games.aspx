<%--
/**
 * @file Stats.aspx
 * @author Aristotle Rovithis & Karen Springford
 * @version 0.0.2
 * @desc Statistics Page for the Sports Tracking App
 */ 
--%>

<%@ Page Title="Stats" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="comp2007_finalproject.Stats" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1><i class="fa fa-thumbs-o-up fa-lg" aria-hidden="true"></i>Schedule</h1>
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover" ID="GamesGridView" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="GameId" HeaderText="Game ID" Visible="true" SortExpression="GameId" />
                        <asp:BoundField DataField="HomeTeamId" HeaderText="HomeTeam ID" Visible="true" SortExpression="HomeTeamId" />
                        <asp:BoundField DataField="AwayTeamId" HeaderText="AwayTeam ID" Visible="true" SortExpression="AwayTeamId" />
                        <asp:BoundField DataField="HomePoints" HeaderText="Home Points" Visible="true" SortExpression="HomePoints" />
                        <asp:BoundField DataField="AwayPoints" HeaderText="Away Points" Visible="true" SortExpression="AwayPoints" />
                        <asp:BoundField DataField="Spectators" HeaderText="Spectators" Visible="true" SortExpression="Spectators" />
                        <asp:BoundField DataField="GameDate" HeaderText="Game Date" Visible="true" SortExpression="GameDate" DataFormatString ="{0:MMM dd, yyyy}" />

                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </div>

</asp:Content>
