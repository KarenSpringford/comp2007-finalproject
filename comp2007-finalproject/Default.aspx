<%--
/**
 * @file Default.aspx
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.21
 * @version  0.0.2 page created
 * @history 
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
            <i class="fa fa-female fa-lg" aria-hidden="true"></i>
            <i class="fa fa-circle-o fa-sm" aria-hidden="true"></i>
            <i class="fa fa-male fa-lg" aria-hidden="true"></i>
        </h1>
        <p>DodgeBall Federation of Barrie</p>
        <p>Welcome to Summer 2016 DodgeBall Summer Intermurals!</p>
        </p>Our Season is officially underway!</p>
        <p>If you can dodge a wrench you can dodge a ball!</p>
        <p>Come and have some fun with your friends and compete in an intense summer intermural program.</p>
        <p>Sign up <strong>NOW!</strong> for next Year!  Season started May 25, 2016 </p>
        <p> UpComing Week's Schedule </p>
        <asp:Calendar runat="server"></asp:Calendar>
    </div>
</asp:Content>
