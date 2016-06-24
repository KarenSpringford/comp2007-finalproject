﻿<%--
/**
 * @file Navbar.ascx
 * @author Aristotle Rovithis & Karen Springford
 * @version 0.0.2
 * @desc Global Navbar for the Sport Tracking App
 */ 
--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navbar.ascx.cs" Inherits="comp2007_finalproject.Navbar" %>
<nav id="navbar" class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="Default.aspx"><img id="logo" src="./Assets/logo-smaller.png" alt="Logo" /></a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">   
            <ul class="nav navbar-nav navbar-right">
                <li id="homepage" runat="server"><a href="Default.aspx"><i class="fa fa-home fa-lg" aria-hidden="true"></i> Home</a></li>
                <li id="teams" runat="server"><a href="/DodgeBall/Teams.aspx"><i class="fa fa-star-o fa-lg" aria-hidden="true"></i> Teams</a></li>
                <li id="games" runat="server"><a href="/DodgeBall/Games.aspx"><i class="fa fa-calendar fa-lg" aria-hidden="true"></i> Games</a></li>
                <li id="contact" runat="server"><a href="/DodgeBall/Contact.aspx"><i class="fa fa-phone fa-lg" aria-hidden="true"></i> Contact Us</a></li>
                <li id="documentation" runat="server"><a href="/DodgeBall/Documentation.aspx"><i class="fa fa-book fa-lg"></i> Documentation</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
