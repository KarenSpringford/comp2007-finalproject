<%--
/**
 * @file Teams.aspx
 * @author Aristotle Rovithis 200209736
 * @author Karen Springford 200299681
 * @modified 2016.06.23
 * @version 0.0.2 Page created
 * @history 
 * @desc Teams Page for the Sports Tracking App
 */ 
--%>

<%@ Page Title="Teams" Language="C#" MasterPageFile="~/Public.Master" AutoEventWireup="true" CodeBehind="Teams.aspx.cs" Inherits="comp2007_finalproject.Teams" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1><i class="fa fa-star-o fa-lg" aria-hidden="true"></i>Teams</h1>
                <a href="/DodgeBall/TeamDetails.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus fa-lg"></i>Add Team</a>
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover" ID="TeamsGridView" AutoGenerateColumns="false"
                     DataKeyNames="TeamId" OnRowDeleting="TeamsGridView_RowDeleting" >
                    <Columns>
                        <asp:BoundField DataField="TeamName" HeaderText="Team Name" Visible="true" SortExpression="TeamName" />
                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" NavigateUrl="~/DodgeBall/TeamDetails.aspx.cs"
                            ControlStyle-CssClass="btn btn-primary btn-sm" runat="server" DataNavigateUrlFields="TeamId" DataNavigateUrlFormatString="TeamDetails.aspx?TeamId={0}" />
                        <asp:CommandField HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i>Delete"
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
