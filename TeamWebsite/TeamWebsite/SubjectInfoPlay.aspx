<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SubjectInfoPlay.aspx.cs" Inherits="TeamWebsite.SubjectInfoPlay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <form>
    <div ng-app="myModule">
     <asp:TextBox ID="Search" class="form-control" runat="server" placeholder="Search Video" size="55" style="margin-top:8px" ng-model="searchText">
                           
    </asp:TextBox>
    </div>
 </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

</asp:Content>
