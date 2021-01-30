<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="signupForm.aspx.cs" Inherits="StudentEligibilityPortal.signupForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">

    <div class="container padding-left padding-bottom text-justify">
        <div class="row">
            <div class="col-sm-6">
                <div class="project-name overflow">
                    <h1 class="bold">Sign Up</h1>
                    <br />
                </div>
                <div class="row contact-form">
                    <div class="col-md">
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="nameTextBox" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md">
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="emailTextBox" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
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
                    <div class="col-md">
                        <div class="form-group">
                            <asp:TextBox class="form-control" ID="password2TextBox" runat="server" placeholder="Re-Enter Password" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md padding-left padding-right">
                        <asp:Button class="btn btn-submit" ID="registerButton" runat="server" Text="Register" OnClick="registerButton_Click" />
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                
                    <img src="images/signup-image.jpg" class="img-responsive padding-top padding-left" alt="Sign Up Image">
                
            </div>
        </div>
    </div>

</asp:Content>
