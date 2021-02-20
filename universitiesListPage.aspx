<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="universitiesListPage.aspx.cs" Inherits="StudentEligibilityPortal.universitiesListPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="page-breadcrumb">
        <div class="vertical-center sun">
             <div class="container">
                <div class="row">
                    <div class="action">
                        <div class="col-sm-12">
                            <h1 class="title">Universities List</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sepDBConnectionString %>" SelectCommand="SELECT [universityName], [universityType], [city], [websiteURL] FROM [tbl_Universities]"></asp:SqlDataSource>
            <asp:GridView class="table table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="universityName" HeaderText="University Name" SortExpression="universityName" />
                    <asp:BoundField DataField="universityType" HeaderText="University Type" SortExpression="universityType" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="websiteURL" HeaderText="Website URL" SortExpression="websiteURL" />
                </Columns>
            </asp:GridView>
        </div>
        <div class="col-md-2"></div>
    </div>
    

</asp:Content>
