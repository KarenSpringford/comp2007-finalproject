<%--
/**
 * @file Default.aspx
 * @author Aristotle Rovithis & Karen Springford
 * @version 0.0.2
 * @desc Default Page for the Sports Tracking App
 */ 
--%>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="comp2007_finalproject.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-offset-3 col-md-6">
        <h1>
            DodgeBall Pathetics League
            <i class="fa fa-female fa-lg"></i>
            <i class="fa fa-circle-o fa-sm"></i>
            <i class="fa fa-male fa-lg"></i>
        </h1>
        <p>DodgeBall Federation of Barrie</p>
        <p>Welcome to Summer 2016 DodgeBall Summer Intermurals!</p>
        <p>If you can dodge a wrench you can dodge a ball!</p>
        <p>Come and have some fun with your friends and compete in an intense summer intermural program.</p>
        <p>Sign up <strong>NOW!</strong> Season officially kicks off June 22, 2016 </p>
    </div>
</asp:Content>
