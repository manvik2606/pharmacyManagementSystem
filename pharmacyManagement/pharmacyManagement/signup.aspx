<%@ Page Language="C#" CodeBehind="signup.aspx.cs" Inherits="pharmacyManagement._Default" %>

<!DOCTYPE html>
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
    <title>Registration Page</title>
</head>
<body>
    <div class="wrapper">
        <style>
            .wrapper {
                width: 100%;
                height: 100%;
                background: linear-gradient(45deg,#ca0c0c,#e8ef27,#e07cc0,#23c2db,#88ce4b,#51ff06);
            }
        </style>
        <h2 class="h2">Registration Form </h2>
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Registration Details</h3>
            </div>
            <form id="form1" runat="server">
                <div class="card-body">
                    <div class="form-group">
                        <asp:Label for="email" runat="server">Email address</asp:Label>
                        <input type="email" class="form-control" id="signupemail" placeholder="Enter your email address here...." />
                        <script>function validate() {
                                var mail = document.getElementByID('signupemail').value;
                                var regex = /^([a-zA-Z0-9\._]+)@([a-zA-Z0-9])+.([a-z]+)(.[a-z]+)?$/

                                if (regex.signupemail(mail)) {
                                    alert('Email ID is valid !');


                                }
                                else {
                                    alert("Incorrect format of email ID !!! ");
                                }
                            }  </script>


                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="signuppassword" placeholder="Enter your Password here...." />
                    </div>
                    <div class="form-group">
                        <label for="signupconfirmpassword">Confirm Password</label>
                        <input type="password" class="form-control" id="signupconfirmpassword" placeholder="Confirm Password" />
                    </div>

                    <div class="form-group">
                        <label for="inputAddress">Address</label>
                        <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" />
                    </div>

                    <div class="form-group">
                        <label for="inputAddress2">Address 2</label>
                        <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor" />
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity">City</label>
                            <input type="text" class="form-control" id="inputCity"/>
                        </div>
                        <div class="form-group col-md-4">
                            <label for="inputState">State</label>
                            <select id="inputState" class="form-control">
                                <option selected="selected">Choose...</option>
                                <option>Andhra Pradesh</option>
                                <option>Arunachal Pradesh</option>
                                <option>Assam</option>
                                <option>Bihar</option>
                                <option>Chattisgarh</option>
                                <option>Goa</option>
                                <option>Gujarat</option>
                                <option>Haryana</option>
                                <option>Himachal pradesh</option>
                                <option>Jharkhand</option>
                                <option>Karnataka</option>
                                <option>Kerala</option>
                                <option>Madhya Pradesh</option>
                                <option>Maharashtra</option>
                                <option>Manipur</option>
                                <option>Meghalaya</option>
                                <option>Mizoram</option>
                                <option>Nagaland</option>
                                <option>Odisha</option>
                                <option>Punjab</option>
                                <option>Rajasthan</option>
                                <option>Sikkim</option>
                                <option>Tamil Nadu</option>
                                <option>Telangana</option>
                                <option>Tripura</option>
                                <option>Uttar Pradesh</option>
                                <option>Uttarakhand</option>
                                <option>West Bengal</option>
                            </select>
                        </div>
                        <div class="form-group col-md-2">
                            <label for="inputZip">Zip</label>
                            <input type="text" class="form-control" id="inputZip"/>
                        </div>

                        <div class="form-group col-md-2">
                            <label for="mobno">Mobile Number :</label>
                            <input type="text" class="form-control" id="mobno"/>
                        </div>

                    </div>

                    <div class="form-group">
                        <label for="exampleInputFile">Identity Verification</label>
                        <p style="font-size: small">(Preferable - Aadhar Card / Pan Card Copy)</p>
                        <div class="input-group">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="exampleInputFile"/>
                            </div>
                            <div class="input-group-append">
                                <span class="input-group-text">Upload</span>
                            </div>
                        </div>
                    </div>


                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1"/>
                        <label class="form-check-label" for="exampleCheck1">Remember me</label>
                    </div>
                </div>

                <div class="card-footer">
                    <button id="Button4" type="submit" onclick="Button4_Click1" class="btn btn-primary">Submit</button>
                </div>
            </form>
        </div>
        <footer class="main-footer">
            <div class="float-right d-none d-sm-block">
                <b>Version</b> 3.2.0
            </div>
            <strong>Copyright © 2022 <a href="Default.aspx">Pharmacy Management</a>.</strong> All rights reserved.
        </footer>
    </div>
</body>
</html>
