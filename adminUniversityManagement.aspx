<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminUniversityManagement.aspx.cs" Inherits="StudentEligibilityPortal.adminUniversityManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2>University Details</h2>
                <hr />
                <div>
                    <label class="h4">University ID:</label>
                    <div class="form-group">
                        <div class="input-group">
                            <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="University ID"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" />
                            </span>
                        </div>
                    </div>
                </div>
                <div>
                    <label class="h4">University Name:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="University Name"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">University Type:</label>
                    <div class="form-group">
                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                            <asp:ListItem Text="Select" Value="select" />
                              <asp:ListItem Text="Public" Value="Public" />
                              <asp:ListItem Text="Private" Value="Private" />
                              <asp:ListItem Text="Military" Value="Military" />
                              <asp:ListItem Text="Semi-Government" Value="Semi-Government" />
                        </asp:DropDownList>
                    </div>
                </div>
                <div>
                    <label class="h4">Overview:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox3" runat="server" placeholder="University Overview" TextMode="MultiLine" Rows="4"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">City:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="University City"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">Full Address:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Full Address"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">Official Website:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="University Website"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">Logo URL:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="University Logo URL"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">Image URL</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="University Image URL"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Button class="btn btn-success btn-block" ID="Button2" runat="server" Text="Add" />
                    </div>
                    <div class="col-md-4">
                        <asp:Button class="btn btn-warning btn-block" ID="Button3" runat="server" Text="Update" />
                    </div>
                    <div class="col-md-4">
                        <asp:Button class="btn btn-danger btn-block" ID="Button4" runat="server" Text="Delete" />
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <h2 class="text-center">University Table</h2>
                <hr />
                <asp:GridView class="table table-bordered" ID="GridView1" runat="server"></asp:GridView>
            </div>

        </div>
    </div>
    <br />
    <br />
</asp:Content>
