﻿<%@ Page Language="C#" CodeBehind="~/Orders.aspx.cs" %>

<!DOCTYPE html>
<script runat="server">

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
</script>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" href="./bootstrap.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="shortcut icon" href="./img/ia_100000000.png" type="image/x-icon"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet"/>
    <title>Orders Page</title>    
</head>
<body>
      <style>
          body {
            background-color:lightskyblue;
          }
      </style>
    <form id="form1" runat="server">

               <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="Default1.aspx"><strong>Pharmacy Management</strong></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarScroll">
                        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Default1.aspx">Home</a>
                            </li>

                            <li class="nav-item dropdown-item">
                                <a class="nav-item navbar-toggler">Orders</a>
                                <select id="orders" name="orderslink" class="link" onchange="location = this.options[this.selectedIndex].value">
                                    <option selected="selected" name="orders" value="orders.aspx">-----Orders------</option>
                                    <option name="dailyorders" value="orders.aspx">Daily Orders</option>
                                    <option value="orders.aspx">New Orders</option>
                                    <option value="orders.aspx">Total Orders</option>
                                    <option value="addneworder.aspx">Add New Orders</option>
                                </select>
                            </li>
                            <li class="nav-item dropdown-item">
                                    <a class="nav-item navbar-toggler"></a>
                                <select ID="products" name="productsdropdown" class="link-info" datamembers="Products" DataTextField="Products" onchange="location = this.options[this.selectedIndex].value">
                                    <option selected="selected" name="products" value="products.aspx">----Products----</option>
                                    <option value="products.aspx">View Products</option>
                                    <option value="addproduct.aspx">Add Products</option>
                                </select>
                                
                            </li>
                            <li class="nav-item dropdown">
                                <select id="s1" name="link" class="link" onchange="location = this.options[this.selectedIndex].value">
                                    <option selected="selected" name="shoppingwebsite" value="">Browse Shopping Website Link</option>
                                    <option value="https://www.amazon.in/b?ie=UTF8&node=20821454031">Amazon</option>
                                    <option value="https://www.flipkart.com/health-care/home-medicines/pr?sid=hlc%2Cah4&otracker=categorytree&fm=neo%2Fmerchandising&iid=M_abf3c810-3911-4194-a105-bb8c59d6c9bf_2_372UD5BXDFYS_MC.NPPVJAGP2HX2&otracker=hp_rich_navigation_8_2.navigationCard.RICH_NAVIGATION_Beauty%252C%2BToys%2B%2526%2BMore~Nutrition%2B%2526%2BHealth%2BCare~Home%2BMedicines_NPPVJAGP2HX2&otracker1=hp_rich_navigation_PINNED_neo%2Fmerchandising_NA_NAV_EXPANDABLE_navigationCard_cc_8_L2_view-all&cid=NPPVJAGP2HX2">Flipkart</option>
                                    <option value="https://www.ebay.com/b/Health-Care-Products/67588/bn_1865465">eBay</option>
                                    <option value="https://www.pharmeasy.in">Pharmeasy</option>
                                    <option value="https://www.netmeds.com">Netmeds</option>
                                </select>

                            </li>
                            <script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
                            <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>

                        </ul>
                        <input runat="server" class="col-xs-6 tab" type="search" placeholder="Search any medical product/medicines" aria-label="Search"/>
                        <button class="btn btn-success tab" type="submit">Search</button>
                        <style>
                            .tab {
                                display: inline-block;
                                margin-left: 40px;
                            }

                            .tab1 {
                                display: inline-block;
                                margin-left: 120px;
                            }
                        </style>

                        <div class="nav-item button tab1">
                            <button type="button" class="float-left submit-button" id="profile">
                                Profile
                            </button>

                            <script type="text/javascript">
                                document.getElementById("profile").onclick = function () {
                                    location.href = "profile.aspx";
                                };
                            </script>
                        </div>
                        <div class="nav-item button tab">
                            <button type="button" class="float-left submit-button" id="signout">
                                Sign Out
                            </button>

                            <script type="text/javascript">
                                document.getElementById("signout").onclick = function () {
                                    location.href = "default.aspx";
                                };
                            </script>
                        </div>
                    </div>
                </div>
            </nav>


        <div class="row">
    <div class="col-12">
    <div class="card">
    <div class="card-header">
    <h3 class="card-title">Orders Table</h3>
    <div class="card-tools">
    <div class="input-group input-group-sm" style="width: 150px;">
    <input type="text" name="table_search" class="form-control float-right" placeholder="Search"/>
    <div class="input-group-append">
    <button type="submit" class="btn btn-default">
    <i class="fas fa-search"></i>
    </button>
    </div>
    </div>
    </div>
                </div>
    <asp:GridView ID="GridView1" runat="server" Width="1044px" AutoGenerateColumns="False" DataKeyNames="orderid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="orderid" ReadOnly="True" SortExpression="orderid" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="datemodified" HeaderText="datemodified" SortExpression="datemodified" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
            <asp:BoundField DataField="sellername" HeaderText="sellername" SortExpression="sellername" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Orders] ORDER BY [orderid]"></asp:SqlDataSource>


        </div>
        <asp:Button ID="Button2" onClick="Button2_Click" runat="server" Text="Add New Orders" />
    </div>
    

    </form>
</body>
</html>
