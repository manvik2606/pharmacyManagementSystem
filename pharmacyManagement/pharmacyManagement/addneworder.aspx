<%@ Page Language="C#" CodeBehind="~/addneworder.aspx.cs" %>

<!DOCTYPE html>
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
    <title>Add Orders Page</title>    
</head>
<body>
    <style>
        body {
            background-color: lightskyblue;
        }
    </style>
    <form id="form1" runat="server">  
        <style>
    h1  {
        text-align: center;
    }
</style>

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
                                <select id="products" name="productsdropdown" class="link-info" datamember="Products" datatextfield="Products" onchange="location = this.options[this.selectedIndex].value">
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
<div class="card">
<div class="card-header">
    <h3 class="card-title">Add Orders</h3>
    </div>

    <div class="card-body">
        <div class="form-group">
            <label for="orderid">Order ID</label>
            <input name="orderid" type="text" class="form-control" id="inputorderid" placeholder="Enter the order id ...."/>
        </div>
        <br/>
        <div class="form-group">
            <label for="useename">User Name</label>
            <input name="username" type="text" class="form-control" id="inputusername" placeholder="Enter the user name ...."/>
        </div>
        <br/>
        <div class="form-group">
            <label for="datemodified">Date Modified :</label><input type="datetime-local" name="datemodified" class="form-control" id="inputdatemodified" placeholder="Format : dd-mm-yyyy" />&nbsp;
        </div>
        <br />
        
        <div class="form-group">
            <label for="datemodified">Status :</label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="0">Unprocessed</asp:ListItem>
                <asp:ListItem Value="1">Processing</asp:ListItem>
                <asp:ListItem Value="2">Processed</asp:ListItem>
            </asp:DropDownList>
            
        </div>
        <br/>
        <div class="form-group">
            <label for="inputproductname">Product Name</label>
            <input name="productname" type="text" class="form-control" id="inputproductname" placeholder="Enter the product name ...."/>
        </div>
        <br />
        <div class="form-group">
            <label>Seller Info (Seller name) : </label>
            <select id="sellername1" name="sellername" >
                <option selected="selected">Select seller : </option>
                <option>Amazon</option>
                <option>Flipkart</option>
                <option>eBay</option>
                <option>Pharmeasy</option>
                <option>Netmeds</option>
                <option>Other</option>
            </select>
        </div>
        <br/>
        <div class="form-group">
            <label for="sellername">If other seller,then please specify seller name :</label>
            <input id="sellername" name="sellername" type="text" class="form-control" placeholder="Enter the seller name ..."/>
        </div>

    <br/>
    &nbsp;<br/>
    <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1"/>
    <label class="form-check-label" for="exampleCheck1">Check me out</label>    
    <br/><br/>

    <div class="card-footer">
                <button id="Button3" type="submit" onclick="InsertOrder" class="btn btn-primary">Submit </button>
        <asp:hiddenfield id = "HiddenField1" runat="server" value="insert" />
        <asp:hiddenfield id = "HiddenField2" runat="server" value="view" />
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Orders] ORDER BY [orderid]" InsertCommand="INSERT INTO [Orders] ([orderid], [username], [datemodified], [status], [productname], [sellername]) VALUES (@orderid, @username, @datemodified, @status, @productname, @sellername)" DeleteCommand="DELETE FROM [Orders] WHERE [orderid] = @orderid" UpdateCommand="UPDATE [Orders] SET [username] = @username, [datemodified] = @datemodified, [status] = @status, [productname] = @productname, [sellername] = @sellername WHERE [orderid] = @orderid">
        <DeleteParameters>
            <asp:Parameter Name="orderid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="orderid" Type="Int32"  />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="datemodified" Type="String"  />
            <asp:Parameter Name="status" Type="String"  />
            <asp:Parameter Name="productname" Type="String"  />
            <asp:Parameter Name="sellername" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="datemodified" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="productname" Type="String" />
            <asp:Parameter Name="sellername" Type="String" />
            <asp:Parameter Name="orderid" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>


</div>
    </div>
    </div>
    </div>
    </form>
</body>
</html>
