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
                            <li><a href="#">Games</a></li>
                            <li><a href="#">Gallery</a></li>
                            <li><a href="#">Events</a></li>
                            <li class="active"><a href="SignUp.aspx">Sign Up</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="center-page">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

            <label class="col-xs-11">Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="name" CssClass="form-control" placeholder="Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="form" runat="server" ErrorMessage="name required" ControlToValidate="name" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>


            <label class="col-xs-11">Gamming Name</label>
            <div class="col-xs-11">
                <asp:TextBox ID="gamingname" CssClass="form-control" placeholder="Gaming Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter gaming name" ControlToValidate="gamingname" Display="Dynamic" ValidationGroup="form"></asp:RequiredFieldValidator>
            </div>

            <label class="col-xs-11">Date of Birth</label>
            <div class="col-xs-11">
                <asp:TextBox ID="DOB" CssClass="form-control" placeholder="mm/dd/yyyy" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender runat="server" BehaviorID="DOB_CalendarExtender" TargetControlID="DOB" ID="DOB_CalendarExtender"></ajaxToolkit:CalendarExtender>
            </div>
            

            <label class="col-xs-11">Email Id</label>
            <div class="col-xs-11">
                <asp:TextBox ID="emailid" CssClass="form-control" placeholder="Email Id" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Email Id" ControlToValidate="emailid" Display="Dynamic" ValidationGroup="form"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email Id" ControlToValidate="emailid" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="form"></asp:RegularExpressionValidator>
                <asp:Panel ID="Panel3" runat="server">
                    <b>A verification link will be send to this email id</b>
                    <br />
                </asp:Panel>
                <ajaxToolkit:BalloonPopupExtender runat="server" ExtenderControlID="" CustomCssUrl="" DynamicServicePath="" BehaviorID="emailid_BalloonPopupExtender" TargetControlID="emailid" ID="emailid_BalloonPopupExtender" BalloonPopupControlID="Panel3" BalloonSize="Medium" BalloonStyle="Cloud"></ajaxToolkit:BalloonPopupExtender>
            </div>


            <label class="col-xs-11">Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="password" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter password" ControlToValidate="password" Display="Dynamic" ValidationGroup="form"></asp:RequiredFieldValidator>
            </div>


            <label class="col-xs-11">Confirm Password</label>
            <div class="col-xs-11">
                <asp:TextBox ID="cnfpassword" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="enter password" ControlToValidate="cnfpassword" Display="Dynamic" ValidationGroup="form"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password does not match" ControlToCompare="password" ControlToValidate="cnfpassword" ValidationGroup="form" Display="Dynamic"></asp:CompareValidator>
            </div>



            <label class="col-xs-11">Contact No</label>
            <div class="col-xs-11">
                <asp:TextBox ID="contact" CssClass="form-control" placeholder="Mobile no" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="enter mobile no" ControlToValidate="contact" Display="Dynamic" ValidationGroup="form"></asp:RequiredFieldValidator>
            </div>


            <div class="col-xs-11 space-vert">
                <asp:Button ID="signup" CssClass="btn btn-success" runat="server" Text="Sign Up" ValidationGroup="form" OnClick="signup_Click" />
            </div>


        </div>
        <br />
    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
