<%@ Page Language="C#" %>

<!DOCTYPE html>
<html5>
    <head runat="server">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="stylesheet" href="style.css" />
        <link rel="stylesheet" href="./bootstrap.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <link rel="shortcut icon" href="./img/ia_100000000.png" type="image/x-icon" />
        <link rel="preconnect" href="https://fonts.gstatic.com" />
        <link href="https://fonts.googleapis.com/css2?family=Work+Sans&display=swap" rel="stylesheet" />
        <title>Dashboard</title>
    </head>
    <body>
        <style>
            body {
                background-color: lightskyblue;
            }
        </style>
        <form id="form1" runat="server">

            <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"><strong>Pharmacy Management</strong></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarScroll">
                        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
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
                                <select ID="products" name="productsdropdown" class="link-info" DataMember="Products" DataTextField="Products" onchange="location = this.options[this.selectedIndex].value">
                                    <option selected="selected" name="products" value="products.aspx">----Products----</option>
                                    <option Value="products.aspx">View Products</option>
                                    <option Value="addproduct.aspx">Add Products</option>
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
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <style>
                    .sidebar-open main-sidebar    {
                        transform: translate(0, 0);
                    }
                    
                </style>
                <section class="sidebar" style="height: auto;">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            &nbsp;<asp:Menu ID="Menu1" runat="server">
                                <DynamicItemTemplate>
                                    <%# Eval("Text") %>
                                </DynamicItemTemplate>
                                <Items>
                                    <asp:MenuItem Text="Home" Value="Default.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Profile" Value="Profile.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Orders">
                                        <asp:MenuItem Text="Add New Orders" Value="Addorders.aspx"></asp:MenuItem>
                                        <asp:MenuItem Text="View New Orders" Value="Orders.aspx"></asp:MenuItem>
                                        <asp:MenuItem Text="View monthly orders" Value="Orders.aspx"></asp:MenuItem>
                                    </asp:MenuItem>
                                </Items>
                            </asp:Menu>
                            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                        </div>
                    </div>
                </section>
                <!-- /.sidebar -->
            </aside>

            <div>
                <div class="row">
                    <div class="col1-sm-3">
                        <style>
                            .row {
                                margin: 20px;
                            }

                            .col1-sm-3 {
                                width: 17%;
                                margin-right: 6rem;
                            }

                            .col2-sm-3 {
                                width: 17%;
                                margin-right: 6rem;
                            }

                            .col3-sm-3 {
                                width: 17%;
                                margin-right: 6rem;
                            }

                            .col4-sm-3 {
                                width: 17%;
                                margin-right: 6rem;
                            }
                        </style>

                        <h3>159</h3>
                        <p>New Orders</p>
                        <div class="icon">
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                        <a href="/orders.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                    <div class="col2-sm-3">
                        <h3>63</h3>
                        <p>Average Monthly Orders</p>
                        <div class="icon">
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                        <a href="orders.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                    <div class="col3-sm-3">
                        <h3>1654</h3>
                        <p>Total Orders</p>
                        <div class="icon">
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                        <a href="orders.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                    <div class="col4-sm-3">
                        <h3>145</h3>
                        <p>Total Products</p>
                        <div class="icon">
                            <i class="fas fa-shopping-cart"></i>
                        </div>
                        <a href="products.aspx" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-md-8">
                  <p class="text-center">
                   
            </p><div class="widget-user-header bg-aqua-active">
              <p class="text-center"><strong>Recent Orders</strong></p>
            </div><p></p>
            <div class="chart">
                  <div class="box-body">
              <div class="table-responsive">
              <table class="table no-margin">
                  <thead>
     

                      <asp:GridView ID="GridView1" runat="server" Width="1044px" AutoGenerateColumns="False" DataKeyNames="orderid" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="orderid" ReadOnly="True" SortExpression="orderid" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Orders] ORDER BY [orderid]"></asp:SqlDataSource>
                  </thead>
                      </table>
              </div>
              <!-- /.table-responsive -->
             
            </div>
             <div class="box-footer text-center">
              <a href="orders.aspx" class="uppercase">View All Orders</a>
            </div>
                   
                   
                  </div>
                 
                  <!-- /.chart-responsive -->
                </div>


            <footer class="main-footer">
                <div class="float-right d-none d-sm-block">
                    <b>Version</b> 3.2.0
                </div>
                <strong>Copyright © 2022 <a href="Default1.aspx">Pharmacy Management</a>.</strong> All rights reserved.
            </footer>
        </form>
    </body>
</html5>
