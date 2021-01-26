<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="StudentEligibilityPortal.LoginForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container padding-left padding-bottom text-justify">
        <div class="row">
            <div class="col-sm-6">
                
                    <img src="images/signin-image.jpg" class="img-responsive padding-left" alt="Login Image">
                
            </div>
            <div class="col-sm-6">
                <div class="project-name overflow">
                    <h1 class="bold">Login</h1>
                    <br />
                </div>
                <div class="row contact-form">
                    <div class="col-md">
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="TextBo3" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md padding-left padding-right">
                        <asp:Button class="btn btn-submit" ID="Button1" runat="server" Text="Login" />
                    </div>
                </div>
            </div>            
        </div>
    </div>
</asp:Content>
