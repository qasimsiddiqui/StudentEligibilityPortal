<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="StudentEligibilityPortal.userProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container padding-left padding-bottom text-justify">
        <div class="col-md-6">
            <div class="project-name overflow">
                <h1 class="bold">Your Profile</h1>
                <br />
            </div>
            <div class="row contact-form">
                <div class="row">
                    <label class="col-md-2">Name:</label>
                    <div class="form-group col-md-10">
                        <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="Your Name"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <label class="col-md-2">Email:</label>
                    <div class="form-group col-md-10">
                        <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <label class="col-md-2">Password:</label>
                    <div class="form-group col-md-10">
                        <asp:TextBox class="form-control" ID="TextBo3" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md padding-left padding-right">
                    <asp:Button class="btn btn-submit" ID="Button1" runat="server" Text="Update" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
