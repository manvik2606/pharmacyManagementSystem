<%@ Page Title="Profile Page" Language="C#" CodeBehind="Profile.aspx.cs" Inherits="pharmacyManagement._Default" %>

<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click1(object sender, EventArgs e)
    {

        Button clickedButton = (Button)sender;
        clickedButton.Text = "....done-clicked....";
        clickedButton.Enabled = false;



    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        Button clickedButton = (Button)sender;
        clickedButton.Text = "....done-clicked....";
        clickedButton.Enabled = false;


    }

    protected void Button3_Click1(object sender, EventArgs e)
    {
        Button clickedButton = (Button)sender;
        clickedButton.Text = "....done-clicked....";
        clickedButton.Enabled = false;


    }


</script>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
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
    <title>Profile Page</title>
</head>
<body>
    <style>
        body {
            background-color: lightskyblue;
        }
    </style>
    <form id="form1" runat="server">
        <style>
            h1 {
                text-align: center;
            }
        </style>


        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <!-- Navbar content -->
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><strong>Pharmacy Management</strong></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="Default1.aspx">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="https://www.facebook.com/">Facebook Link</a>
                        </li>
                        <li class="nav-item dropdown">

                            <select id="s1" name="link" class="link" onchange="location = this.options[this.selectedIndex].value">
                                <option selected="selected" name="linkselected" value="">Browse Shopping Website Link</option>
                                <option value="https://www.amazon.in/b?ie=UTF8&node=20821454031">Amazon</option>
                                <option value="https://www.flipkart.com/health-care/home-medicines/pr?sid=hlc%2Cah4&otracker=categorytree&fm=neo%2Fmerchandising&iid=M_abf3c810-3911-4194-a105-bb8c59d6c9bf_2_372UD5BXDFYS_MC.NPPVJAGP2HX2&otracker=hp_rich_navigation_8_2.navigationCard.RICH_NAVIGATION_Beauty%252C%2BToys%2B%2526%2BMore~Nutrition%2B%2526%2BHealth%2BCare~Home%2BMedicines_NPPVJAGP2HX2&otracker1=hp_rich_navigation_PINNED_neo%2Fmerchandising_NA_NAV_EXPANDABLE_navigationCard_cc_8_L2_view-all&cid=NPPVJAGP2HX2">Flipkart</option>
                                <option value="https://www.ebay.com/b/Health-Care-Products/67588/bn_1865465">eBay</option>
                                <option value="https://www.pharmeasy.in">Pharmeasy</option>
                                <option value="https://www.netmeds.com">Netmeds</option>
                            </select>

                        </li>
                        <script type="text/javascript" src="Scripts/jquery-2.1.1.min.js"></script>
                        <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="https://www.youtube.com/" tabindex="-1" aria-disabled="true">Youtube</a>
                        </li>
                    </ul>
                    <style>
                        textarea {
                            width: 200px;
                        }
                    </style>
                    <asp:TextBox runat="server" class="form-control me-2" type="search" placeholder="Search any medical product/medicines" aria-label="Search"></asp:TextBox>
                    <button class="btn btn-outline-success" type="submit">Search</button>



                    <div class="nav-item button">
                        <button type="button" class="float-left submit-button" id="profile">
                            Profile
                        </button>

                        <script type="text/javascript">
                            document.getElementById("profile").onclick = function () {
                                location.href = "profile.aspx";
                            };
                        </script>
                    </div>
                    <div class="nav-item button">
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


        <div class="card card-primary">
            <div class="card-header">
                <h1 class="card-title">User Profile</h1>
            </div>
            <div class="card-body">
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Find Record" />
                
                <div class="form-group">
                    <asp:Label runat="server" for="PId">Patient ID</asp:Label>
                    <input runat="server" type="text" class="form-control" id="PId"  />
                </div>
                <div class="form-group">
                    &nbsp;<asp:Label runat="server" for="mobno">Mobile Number</asp:Label>
                    <input runat="server" type="text" class="form-control" id="mobno" placeholder="Enter Mobile Number here....." /></div>
                <div class="form-group">
                    <asp:Label runat="server" for="email">Email address</asp:Label>
                    &nbsp;<input runat="server" type="email" class="form-control" id="email" placeholder="Enter email address here...." /></div>
                <div class="form-group">
                    <asp:Label runat="server" for="password">Password</asp:Label>
                    &nbsp;<input runat="server" type="password" class="form-control" id="password" placeholder="Enter Password here....." /></div>
            </div>

            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Submit Details" />

            <table style="width: 812px">

                <tr>
                    <td colspan="3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RecordId" DataSourceID="SqlDataSource1" Width="941px">
                            <Columns>
                                <asp:BoundField DataField="RecordId" HeaderText="RecordId" InsertVisible="False" ReadOnly="True" SortExpression="RecordId" />
                                <asp:BoundField DataField="PId" HeaderText="PId" SortExpression="PId" />
                                <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT DISTINCT [RecordId], [PId], [mobno], [email], [password] FROM [PInfo]"></asp:SqlDataSource>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Delete Data" />
                    </td>
                </tr>


                <tr>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
