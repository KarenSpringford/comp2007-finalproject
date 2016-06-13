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
                <li id="Home Page" runat="server"><a href="Default.aspx"><i class="fa fa-home fa-lg" aria-hidden="true"></i> Home</a></li>
                <li id="Schedule" runat="server"><a href="Schedule.aspx"><i class="fa fa-calendar fa-lg" aria-hidden="true"></i> Schedule</a></li>
                <li id="Teams" runat="server"><a href="Teams.aspx"><i class="fa fa-star-o fa-lg" aria-hidden="true"></i> Teams</a></li>
                <li id="Stats" runat="server"><a href="Stats.aspx"><i class="fa fa-thumbs-o-up fa-lg" aria-hidden="true"></i> Stats</a></li>
                <li id="Contact" runat="server"><a href="Contact.aspx"><i class="fa fa-phone fa-lg" aria-hidden="true"></i> Contact Us</a></li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>
