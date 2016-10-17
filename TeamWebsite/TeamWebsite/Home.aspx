<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="TeamWebsite.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
<link rel="stylesheet" type="text/css" href="Style/MyStyle1.CSS"/>
    <script src="Scripts/angular.min.js"></script>
    <script src="Scripts/myScript.js"></script>
    <style>
       
        .NavigationMenu {
            width: 18%;
            margin-top:-340px;
            height:340px;
            background-color:aqua;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
 <form>
    <div ng-app="myModule">
     <asp:TextBox ID="Search" class="form-control" runat="server" placeholder="Search Subject" size="55" style="margin-top:8px" ng-model="searchText">
                           
    </asp:TextBox>
    </div>
 </form>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<br/><br/>
    <br/><br/>
<div ng-app="myModule">
  <div ng-controller="myController">
    <div class="hides">
        <h1>Freee courses</h1><br/><br/>
    <span><b>Show all courses</b></span><input type="checkbox" ng-model="hideStuff"/><br/><br/>
    </div>
    <div class="row" >
      <div class="col-sm-4 col-md-3" ng-repeat="subject in subjects | filter:searchText">
        <a href="SubjectInfoPlay.aspx">
        <div class="thumbnail" >
          <img src="{{subject.ImageLocation}}" alt="..." height="200px"/>
          <div class="caption" >
            <h3>{{subject.SubjectName}}</h3>
            <p>{{subject.Description}}</p>
          </div>
        </div>
        </a>
      </div>
        <div class="col-sm-4 col-md-3" ng-repeat="subject in subjects | filter:searchText" ng-hide="hideStuff">
        <a href="#">
        <div class="thumbnail" >
          <img src="{{subject.ImageLocation}}" alt="..." />
          <div class="caption" >
            <h3>{{subject.SubjectName}}</h3>
            <p>{{subject.SubjectName}}</p>
          </div>
        </div>
        </a>
      </div>
      </div>
      </div>
</div>	

</asp:Content>
