<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminUniversityManagement.aspx.cs" Inherits="StudentEligibilityPortal.adminUniversityManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
      $(document).ready(function () {
      
          //$(document).ready(function () {
              //$('.table').DataTable();
         // });
      
          $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
          //$('.table1').DataTable();
      });
    </script>

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
                            <asp:TextBox class="form-control" ID="universityIDTextBox" runat="server" placeholder="University ID"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:Button class="btn btn-primary" ID="goButton" runat="server" Text="Go" OnClick="goButton_Click" />
                            </span>
                        </div>
                    </div>
                </div>
                <div>
                    <label class="h4">University Name:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="nameTextBox" runat="server" placeholder="University Name"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">University Type:</label>
                    <div class="form-group">
                        <asp:DropDownList class="form-control" ID="typeDropDownList" runat="server">
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
                        <asp:TextBox class="form-control" ID="overviewTextBox" runat="server" placeholder="University Overview" TextMode="MultiLine" Rows="4"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">City:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="cityTextBox" runat="server" placeholder="University City"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">Full Address:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="addressTextBox" runat="server" placeholder="Full Address"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">Official Website:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="websiteTextBox" runat="server" placeholder="University Website"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">Logo URL:</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="logoTextBox" runat="server" placeholder="University Logo URL"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <label class="h4">Image URL</label>
                    <div class="form-group">
                        <asp:TextBox class="form-control" ID="imageTextBox" runat="server" placeholder="University Image URL"></asp:TextBox>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <asp:Button class="btn btn-success btn-block" ID="addButton" runat="server" Text="Add" OnClick="addButton_Click" />
                    </div>
                    <div class="col-md-4">
                        <asp:Button class="btn btn-warning btn-block" ID="updateButton" runat="server" Text="Update" OnClick="updateButton_Click" />
                    </div>
                    <div class="col-md-4">
                        <asp:Button class="btn btn-danger btn-block" ID="deleteButton" runat="server" Text="Delete" OnClick="deleteButton_Click" />
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                <h2 class="text-center">University Table</h2>
                <asp:SqlDataSource ID="universitySqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:sepDBConnectionString %>" SelectCommand="SELECT [universityID], [universityName], [universityType], [city], [websiteURL] FROM [tbl_Universities]"></asp:SqlDataSource>
                <hr />
                <asp:GridView class="table table-bordered" ID="universityGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="universityID" DataSourceID="universitySqlDataSource">
                    <Columns>
                        <asp:BoundField DataField="universityID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="universityID" />
                        <asp:BoundField DataField="universityName" HeaderText="Name" SortExpression="universityName" />
                        <asp:BoundField DataField="universityType" HeaderText="Type" SortExpression="universityType" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="websiteURL" HeaderText="Website URL" SortExpression="websiteURL" />
                    </Columns>
                </asp:GridView>
            </div>

        </div>
    </div>
    <br />
    <br />
</asp:Content>
