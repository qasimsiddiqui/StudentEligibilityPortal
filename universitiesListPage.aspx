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
   <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
