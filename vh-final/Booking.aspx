<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <title>Booking</title>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                            <li><a href="SignUp.aspx">Sign Up</a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-4">
                    <h2>Prices</h2>
                    <h4>½ hours 25</h4>
                    <h4>1 hours 50</h4>
                    <h4>1½ hours 70</h4>
                    <h4>2 hours</h4>
                    <h4>2½ hours</h4>
                    <h4>3 hours</h4>
                    <h4>3½ hours</h4>
                    <h4>4 hours</h4>
                    <h4>Book for 5 hours and pay for 4 hours</h4>

                </div>

                <div class="col-xs-8">
                    <asp:RadioButton ID="PC" runat="server" AutoPostBack="True" GroupName="pc_or_consoles" OnCheckedChanged="PC_CheckedChanged" Text="PC's" />
                    <asp:RadioButton ID="PS3" runat="server" AutoPostBack="True" GroupName="pc_or_consoles" OnCheckedChanged="PS3_CheckedChanged" Text="PS3" Visible="False" />
                    <asp:RadioButton ID="PS4" runat="server" AutoPostBack="True" GroupName="pc_or_consoles" OnCheckedChanged="PS4_CheckedChanged" Text="PS4" />
                    <asp:RadioButton ID="XBOX" runat="server" AutoPostBack="True" GroupName="pc_or_consoles" OnCheckedChanged="XBOX_CheckedChanged" Text="XBOX" Visible="False" />

                    <br />
                    <asp:RadioButton ID="PC1" runat="server" AutoPostBack="True" GroupName="PCS" OnCheckedChanged="PC1_CheckedChanged" Text="1PC" Visible="False" />
                    <asp:RadioButton ID="PC_more" runat="server" AutoPostBack="True" GroupName="PCS" OnCheckedChanged="PC_more_CheckedChanged" Text="More" Visible="False" />
                    <asp:RadioButton ID="OneController" GroupName="controller" runat="server" AutoPostBack="True" OnCheckedChanged="OneController_CheckedChanged" Text="1 Controller" Visible="False" />
                    <asp:RadioButton ID="morethan1" GroupName="controller" runat="server" AutoPostBack="True" OnCheckedChanged="morethan1_CheckedChanged" Text="More" Visible="False" />
                    <br />
                    <asp:DropDownList ID="no_of_pcs" runat="server" AutoPostBack="True" OnSelectedIndexChanged="no_of_pcs_SelectedIndexChanged" Visible="False">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="no_of_controllers" runat="server" AutoPostBack="True" OnSelectedIndexChanged="no_of_controllers_SelectedIndexChanged" Visible="False">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                    </asp:DropDownList>

                    <br />
                    <div class="row">
                        <div class="col-xs-3">
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox1" runat="server" AutoPostBack="False" Text="9:30-10:00 am" Visible="False" />
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox3" runat="server" AutoPostBack="False" Text="10:30-11:00 am" Visible="False" />
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox5" runat="server" AutoPostBack="False" Text="11:30-12:00 am" Visible="False" />
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox7" runat="server" AutoPostBack="False" Text="12:30-1:00 pm" Visible="False" />
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox9" runat="server" AutoPostBack="False" Text="1:30-2:00 pm" Visible="False" />
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox11" runat="server" AutoPostBack="False" Text="2:30-3:00 pm" Visible="False" />
                            <asp:CheckBox ID="CheckBox13" runat="server" AutoPostBack="False" Text="3:30-4:00 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox15" runat="server" AutoPostBack="False" Text="4:30-5:00 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox17" runat="server" AutoPostBack="False" Text="5:30-6:00 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox19" runat="server" AutoPostBack="False" Text="6:30-7:00 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox21" runat="server" AutoPostBack="False" Text="7:30-8:00 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox23" runat="server" AutoPostBack="False" Text="8:30-9:00 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox25" runat="server" AutoPostBack="False" Text="9:30-10:00 pm" Visible="False" CssClass="checkbox" />

                        </div>
                        <div class="col-xs-3">
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox2" runat="server" Text=" 10:00-10:30 am" Visible="False" />
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox4" runat="server" AutoPostBack="False" Text="11:00-11:30 am" Visible="False" />
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox6" runat="server" AutoPostBack="False" Text="12:00-12:30 pm" Visible="False" />
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox8" runat="server" AutoPostBack="False" Text="1:00-1:30 pm" Visible="False" />
                            <asp:CheckBox CssClass="checkbox" ID="CheckBox10" runat="server" AutoPostBack="False" Text="2:00-2:30 pm" Visible="False" />
                            <asp:CheckBox ID="CheckBox12" runat="server" AutoPostBack="False" CssClass="checkbox" Text="3:00-3:30 pm" Visible="False" />
                            <asp:CheckBox ID="CheckBox14" runat="server" AutoPostBack="False" Text="4:00-4:30 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox16" runat="server" AutoPostBack="False" Text="5:00-5:30 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox18" runat="server" AutoPostBack="False" Text="6:00-6:30 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox20" runat="server" AutoPostBack="False" Text="7:00-7:30 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox22" runat="server" AutoPostBack="False" Text="8:00-8:30 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox24" runat="server" AutoPostBack="False" Text="9:00-9:30 pm" Visible="False" CssClass="checkbox" />
                            <asp:CheckBox ID="CheckBox26" runat="server" AutoPostBack="False" Text="10:00-10:30 pm" Visible="False" CssClass="checkbox" />

                        </div>

                        <br />
                    </div>
                    <asp:Button ID="pc_booking" runat="server" Text="Confirm booking" Visible="False" OnClick="pc_booking_Click" />
                    <ajaxToolkit:ConfirmButtonExtender runat="server" ConfirmText="Are You Sure You Want To Book" BehaviorID="pc_booking_ConfirmButtonExtender" TargetControlID="pc_booking" ID="pc_booking_ConfirmButtonExtender"></ajaxToolkit:ConfirmButtonExtender>
                </div>

            </div>


        </div>

    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
