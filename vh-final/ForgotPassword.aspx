<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <title>ForgotPassword</title>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        function callAlert(msg)
        {
            alert(msg);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img alt="Logo" src="Images/dota-2-official.jpg" height="30" /></span>Virtual Highs</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Default.aspx">Home</a></li>
                            <li><a href="Games.aspx">Games</a></li>
                            <li><a href="#">Gallery</a></li>
                            <li><a href="#">Events</a></li>
                            <li><a href="SignUp.aspx">Sign Up</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="center-page">

            <asp:Label ID="Enter_Email_id" runat="server" Text="Enter Email-Id"  CssClass="col-xs-11"></asp:Label>
            
            <div class="col-xs-11">
                <asp:TextBox ID="emailid" TextMode="Email" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
            </div>
            <br />
            <br />
            <div class="col-xs-11 space-vert">
                <asp:Button ID="Check" runat="server" CssClass=" btn btn-primary" Text="Check" OnClick="Check_Click" />
            </div>
            <div class="col-xs-11">
                <asp:Label ID="lable_password" runat="server" Text="Enter Password" Visible="false"></asp:Label>
                <asp:TextBox ID="password" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server" Visible="false"></asp:TextBox>
            </div>

            <div class="col-xs-11">
                <asp:Label ID="lable_cnfpassword" runat="server" Text="Confirm Password" Visible="false"></asp:Label>
                <asp:TextBox ID="cnfpassword" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server" Visible="false"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="password" ControlToValidate="cnfpassword" Display="Dynamic"></asp:CompareValidator>
            </div>
            <div class="col-xs-11 space-vert">
                <asp:Button ID="Update" CssClass="btn btn-success" runat="server" Text="Update" Visible="false" OnClick="Update_Click"/>
            </div>
            

        </div>


    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
