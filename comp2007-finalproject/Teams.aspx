<%--
/**
 * @file Teams.aspx
 * @author Aristotle Rovithis & Karen Springford
 * @version 0.0.2
 * @desc Teams Page for the Sports Tracking App
 */ 
--%>

<%@ Page Title="Teams" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Teams.aspx.cs" Inherits="comp2007_finalproject.Teams" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1><i class="fa fa-star-o fa-lg" aria-hidden="true"></i>Teams</h1>
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover" ID="TeamGridView">

                </asp:GridView>


            </div>
        </div>
    </div>
</asp:Content>
