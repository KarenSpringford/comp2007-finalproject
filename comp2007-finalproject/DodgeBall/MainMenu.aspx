<%@ Page Title="DodgeBall Menu" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="comp2007_finalproject.DodgeBall.MainMenu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Main Menu</h1>
                <div class="well">
                    <h3><i class="fa fa-leanpub fa-lg"></i>Teams</h3>
                    <div class="list-group">
                        <a class="list-group-item" href="/DodgeBall/Teams.aspx"><i class="fa fa-th-list"></i>Team(s) List</a>
                        <a class="list-group-item" href="/DodgeBall/TeamDetails.aspx"><i class="fa fa-plus-circle"></i>Add A Team</a>
                    </div>
                </div>
                <div class="well">
                    <h3><i class="fa fa-book fa-lg"></i>Games</h3>
                    <div class="list-group">
                        <a class="list-group-item" href="/DodgeBall/Games.aspx"><i class="fa fa-th-list"></i>Game(s) List</a>
                        <a class="list-group-item" href="/DodgeBall/GameDetails.aspx"><i class="fa fa-plus-circle"></i>Add A Game</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
