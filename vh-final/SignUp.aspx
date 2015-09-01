<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <title>Sign up</title>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".nabar-collapse">
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
                            <li><a href="#">Games</a></li>
                            <li><a href="#">Gallery</a></li>
                            <li><a href="#">Events</a></li>
                            <li class="active"><a href="#">Sign Up</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="center-page">
            <label class="col-xs-11">Name</label>
            <div class="col-xs-11">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:TextBox ID="name" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox>
                <asp:Panel ID="Panel1" runat="server" >
                    <b>Enter your real name for contacting you</b>
                    <br />
                </asp:Panel>
                <ajaxToolkit:BalloonPopupExtender ID="name_BalloonPopupExtender" runat="server" BalloonPopupControlID="Panel1" BehaviorID="name_BalloonPopupExtender" CustomCssUrl="" DynamicServicePath="" ExtenderControlID="" TargetControlID="name" BalloonStyle="Cloud" BalloonSize="Medium"></ajaxToolkit:BalloonPopupExtender>
            </div>

            <label class="col-xs-11">Email Id</label>
            <div class="col-xs-11">
                <asp:TextBox ID="emailid" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
            </div>

            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="password" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
            </div>
            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="cnfpassword" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
            </div>
            <label class="col-xs-11">Contact No</label>
            <div class="col-xs-11">
                <asp:TextBox ID="contact" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
            </div>
            <div class="col-xs-11 space-vert">
                <asp:Button ID="signup" CssClass="btn btn-success" runat="server" Text="Sign Up" />
            </div>
        </div>

        <hr />
        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2105 Virtual Highs &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">Games</a> &middot; <a href="#">Gallery</a> &middot; <a href="#">Events</a> &middot; <a href="#">Regiester</a></p>
                <p>Website developed by Archit Bhatnagar</p>
            </div>
        </footer>


    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
