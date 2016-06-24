<%--
/**
 * @file Contact.aspx
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.21
 * @version 0.0.2 page created
 * @history 
 * @desc Contact Page for the Sports Tracking App
 */ 
--%>
<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="comp2007_finalproject.Contact" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-4 col-md-8">
                <h1><i class="fa fa-phone fa-lg" aria-hidden="true"></i>Contact Us</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <h3 class="panel-title">Contact Info</h3>
                    </div>
                    <div class="panel-body" id="address">
                        <address>
                            <strong>DodgeBall Federation of Barrie</strong><br />
                            333 Elm Street<br />
                            Barrie ON  L3Y5V9<br />
                            <abbr title="Phone">Tel:</abbr>
                            (705)867-5309
                        </address>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label" for="FirstNameTextBox">First Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="FirstNameTextBox" placeholder="First Name" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator" runat="server" ErrorMessage="First Name is Required" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="LastNameTextBox">Last Name</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="LastNameTextBox" placeholder="Last Name" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Last Name is Required" ControlToValidate="LastNameTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="ContactNumberTextBox">Contact Number</label>
                    <asp:TextBox runat="server" TextMode="Phone" CssClass="form-control" ID="ContactNumberTextBox" placeholder="(905)867-5309" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Contact Number is Required" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="EmailTextBox">Email</label>
                    <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="EmailTextBox" placeholder="Dodge@ball.com" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email is Required" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="MessageTextBox">Message</label>
                    <asp:TextBox runat="server" CssClass="form-control" Columns="3" Rows="3" ID="MessageTextBox" placeholder="Your Message Here" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="A Message is Required" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="text-right">
                    <a class="btn btn-danger btn-lg" href="Default.aspx" id="CancelButton">Cancel</a>
                    <asp:Button runat="server" CssClass="btn btn-primary btn-lg" ID="SendButton" Text="Send" CausesValidation="true" OnClick="SendButton_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
