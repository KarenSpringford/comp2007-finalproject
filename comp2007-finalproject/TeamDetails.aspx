<%@ Page Title="Team Details" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="TeamDetails.aspx.cs" Inherits="comp2007_finalproject.TeamDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Team Details</h1>
                <h5>All Fields are Required</h5>
                <div class="form-group">
                    <label class="control-label" for="form-group-input">Team Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TeamNameTextBox" placeholder="Team Name" required="true"></asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:Button Text="Cancel" runat="server" ID="CancelButton" CssClass="btn btn-warning btn-lg" UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" runat="server" ID="SaveButton" CssClass="btn btn-primary btn-lg" OnClick="SaveButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
