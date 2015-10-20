<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <title>Home</title>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="Scripts/jquery-2.1.4.js"></script>
    <script type="text/javascript">
        function callAlert(msg) {
            alert(msg);
        }
    </script>
    <script type="text/javascript">
        function openModal() {
            $('#myModal').modal('show');
        }
    </script>
    <script type="text/javascript">
        function myFunction(g_name) {
            document.getElementById("login-logout").innerHTML = g_name;
        }
    </script>
    <script type="text/javascript">
        function myheader(g_name) {
            document.getElementById("model-header").innerHTML = g_name;
        }
    </script>
    <script type="text/javascript">
        function signup(g_name) {
            document.getElementById("sign-up").innerHTML = g_name;
            document.getElementById("sign-up").href = "GammerProfile.aspx";
        }
    </script>
    <script type="text/javascript">
        function mygamename(g_name) {
            document.getElementById("hi-gammer").innerHTML = 'hi ' + g_name;
            document.getElementById("hi-gammer").href = "GammerProfile.aspx";
        }
    </script>
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
                        <a class="navbar-text" id="hi-gammer">sup</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="Games.aspx">Games</a></li>
                            <li><a href="Gallery.aspx">Gallery</a></li>
                            <li><a href="Events.aspx">Events</a></li>
                            <li><a id="sign-up" href="SignUp.aspx">Sign Up</a></li>
                            <li><a id="login-logout" href="#myModal" data-toggle="modal" data-target="#myModal">Log-in</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>



        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title" id="model-header">Log-in</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <asp:Label ID="lable_email" runat="server" Text="Email Id"></asp:Label>
                            <asp:Label ID="Welcome" runat="server" Text="Hi, " Visible="false"></asp:Label>
                            <asp:Label ID="g_name" runat="server" Text="" Visible="false"></asp:Label>
                            <asp:TextBox ID="emailid" CssClass="form-control" placeholder="Enter email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Id Required" ControlToValidate="emailid" Display="Dynamic" ValidationGroup="log-in"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lable_password" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="password" CssClass="form-control" TextMode="Password" placeholder="Password" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" ControlToValidate="password" Display="Dynamic" ValidationGroup="log-in"></asp:RequiredFieldValidator>

                        </div>
                        <p class="text-right">
                            <asp:HyperLink ID="ForgotPassword" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                        </p>
                        <p class="text-right">
                            <asp:HyperLink ID="gammerprofile" runat="server" Visible="False">Profile</asp:HyperLink>
                        </p>
                    </div>
                    <div class="modal-footer">
                        <a href="#" data-dismiss="modal" class="btn">Close</a>
                        <asp:Button CssClass="btn btn-primary" ID="logout" runat="server" Text="Log-out" OnClick="logout_Click" Visible="false" />
                        <asp:Button CssClass="btn btn-primary" ID="login" runat="server" Text="Log-in" OnClick="login_Click" ValidationGroup="log-in" />
                    </div>
                </div>
            </div>
        </div>

        <br />
        <br />


        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="img-responsive center-block" src="Images/carousel-dota2new.jpg" alt="..." />
                    <div class="carousel-caption">
                    </div>
                </div>

                <div class="item">
                    <img class="img-responsive center-block" src="Images/carousel-cs-go.jpg" alt="..." />
                    <div class="carousel-caption">
                    </div>
                </div>

                <div class="item">
                    <img class="img-responsive center-block" src="Images/carousel-gta5.jpg" alt="..." />
                    <div class="carousel-caption">
                    </div>
                </div>

                <div class="item">
                    <img class="img-responsive center-block" src="Images/carousel-mw3-bf3.jpg" alt="..." />
                    <div class="carousel-caption">
                    </div>
                </div>

            </div>

            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>


        <br />

        <h1 class="center">Grand opening on 25th OCTOBER</h1>
        <div class="center">
            <p>Book now to enjoy the whole new feel to gaming</p>
            <asp:Button ID="Book" CssClass="btn-lg btn-success" runat="server" Text="Book now" OnClick="Book_Click" />
            <ajaxToolkit:HoverMenuExtender runat="server" DynamicServicePath="" BehaviorID="Book_HoverMenuExtender" TargetControlID="Book" ID="Book_HoverMenuExtender" PopupControlID="Panel1" PopupPosition="Right" OffsetX="10"></ajaxToolkit:HoverMenuExtender>
            <asp:Panel ID="Panel1" CssClass="alert-info" runat="server" BorderStyle="Solid">
                    <b>Booking is not allowed between 11:30pm to 12:00</b>
                    <br />
                </asp:Panel>
        </div>
        <!-- New Releases -->
        <h2 class="center">New Releases</h2>
        <br />


        <div class="container center">
            <div class="row">

                <div class="col col-lg-4">
                    <img class="img-thumbnail" src="Images/modal-FIFA-16.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                    <h3>Fifa-16</h3>
                    <h4>Available for PS3, Xbox, PS4</h4>
                    <p>
                        FIFA 16 is an upcoming association football simulation video game published by EA Sports for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360, Xbox One, Android and iOS. The game is the first in the FIFA series to include female players. It is also the first in which the players on the covers were chosen by popular vote, including the first women to appear on cover
                    </p>
                    <p>
                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-Fifa-16">Read More &raquo;</button>
                    </p>
                    <!-- Modal -->
                    <div id="Modal-Fifa-16" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Fifa-16</h4>
                                </div>
                                <div class="modal-body">
                                    <p>
                                        <img class="img-thumbnail" src="Images/modal-FIFA-16.jpg" width="768" height="432" />
                                    </p>
                                    <br />
                                    <p>FIFA 16 is an upcoming association football simulation video game published by EA Sports for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360, Xbox One, Android and iOS. The game is the first in the FIFA series to include female players. It is also the first in which the players on the covers were chosen by popular vote, including the first women to appear on the cover.</p>
                                    <p>For the first time in the series, FIFA 16 will include female footballers, with 12 women's national teams: Australia, Brazil, Canada, China, England, France, Germany, Italy, Mexico, Spain, Sweden, and the United States. David Rutter, vice president of the company, stated that "Bringing some of the best women's players and teams in the world to our franchise is a massive event for EA Sports". In February 2013, Spanish captain Verónica Boquete had used a Change.org petition to lobby FIFA to include female players, earning over 20,000 signatures in its first 24 hours.</p>
                                    <p>Players will not be able to create mixed-gender teams or play women's teams against men's teams, but they will have the chance to use women's teams in Match Day (offline friendlies), online friendlies and an offline tournament modeled after the FIFA Women's World Cup.</p>
                                    <p>The game contains 78 stadiums, including 50 real-world venues. Fratton Park, home of Portsmouth, was added to in honour of Portsmouth fan Simon Humber, Creative Director of the FIFA series, who died of cancer in 2015.</p>
                                    <p>A new Training Mode was also added to Career Mode allowing the player to develop footballers in the team of which they are managing without actually playing them. These are in the form of skill games, a feature added to the series previously. It allows the player to set a specific focus on which the footballer should develop on meaning that he will grow specifically according to the chosen focus attribute. Doing this also increases the transfer value of the player.</p>
                                    <p>New friendly enhancements were added to the mode with players now able to pick a friendly tournament before a season starts. Winning these friendly tournaments gives the player a reward in the form of a transfer budget boost. Also, unlimited substitutions are permitted when playing these friendly games. Other features include two-year loans, many realistic transfer budget enhancements, improved player values as well as the ability to sign free agents out of transfer windows</p>
                                    <p>New features that are exclusive to the PlayStation 4, Xbox One and PC versions of the game will involve a licensed presentation package for the Bundesliga, new weather and kick-off time variations, and the use of vanishing spray during certain matches.</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>


                <div class="col col-lg-4">
                    <img class="img-thumbnail" src="Images/dota-2-official.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                    <h3>Dota 2</h3>
                    <p>
                        Dota is a competitive game of action and strategy, played both professionally and casually by millions of passionate fans worldwide. Players pick from a pool of over a hundred heroes, forming two teams of five players. Radiant heroes then battle their Dire counterparts to control a gorgeous fantasy landscape, waging campaigns of cunning, stealth, and outright warfare.
                    </p>
                    <p>
                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-Dota2">Read More &raquo;</button>
                    </p>
                    <!-- Modal -->
                    <div id="Modal-Dota2" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Dota2</h4>
                                </div>
                                <div class="modal-body">
                                    <p>
                                        <img class="img-thumbnail" src="Images/dota-2-official.jpg" width="768" height="432" />
                                    </p>
                                    <br />
                                    <p>Dota is a competitive game of action and strategy, played both professionally and casually by millions of passionate fans worldwide. Players pick from a pool of over a hundred heroes, forming two teams of five players. Radiant heroes then battle their Dire counterparts to control a gorgeous fantasy landscape, waging campaigns of cunning, stealth, and outright warfare.</p>
                                    <p>Irresistibly colorful on the surface, Dota is a game of infinite depth and complexity. Every hero has an array of skills and abilities that combine with the skills of their allies in unexpected ways, to ensure that no game is ever remotely alike. This is one of the reasons that the Dota phenomenon has continued to grow. Originating as a fan-made Warcraft 3 modification, Dota was an instant underground hit. After coming to Valve, the original community developers have bridged the gap to a more inclusive audience, so that the rest of the world can experience the same core gameplay, but with the level of polish that only Valve can provide.</p>
                                    <h4>Get a taste of the game that has enthralled millions.</h4>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>


                <div class="col col-lg-4">
                    <img class="img-thumbnail" src="Images/modal-gta5.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                    <h3>Grand Theft Auto V</h3>
                    <p>Grand Theft Auto V is an open world, action-adventure video game developed by Rockstar North and published by Rockstar Games.The game is the first main entry in the Grand Theft Auto series since 2008's. Set within the fictional state of San Andreas, the single-player story follows three criminals and their efforts to commit heists while under pressure from a government agency</p>
                    <p>
                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-gta5">Read More &raquo;</button>
                    </p>
                    <!-- Modal -->
                    <div id="Modal-gta5" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Grand Theft Auto V</h4>
                                </div>
                                <div class="modal-body">
                                    <p>
                                        <img class="img-thumbnail" src="Images/modal-gta5.jpg" width="768" height="432" />
                                    </p>
                                    <br />
                                    <p>Grand Theft Auto V is an open world, action-adventure video game developed by Rockstar North and published by Rockstar Games. It was released on 17 September 2013 for the PlayStation 3 and Xbox 360, on 18 November 2014 for the PlayStation 4 and Xbox One, and on 14 April 2015 for Microsoft Windows. The game is the first main entry in the Grand Theft Auto series since 2008's Grand Theft Auto IV. Set within the fictional state of San Andreas (based on Southern California), the single-player story follows three criminals and their efforts to commit heists while under pressure from a government agency. The open world design lets players freely roam San Andreas, which includes open countryside and the fictional city of Los Santos (based on Los Angeles).</p>
                                    <p>The game is played from either a third-person or first-person view[c] and its world is navigated on foot or by vehicle. Players control the three lead protagonists throughout the single-player mode, switching between them both during and outside of missions. The story is centred on the heist sequences, and many of the missions involve shooting and driving gameplay. Players who commit crimes may incite a response from law enforcement agencies, measured by a "wanted" system that governs the aggression of their response. Grand Theft Auto Online, the online multiplayer mode, lets up to 30 players explore the open world and engage in cooperative or competitive game matches.</p>
                                    <h3>Grand Theft Auto Online</h3>
                                    <p>Developed in tandem with the single-player mode, the online multiplayer mode Grand Theft Auto Online was conceived as a separate experience to be played in a continually evolving world.[145] Up to 30 players[p] freely roam across a re-creation of the single-player world and enter lobbies to complete jobs (story-driven competitive and cooperative modes).[146] The Content Creator toolset lets players create their own parameters for custom jobs, like racetracks and deathmatch weapon spawn points.[148] Players may band together in organised player teams called crews to complete jobs together. Rockstar Games Social Club extends crews formed in Max Payne 3‍‍ '​‍s multiplayer mode to that of Grand Theft Auto Online. Players can create their own crews and join up to five total. Crews win multiplayer matches to earn experience points and climb online leaderboards.</p>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>


            </div>
        </div>


        <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2015 Virtual Highs &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">Games</a> &middot; <a href="#">Gallery</a> &middot; <a href="#">Events</a> &middot; <a href="SignUp.aspx">Sign Up</a></p>
                <p>All trademarks, logos, images and articles belong to their respective owners. All rights reserved.</p>
                <p>Website developed by Archit Bhatnagar</p>
            </div>
        </footer>


    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

</body>
</html>
