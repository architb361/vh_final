<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
                            <li class="active"><a href="Default.aspx">Home</a></li>
                            <li><a href="#">Games</a></li>
                            <li><a href="#">Gallery</a></li>
                            <li><a href="#">Events</a></li>
                            <li><a href="#">Sign Up</a></li>
                        </ul>
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
            <p>Book now to enjoy the whole new feel of gamming</p>
            <asp:Button ID="Book" CssClass="btn btn-success" runat="server" Text="Book now" />
        </div>
        <!-- New Releases -->
        <h2 class="center">Most Popular Played</h2>
        <br />


        <div class="container center">
            <div class="row">

                <div class="col col-lg-4">
                    <img class="img-thumbnail" src="Images/modal-Counter_Strike_Global_Offensive.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                    <h3>Counter Strike:Global Offensive</h3>
                    <p>
                        Counter-Strike: Global Offensive (CS: GO) will expand upon the team-based action gameplay that it pioneered when it was launched 14 years ago. CS: GO features new maps, characters, and weapons and delivers updated versions of the classic CS content (de_dust, etc.). In addition, CS: GO will introduce new gameplay modes, matchmaking, leader boards, and more.
                    </p>
                    <p>
                        <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-CSGO">Read More &raquo;</button>
                    </p>
                    <!-- Modal -->
                    <div id="Modal-CSGO" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Counter Strike:Global Offensive</h4>
                                </div>
                                <div class="modal-body">
                                    <p>
                                        <img class="img-thumbnail" src="Images/modal-Counter_Strike_Global_Offensive.jpg" width="768" height="432" />
                                    </p>
                                    <br />
                                    <p>Counter-Strike: Global Offensive (CS:GO) expands upon the team-based action gameplay that the franchise pioneered when it was launched 12 years ago. CS:GO features new maps, characters, and weapons and delivers updated versions of the classic CS content (de_dust, etc.). In addition, CS:GO introduces new gameplay modes, matchmaking, leader boards, and more.</p>
                                    <h3>Game Modes</h3>
                                    <h4>Classic: Competitive</h4>
                                    <p>This is the classic gameplay that made Counter-Strike famous. Queue up and join a 5v5 best-of-30 match using standard competitive Counter-Strike rules on one of the classic maps. You can join a match on your own, or form a team and enter a match as a unit.</p>
                                    <h4>Classic: Casual</h4>
                                    <p>Ready to play some Counter-Strike, but don’t want to commit to a full match? Find a casual match and play at your own pace. In Casual mode, players automatically receive body armor and defusal kits and gain bonus rewards for kills.</p>
                                    <h4>Demolition</h4>
                                    <p>In demolition mode, players take turns attacking and defending a single bombsite in a series of maps designed for fast-paced gameplay. Players are automatically granted a starting weapon, and advance through a sequence of firearms when they register a kill. If you’re up to the challenge, you can try to register a kill each round and reach the ultimate weapons, powerful sniper rifles!</p>
                                    <h4>Arms Race</h4>
                                    <p>Arms race is a gun-progression mode featuring instant respawning and a ton of close-quarter combat. Players gain new weapons immediately after registering a kill as they work their way through each weapon in the game. Get a kill with the final weapon, a golden knife, and win the match.</p>
                                    <h3>History</h3>
                                    <p>In 1999 Counter-Strike was released as a mod for Half-Life. As Counter-Strike progressed from a beta to a full release, it refined the classic gameplay that has come to define competitive shooters and produced a dedicated community that has followed the game for over a decade.Through each of its iterations – 1.6, Source, and Global Offensive – Counter-Strike has been the de facto benchmark of a player’s skill. Teams from around the world are constantly demonstrating their ability and strategies in local, regional, and international tournaments.</p>
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
