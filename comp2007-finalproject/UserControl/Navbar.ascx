<%--
/**
 * @file Navbar.ascx
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.24
 * @version 0.0.3 placeholders installed
 * @history 0.0.2 page created
 * @desc Navbar User contorl
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
                <%-- This is the default homepage for all users --%>
                <li id="homepage" runat="server"><a href="/Default.aspx"><i class="fa fa-home fa-lg" aria-hidden="true"></i> Home</a></li>
                <%-- AdminPlaceHolder is for adminstrator use only --%>
                <asp:PlaceHolder ID="AdminPlaceHolder" runat="server">
                    <li id="adminmenu" runat="server"><a href="/Admin/AdminMenu.aspx"><i class="fa fa-tachometer fa-lg"></i> Dashboard</a></li>
                    <li id="users" runat="server"><a href="/Admin/Users.aspx"><i class="fa fa-users fa-lg"></i> Users</a></li>
                </asp:PlaceHolder>
                <%-- DodgeBallPlaceHolder is for users that areregistered and logged in --%>
                <asp:PlaceHolder ID="DodgeBallPlaceHolder" runat="server" >
                    <li id="dodgeballmenu" runat="server"><a href="/DodgeBall/DodgeballMenu.aspx"><i class="fa fa-tachometer fa-lg"> Menu</i></a></li>
                    <li id="teams" runat="server"><a href="/DodgeBall/Teams.aspx"><i class="fa fa-star-o fa-lg" aria-hidden="true"></i> Teams</a></li>
                    <li id="games" runat="server"><a href="/DodgeBall/Games.aspx"><i class="fa fa-calendar fa-lg" aria-hidden="true"></i> Games</a></li>
                    <li id="logout" runat="server"><a href="/Logout.aspx"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
                </asp:PlaceHolder>
                <%-- For website visitors that are not logged in --%>
                <asp:PlaceHolder ID="PublicPlaceHolder" runat="server">
                    <li id="login" runat="server"><a href="/Login.aspx"><i class="fa fa-sign-in fa-lg"></i> Login</a></li>
                    <li id="register" runat="server"><a href="/Register.aspx"><i class="fa fa-user-plus fa-lg"></i> Register</a></li>
                </asp:PlaceHolder>
                <%-- Also public pages show in this order for consistentency across the website --%>
                <li id="contact" runat="server"><a href="/Contact.aspx"><i class="fa fa-phone fa-lg" aria-hidden="true"></i> Contact Us</a></li>
                <li id="documentation" runat="server"><a href="/Documentation.aspx"><i class="fa fa-book fa-lg"></i> Documentation</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
