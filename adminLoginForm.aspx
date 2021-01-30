<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminLoginForm.aspx.cs" Inherits="StudentEligibilityPortal.adminLoginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container padding-left padding-bottom text-justify">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-sm-4">
                <div class="project-name overflow">
                    <h1 class="bold text-center">Admin Login</h1>
                    <br />
                </div>
                <div class="row contact-form">
                    <div class="col-md">
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="usernameTextBox" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="passwordTextBox" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md padding-left padding-right">
                        <asp:Button class="btn btn-submit" ID="loginButton" runat="server" Text="Login" OnClick="loginButton_Click" />
                    </div>
                </div>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
</asp:Content>
