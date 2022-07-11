<%@ Page Title="Home Page Pharmacy Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pharmacyManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="wrapper">
    <style>
      .wrapper {
      width:100%;
      height: 100%;
      background: linear-gradient(45deg,#ca0c0c,#e8ef27,#e07cc0,#23c2db,#88ce4b,#51ff06);

    }
    </style>
      <meta runat="server" charset="utf-8"/>
      <meta runat="server" name="viewport" content="width=device-width, initial-scale=1"/>
      <link runat="server" rel="stylesheet" href="style.css"/>
      <link runat="server" rel="stylesheet" href="./bootstrap.css"/>
      <link runat="server" rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous"/>
      <link runat="server" rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      <link runat="server" rel="shortcut icon" href="./img/ia_100000000.png" type="image/x-icon"/>
      <link runat="server" rel="preconnect" href="https://fonts.gstatic.com"/>
      <link runat="server" rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap"/>

        
    <h2 class="h2">Login Form </h2>
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Login Credentials</h3>
      </div>
            <div class="card-body">
                <div class="form-group">
                    <Label runat="server" for="PId">Patient ID</Label>
                    <input runat="server" type="text" class="form-control" id="PId" placeholder="Enter patient ID here...."/>
                </div>
                <div class="form-group">
                    <Label runat="server" for="mobno">Mobile Number</Label>
                    <input runat="server" type="text" class="form-control" id="mobno" placeholder="Enter Mobile Number here....."/>
                </div>
                <div class="form-group">
                    <Label runat="server" for="email">Email address</Label>
                    <input runat="server" type="email" class="form-control" id="email" placeholder="Enter email address here...."/>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" for="password">Password</asp:Label>
                    <input runat="server" type="password" class="form-control" id="password" placeholder="Enter Password here....."/>
                </div>

                <div class="form-check">
                    <input runat="server" type="checkbox" class="form-check-input" id="exampleCheck1">
                    <asp:Label runat="server" class="form-check-label" for="exampleCheck1">Remember Me</asp:Label>
                </div>
            </div>
            <div class="form-group">
                <asp:Label runat="server">
          New to this portal?
          <a class="btn-secondary runat=" href="signup.aspx" server="">Register Here &raquo;</a>
                </asp:Label>
            </div>
        <asp:Button type="button" class="btn btn-primary" ID="Button1" runat="server" data-toggle="modal" OnClick="Button1_Click" data-target="#exampleModal" Text="Submit" />


        <!-- Button trigger modal -->

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
        </div>
       </div>

</asp:Content>
