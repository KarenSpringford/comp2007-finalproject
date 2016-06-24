<%--
/**
 * @file Login.aspx
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.24
 * @version 0.0.1 page created
 * @history 
 * @desc Logs users in
 */ 
--%>
<%@ Page Title="Login" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="comp2007_finalproject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">    
        <div class="row">
            <div class="col-md-offset-4 col-md-4"> 
                <div class="alert alert-danger" id="AlertFlash" runat="server" visible="false">
                    <asp:Label runat="server" ID="StatusLabel" />
                </div>
                <h1>Login Page</h1>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h1 class="panel-title"><i class="fa fa-sign-in fa-lg"></i> Login</h1>
                    </div> 
                    <br />
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="control-label" for="UserNameTextBox">Username:</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="UserNameTextBox" placeholder="Username" required="true" TabIndex="0"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label" for="PasswordTextBox">Password:</label>
                            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="PasswordTextBox" placeholder="Password" required="true" TabIndex="0"></asp:TextBox>
                        </div>
                        <div class="text-right">
                            <asp:Button Text="Login" ID="LoginButton" runat="server" CssClass="btn btn-primary" OnClick="LoginButton_Click" TabIndex="0" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
