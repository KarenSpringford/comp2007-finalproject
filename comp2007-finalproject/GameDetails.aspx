<%@ Page Title="GameDetails" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="comp2007_finalproject.GameDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <h1>Game Details</h1>

            <div class="form-group">
                <label class="control-label" for="GameIdTextBox">GameId</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="GameIdTextBox" placeholder="Game Id" ReadOnly="false" Enabled="false"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="control-label" for="HomeTeamIdTextBox">Home Team</label>
                <asp:DropDownList ID="TeamID" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="control-label" for="AwayTeamIdTextBox">Away Team</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="AwayTeamIdTextBox" placeholder="Away Team" ReadOnly="false" Enabled="false"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="control-label" for="AwayTeamIdTextBox">Away Team</label>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="control-label" for="HomePointsTextBox">HomePoints</label>
                <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="HomePointsTextBox" placeholder="0"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Can Not Exceed 3"
                    ControlToValidate="HomePointsTextBox" MinimumValue="0" MaximumValue="3"
                    Type="Integer" Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RangeValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="AwayPointsTextBox">AwayPoints</label>
                <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="AwayPointsTextBox" placeholder="0"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Can Not Exceed 3"
                    ControlToValidate="AwayPointsTextBox" MinimumValue="0" MaximumValue="3"
                    Type="Integer" Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RangeValidator>
            </div>
            <div class="form-group">
                <label class="control-label" for="SpectatersTextBox">Spectators</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="SpectatersTextBox" placeholder="# of Spectators"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="control-label" for="GameDateTextBox">Game Date</label>
                <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="GameDateTextBox" placeholder="Date Format: mm/dd/yyyy" required="true"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Invalid Date!  Format mm/dd/yyyy"
                    ControlToValidate="GameDateTextBox" MinimumValue="05/25/2016" MaximumValue="07/27/2016"
                    Type="Date" Display="Dynamic" BackColor="Red" ForeColor="White" Font-Size="Large"></asp:RangeValidator>
            </div>
            <div class="text-right">
                <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn-danger btn-lg" runat="server" UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                <asp:Button Text="Submit" ID="SaveButton" CssClass="btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
            </div>
        </div>
    </div>
</asp:Content>
