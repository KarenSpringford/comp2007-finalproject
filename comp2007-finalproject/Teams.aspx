<%@ Page Title="Teams" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Teams.aspx.cs" Inherits="comp2007_finalproject.Teams" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class ="row">
            <div class="col-md-offset-3 col-md-6">
                <h1><i class="fa fa-star-o fa-lg" aria-hidden="true"></i> Teams</h1>

                <div class="dropdown">
                    <button class="btn btn-default dropdown-toggle" type="button" id="teams" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">Select A Team   <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                        <li><a href="#">GirlScout DropOuts</a></li>
                        <li><a href="#">All Dodge No Balls</a></li>
                        <li><a href="#">DodgieBirds</a></li>
                        <li><a href="#">Gym Class Heroes</a></li>
                        <li><a href="#">Not In the Face</a></li>
                        <li><a href="#">Much Ado About Balls</a></li>
                        <li><a href="#">Ballsagna</a></li>
                        <li><a href="#">Balls & Dolls</a></li>
                    </ul>
                </div>

                </div>
            </div>
        </div>
</asp:Content>
