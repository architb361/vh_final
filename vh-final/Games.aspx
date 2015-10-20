<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Games.aspx.cs" Inherits="Games" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <title>Games</title>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
        function callAlert(msg) {
            alert(msg);
        }
    </script>
    <script type="text/javascript">
        function myFunction(g_name) {
            document.getElementById("login-logout").innerHTML = g_name;
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
                            <li class="active"><a href="#">Games</a></li>
                            <li><a href="Gallery.aspx">Gallery</a></li>
                            <li><a href="Events.aspx">Events</a></li>
                            <li><a href="SignUp.aspx">Sign Up</a></li>
                            <li><a id="login-logout" href="#myModal" data-toggle="modal" data-target="#myModal">User</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                        <h4 class="modal-title">Log-in</h4>
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
                            <asp:HyperLink ID="ForgotPassword" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink></p>
                        <p class="text-right">
                            <asp:HyperLink ID="gammerprofile" runat="server" Visible="False">Profile</asp:HyperLink></p>
                    </div>
                    <div class="modal-footer">
                        <a href="#" data-dismiss="modal" class="btn">Close</a>
                        <asp:Button CssClass="btn btn-primary" ID="logout" runat="server" Text="Log-out" OnClick="logout_Click" Visible="false" />
                        <asp:Button CssClass="btn btn-primary" ID="login" runat="server" Text="Log-in" OnClick="login_Click" ValidationGroup="log-in" />
                    </div>
                </div>
            </div>
        </div>
        <div>
            <div class="container center">
                <div class="row">

                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-Counter_Strike_Global_Offensive.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>Counter Strike:Global Offensive</h3>
                        <h4>Available for PC</h4>
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
                        <h4>Available for PC</h4>
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
                        <h4>Available for PC, PS4</h4>
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

            <br />
            <br />

            <div class="container center">
                <div class="row">

                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-warframe.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>Warframe</h3>
                        <h4>Available for PC</h4>
                        <p>In Warframe, players control members of the Tenno, a race of ancient warriors who have awoken from centuries of cryosleep to find themselves at war with the Grineer, a race of militarized humanoid clones; the Corpus, a mega-corporation with advanced robotics and laser technology; and the Infested, disfigured victims of the Technocyte infection.</p>
                        <p>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-warframe">Read More &raquo;</button>
                        </p>
                        <!-- Modal -->
                        <div id="Modal-warframe" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Warframe</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            <img class="img-thumbnail" src="Images/modal-warframe.jpg" width="768" height="432" />
                                        </p>
                                        <br />
                                        <p>In Warframe, players control members of the Tenno, a race of ancient warriors who have awoken from centuries of cryosleep to find themselves at war with the Grineer, a race of militarized humanoid clones; the Corpus, a mega-corporation with advanced robotics and laser technology; and the Infested, disfigured victims of the Technocyte infection. To fight back, the Tenno use advanced exo-armor with unique abilities—the eponymous Warframes.[2] Available missions are scattered across the planets of the solar system, the moons Phobos and Europa and dwarf planets Pluto, Ceres, Eris and Sedna. Additionally, players can also access missions set in a pocket dimension known as "The Orokin Void" or "The Orokin Derelict" through the use of keys.</p>
                                        <p>Up to four players work together to complete missions, such as eliminating enemies, retrieving data from terminals, assassinating high ranking/dangerous targets, defending an artifact, or surviving as long as possible. Players wear a battlesuit called a Warframe, each with its own set of abilities and statistics; and are equipped with three weapons—a primary weapon (such as a rifle, bow, or shotgun), a secondary weapon (typically a pistol, but sometimes ranged bladed weapons like kunai), and a melee weapon (such as swords, axes, and hammers). There are also Companions that can accompany Tenno on missions, each with their own powers. These can either float near the Tenno's head, or following a series of missions, players can earn their own Kubrow, a hound-like animal with a horned nose. Players earn Affinity (experience points) for killing enemies and completing challenges and missions, which allows them to level up their weapons, armor, and companions. All of these can be upgraded with "mods", that drop from enemies; these can be installed, removed and upgraded before and after missions, and the higher the Affinity rank of any one piece of equipment, the more mods it can accommodate.</p>
                                        <p>The camera is positioned over the shoulder for third-person shooting. The player can jump, sprint, slide, and roll, as well as combine techniques to quickly move throughout the level and avoid enemy shots. The game also allows players to utilize parkour techniques to evade enemies, bypass obstacles or gain access to secret areas. Maps are generated procedurally with prebuilt rooms connected together so that no levels have the same layout. At times, the enemy faction can initiate a lockdown of the area, forcing players to hack security terminals by completing a puzzle minigame within a small time limit.</p>
                                        <p>Credits, ammo, resources, and mods can be found in set locations, such as lockers and destructible containers, as well as dropped by enemies. New weapons, Warframes, and equipment can be purchased in the market (either the items themselves or their blueprints), using either Credits earned in-game, or Platinum purchased via microtransaction.[3] Also, some blueprints are dropped by certain enemies. Blueprints can be constructed using resources found during gameplay.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-teamfortress2.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>Team Fortress 2</h3>
                        <h4>Available for PC</h4>
                        <p>Team Fortress 2 is a team-based first-person shooter multiplayer video game developed by Valve Corporation. It is the sequel to the 1996 mod Team Fortress for Quake and its 1999 remake.In Team Fortress 2, players join one of two teams comprising nine character classes, battling in a variety of game modes including capture the flag and king of the hill.</p>

                        <p>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-TF2">Read More &raquo;</button>
                        </p>
                        <!-- Modal -->
                        <div id="Modal-TF2" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Team Fortress 2</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            <img class="img-thumbnail" src="Images/modal-teamfortress2.jpg" width="768" height="432" />
                                        </p>
                                        <br />
                                        <p>In Team Fortress 2, players join one of two teams comprising nine character classes, battling in a variety of game modes including capture the flag and king of the hill. ike its predecessors, Team Fortress 2 is focused around two opposing teams competing for a combat-based principal objective.[10] In the game's fiction, the teams are composed of mercenaries hired by two feuding brothers to protect the company assets belonging to one brother while trying to destroy those of the other; the teams are thus represented by the names of these companies: Reliable Excavation & Demolition (RED) and Builders League United (BLU). Players can choose to play as one of nine character classes in these teams, each with his own unique strengths, weaknesses, and weapons. Although the abilities of a number of classes have changed from earlier Team Fortress incarnations, the basic elements of each class have remained, that being one primary weapon, one secondary weapon, and one melee weapon.[11][12] The game was released with six official maps, although 44 extra maps, 9 arena maps, 8 king of the hill maps, and various other map types have been included in subsequent updates</p>
                                        <p>Team Fortress 2 is also played competitively, through multiple unofficial leagues. The North American league ESEA supports a paid Team Fortress 2 league, with $10,080 in prizes for the top teams in 2012.[39] In addition, TF2 is played in multiple free-to-play leagues including UGC (United Gaming Clans), ETF2L in Europe.[40][41] and AsiaFortress in Asia[42] Competitive Team Fortress 2 is played mostly in one of two gamemodes: Highlander (one of each class, 9 players per team) or 6v6 (2 scouts, 2 soldiers, 1 medic, and 1 demoman, with other classes used in certain situations). While formalized competitive gameplay is very different from normal TF2, it offers an environment with a much higher level of teamwork than in public servers (also known as "pubs"). Most teams use a VOIP program to communicate, and use a combination of strategy, communication, and aiming ability to win against other teams. Many competitive leagues also feature an item banlist, in order to speed up gameplay and remove untested or undesirable strategies from matches.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-FIFA-16.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>Fifa-16</h3>
                        <h4>Available for PS3, Xbox, PS4</h4>
                        <p>
                            FIFA 16 is an upcoming association football simulation video game published by EA Sports for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360, Xbox One, Android and iOS. The game is the first in the FIFA series to include female players. It is also the first in which the players on the covers were chosen by popular vote including the first women to appear on cover
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
                                        <p>FIFA 16 is an upcoming association football simulation video game published by EA Sports for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360, Xbox One, Android and iOS. The game is the first in the FIFA series to include female players. It is also the first in which the players on the covers were chosen by popular vote, including the first women to appear on the cover,including the first women to appear.</p>
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

                </div>
            </div>

            <br />
            <br />

            <div class="container center">
                <div class="row">

                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-call-of-duty-advanced-warfare-wallpaper-5.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>Call of Duty: Advanced Warfare</h3>
                        <h4>Available for PC</h4>
                        <p>Call of Duty: Advanced Warfare is a military science fiction war thriller first-person shooter video game published by Activision.  The game features several significant changes; unlike other installments, Advanced Warfare does not use a traditional heads-up display (HUD); instead, all information is relayed to the player via holographic projections from the weapon equipped.</p>
                        <p>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-CODAW">Read More &raquo;</button>
                        </p>
                        <!-- Modal -->
                        <div id="Modal-CODAW" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Call of Duty: Advanced Warfare</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            <img class="img-thumbnail" src="Images/modal-call-of-duty-advanced-warfare-wallpaper-5.jpg" width="768" height="432" />
                                        </p>
                                        <br />
                                        <p>Advanced Warfare, like the other Call of Duty titles, is presented in a first-person shooter perspective. The game features several significant changes; unlike other installments, Advanced Warfare does not use a traditional heads-up display (HUD); instead, all information is relayed to the player via holographic projections from the weapon equipped. The general gunplay remains unchanged, apart from new mechanics, such as 'Exo' movements. These Exo movements are performed from the Exoskeleton, which can boost, dash, and sky jump. The game is the first in the Call of Duty series that allows the player to choose differing types of conventional weaponry; for example, the game features regular conventional firearms, but the player can choose to use laser or directed energy weaponry, both of which have differing attributes. In addition to Exo movements, the game features different Exo abilities, such as Exo Cloak, which allows players to turn transparent for stealth for a period of time.</p>
                                        <h4>Campaing</h4>
                                        <p>The single-player campaign features one sole playable character, Jack Mitchell, as opposed to multiple characters in previous Call of Duty games. It makes use of pre-rendered cinematic cut scenes, similar to Call of Duty: Black Ops II, assisting in the story telling aspect of the campaign. After each mission, the player is given a certain amount of upgrade points that can be used to upgrade the Exo suit or weapons. The player can upgrade detection, armor, resistance, tactical, lethal grenade, sprint, recoil, flinch, reload, quick aim, and battery. The player may earn additional points by completing specific side objectives, one of which is collecting the game's collectable 'Intel'. The player can switch between different grenades, all of which possess distinctly different abilities.</p>
                                        <h4>Multiplayer</h4>
                                        <p>Apart from the Exo movement, Advanced Warfare‍ '​s multiplayer retains certain similarities to previous Call of Duty titles. The Pick 10 system in Black Ops II returns as Pick 13, allowing players to pick weapons, attachments, perks and score-streaks within a total of 13 allocation points. Score-streaks are also upgradable with different modules, allowing for additional abilities/effects, at an extra score cost. Advanced Warfare introduces weapon variants, which contain various different stats compared to the base weapons. This allows the game to contain over 350 weapons, both variants and base versions. Supply drops allow players to earn new gears through playing the game. The content of each supply drop is randomized, and can range from weapon variants to player customization items, as well as bonus experience points (XPs) time. Players can complete daily challenges to earn supply drops.</p>
                                        <h3>Exo Survival</h3>
                                        <p>Exo Survival was first introduced as CGCGMz‍ '​s cooperative game mode. Considered to be a new version of the Survival Mode from Modern Warfare 3, Exo Survival allows up to four players to engage in a wave-based match against A.I.-controlled enemies. Players can choose from four different classes of Exo, which grant different abilities and score-streaks. Weapons and score-streaks can be upgraded throughout each match. After a certain number of rounds, players are given objectives to perform, such as defending a location, or collecting intel from fallen enemies. Completing the objectives grant players bonus upgrade points; not completing them result in the players being punished, such as having their Exo suits temporarily disabled or activating hostile security turrets. Exo Survival is played on the game's multiplayer maps, with a total of 13 maps divived into four tiers. Each tier can be unlocked by playing the previous tier and survive a specific number of rounds.</p>
                                        <h4>Exo Zombies</h4>
                                        <p>
                                            Exo Zombies was first teased at the end of the Exo Survival map "Riot", and was officially announced with the Havoc downloadable content (DLC) pack. The game features zombies that utilize exo suits, giving them more maneuverability.
                                            <br />
                                            The game mode stars five brand new characters. Exo Zombies plays similarly to the original Zombies game mode that has been featured in Treyarch's Call of Duty games since Call of Duty: World at War: up to four players have to survive against endless waves of undead enemies, with an optional story quest, or easter egg, that can be done at any time during a match. Players earn points by injuring and/or killing zombies, and use them to open doors/clear obstacles, or buy new weapons and perks to strengthen their chance of survival. Players can also acquire exo suits in the game mode, allowing them to utilize new movements.<br />
                                            Different types of zombies are present in the game, including Charger zombies that have increased movement speed, and Electro-magnetic zombies (EMZs) that can disable the players' Exo suit in close proximity. With the release of the Reckoning DLC pack, a new hardcore mode called "Double Feature" was also introduced, which can only be unlocked by finishing the story quest of the final map "Descent". In Double Feature, nearly all HUD elements are removed (except the point counter), zombies have more health and only give points to players upon death, players only get one life per round, and the game is played with a black-and-white filter to mimic horror movies.<br />
                                            The first Exo Zombies map, " ", was released as part of the Havoc DLC map pack. The second map, "Infection", was released as part of the Ascendance DLC pack. The third map, "Carrier", was released as part of the Supremacy DLC pack.[27] The final map, "Descent", was released as part of the Reckoning DLC pack
                                        </p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-League-of-Legends-Wallpapers-7.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>League-of-Legends</h3>
                        <h4>Available for PC</h4>
                        <p>League of Legends (LoL) is a multiplayer online battle arena, real-time strategy video game developed and published by Riot Games, for Microsoft Windows[1] and Mac OS X. It is a free-to-play game supported by micro-transactions and inspired by the mod, Defense of the Ancients[2] for the video game Warcraft III: The Frozen Throne.</p>

                        <p>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-League-of-Legends">Read More &raquo;</button>
                        </p>
                        <!-- Modal -->
                        <div id="Modal-League-of-Legends" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">League Of Leagends</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            <img class="img-thumbnail" src="Images/modal-League-of-Legends-Wallpapers-7.jpg" width="768" height="432" />
                                        </p>
                                        <br />
                                        <p>League of Legends (LoL) is a multiplayer online battle arena, real-time strategy video game developed and published by Riot Games, for Microsoft Windows and Mac OS X. It is a free-to-play game supported by micro-transactions and inspired by the mod, Defense of the Ancients for the video game Warcraft III: The Frozen Throne</p>
                                        <p>In League of Legends, players assume the role of an unseen "summoner" that controls a "champion" with unique abilities and battle against a team of other players or computer-controlled champions. The goal is usually to destroy the opposing team's "nexus", a structure which lies at the heart of a base protected by defensive structures. Each League of Legends match is discrete, with all champions starting off fairly weak but increasing in strength by accumulating items and experience over the course of the game.</p>
                                        <p>League of Legends was generally well received at release, and it has grown in popularity in the years since. By July 2012, League of Legends was the most played PC game in North America and Europe in terms of the number of hours played.[4] As of January 2014, over 67 million people play League of Legends per month, 27 million per day, and over 7.5 million concurrently during peak hours.</p>
                                        <p>League of Legends is a 3D, third-person multiplayer online battle arena (MOBA) game.[10] The game consists of four game modes: Summoner's Rift, Twisted Treeline, Crystal Scar, and Howling Abyss. Players compete in matches, typically lasting 20–60 minutes. In each game mode teams work together to accomplish a terminal objective and achieve a victory condition, either to destroy a central objective controlled by the enemy team, known as a Nexus, or to capture and hold the most strategic points for the longest period of time. Each game mode includes a variety of smaller intermediate objectives that give players and teams advantages in achieving overall victory.</p>
                                        <p>In all game modes players control characters called champions, chosen or assigned every match, who each have a set of unique abilities.[12] Champions begin every match at a low level (level one for Summoner's rift and Twisted Treeline, and level three for Crystal Scar and Howling Abyss), and then gain experience over the course of the match to achieve a maximum level of 18. Gaining champion levels in matches allows players to unlock their champion's special abilities and augment them in a number of ways unique to each character.</p>
                                        <p>Players also begin each match with a low amount of gold, and can earn additional gold throughout the match in a variety of ways: by killing non-player characters known as minions and monsters, by killing or helping to kill enemy players, by destroying enemy structures, passively over time, and through unique item interactions or champion abilities. This gold can then be spent throughout the match to buy in-game items that further augment each champion's abilities and game play in a variety of ways. Champion experience, gold earned, and items bought are specific to each match and do not carry over to subsequent matches. Thus, all players begin each match on more-or-less equal footing relative to their opposing team.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-world of tanks.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>World of Tanks</h3>
                        <h4>Available for PC</h4>
                        <p>World of Tanks is a massively multiplayer online game developed by Belarusian-Cypriot company Wargaming. It is built upon a freemium business model where the game is free-to-play, but participants also have the option of paying a fee for use of "premium" features. The focus is on player vs. player gameplay with each player controlling an armored vehicle.</p>
                        <p>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-World-of-Tanks">Read More &raquo;</button>
                        </p>
                        <!-- Modal -->
                        <div id="Modal-World-of-Tanks" class="modal fade" role="dialog">
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
                                        <p>FIFA 16 is an upcoming association football simulation video game published by EA Sports for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360, Xbox One, Android and iOS. The game is the first in the FIFA series to include female players. It is also the first in which the players on the covers were chosen by popular vote, including the first women to appear on the cover,including the first women to appear.</p>
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

                </div>
            </div>


            <br />
            <br />

            <div class="container center">
                <div class="row">

                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-world of warcraft.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>World of Warcraft</h3>
                        <h4>Available for PC</h4>
                        <p>World of Warcraft (WoW) is a massively multiplayer online role-playing game (MMORPG) created in 2004 by Blizzard Entertainment. It is the fourth released game set in the fantasy Warcraft universe, which was first introduced by Warcraft: Orcs & Humans in 1994. World of Warcraft takes place within the Warcraft world of Azeroth. The game was released on November 23, 2004.</p>
                        <p>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-WOWC">Read More &raquo;</button>
                        </p>
                        <!-- Modal -->
                        <div id="Modal-WOWC" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">World of Warcraft</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            <img class="img-thumbnail" src="Images/modal-world of warcraft.jpg" width="768" height="432" />
                                        </p>
                                        <br />
                                        <p>World of Warcraft (WoW) is a massively multiplayer online role-playing game (MMORPG) created in 2004 by Blizzard Entertainment. It is the fourth released game set in the fantasy Warcraft universe, which was first introduced by Warcraft: Orcs & Humans in 1994.[3] World of Warcraft takes place within the Warcraft world of Azeroth, approximately four years after the events at the conclusion of Blizzard's previous Warcraft release, Warcraft III: The Frozen Throne. Blizzard Entertainment announced World of Warcraft on September 2, 2001.[5] The game was released on November 23, 2004, on the 10th anniversary of the Warcraft franchise.</p>
                                        <p>The first expansion set of the game, The Burning Crusade, was released on January 16, 2007.[6] The second expansion set, Wrath of the Lich King, was released on November 13, 2008.[7] The third expansion set, Cataclysm, was released on December 7, 2010. The fourth expansion set, Mists of Pandaria, was released on September 25, 2012.[8] The fifth expansion set, Warlords of Draenor, was released on November 13, 2014.[9] The sixth expansion set, Legion, was announced at Gamescom 2015, on August 6, 2015</p>
                                        <p>With 5.6 million subscribers as of the end of June 2015,[11][12] World of Warcraft is currently the world's most-subscribed MMORPG,[7][13] and holds the Guinness World Record for the most popular MMORPG by subscribers.[14][15][16][17] Having grossed over 10 billion dollars as of July 2012, it is also the highest grossing video game of all time.[18] In January 2014, it was announced that more than 100 million accounts had been created over the game's lifetime.</p>
                                        <p>World of Warcraft is set in the same universe as the Warcraft series of real-time strategy games, and has a similar art direction.[20] World of Warcraft contains elements from fantasy, steampunk, and science fiction: such as gryphons, dragons, and elves; steam-powered automata; zombies, werewolves, and other horror monsters; as well as time travel, spaceships, and alien worlds.</p>
                                        <p>World of Warcraft takes place in a 3D representation of the Warcraft universe that players can interact with through their characters. The game world initially consisted of the two continents in Azeroth: Kalimdor and the Eastern Kingdoms. Four separate expansions later added to the game's playable area the realms of Outland and Draenor and the continents of Northrend and Pandaria. As a player explores new locations, different routes and means of transportation become available. Players can access "flight masters" in newly discovered locations to fly to previously discovered locations in other parts of the world.[37] Players can also use boats, zeppelins, or portals to move from one continent to another. Although the game world remains relatively similar from day to day, seasonal events reflecting real world events, such as Halloween,[38] Christmas, Children's Week,[35] Easter, and Midsummer have been represented in the game world. Locations also have variable weather including, among other things, rain, snow, and dust storms.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-The Witcher Wild Hunt.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>The Witcher 3: Wild Hunt</h3>
                        <h4>Available for PC</h4>
                        <p>The Witcher 3: Wild Hunt is an action role-playing video game set in an open world environment, developed by video game developer CD Projekt RED. Announced in February 2013, it was released for Microsoft Windows, PlayStation 4, and Xbox One on 19 May 2015. The game is the third in the series, preceded by The Witcher and The Witcher 2: Assassins of Kings.</p>

                        <p>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-TWWH">Read More &raquo;</button>
                        </p>
                        <!-- Modal -->
                        <div id="Modal-TWWH" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">The Witcher 3: Wild Hunt</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            <img class="img-thumbnail" src="Images/modal-The Witcher Wild Hunt.jpg" width="768" height="432" />
                                        </p>
                                        <br />
                                        <p>The Witcher 3: Wild Hunt (Polish: Wiedźmin 3: Dziki Gon) is an action role-playing video game set in an open world environment, developed by video game developer CD Projekt RED. Announced in February 2013, it was released for Microsoft Windows, PlayStation 4, and Xbox One on 19 May 2015. The game is the third in the series, preceded by The Witcher and The Witcher 2: Assassins of Kings, which are based on the series of fantasy novels by author Andrzej Sapkowski.</p>
                                        <p>Played in a third-person perspective, players control protagonist Geralt of Rivia, a Witcher who sets out on a long journey through the large land of Northern Kingdoms. Players battle against the world's many dangers using swords and magic, while interacting with non-player characters and completing side quests and main missions all to progress through the story. Players mostly travel by foot, or mounted on Geralt's horse Roach.</p>
                                        <h5>The game was met with acclaim from critics and has sold over 6 million copies.</h5>
                                        <h4>Gameplay</h4>
                                        <p>The Witcher 3: Wild Hunt is more than "30.0 times larger" than previous Witcher games, requiring players to sail by boat to some locations and ride by horseback to others. However, fast travelling around the areas of known locations is also possible. The Witcher 3 has been described as "20% bigger than Skyrim". Many actions the player performs affect the world; many of the quests have a number of options on how to complete them, and the outcomes differ. CD Projekt RED anticipates approximately 100 hours for the completion of the game, 50 of them belonging to side quests, and 50 belonging to the main story line.</p>
                                        <p>While similar to the previous Witcher games, Wild Hunt improved on several aspects from past games. Combat revolves around an action role-playing game system alongside the use of magic. The fighting system from previous games was significantly revamped. Wild Hunt introduces some new mechanics, such as Witcher-sense, combat on horseback and at sea, swimming underwater, and the use of a crossbow. Additionally, Geralt can jump, climb, and vault over smaller obstacles. The climbing mechanics were described as "not exactly" like Assassin's Creed, but "similar to what we have in Uncharted". Item creation and potion brewing still remain as in previous games, but have been modified from The Witcher 2 to be less unforgiving. Traps from The Witcher 2 have been entirely omitted. The same five Witcher signs returned but slightly modified, with each one having an alternative form that can be used.</p>
                                        <p>The game features responsive, advanced artificial intelligence and dynamic environments. The day and night cycle influences some monsters and their powers, similar to the common mythological motif of a werewolf gaining powers during the night of a full moon. The game also features a dynamic beard growth system, in which the beard of the playable character Geralt grows as he spends time in the world.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                    <div class="col col-lg-4">
                        <img class="img-thumbnail" src="Images/modal-Farcry3.jpg" alt="modal-Counter_Strike_Global_Offensive" width="320" height="180" />
                        <h3>Far Cry 3</h3>
                        <h4>Available for PC</h4>
                        <p>Far Cry 3 is an open world action-adventure first-person shooter video game developed by Ubisoft Montreal in conjunction with Ubisoft Massive, Ubisoft Red Storm, Ubisoft Shanghai, and Ubisoft Reflections, published by Ubisoft for Microsoft Windows, Xbox 360, and PlayStation 3. The third installment in the Far Cry series, Far Cry 3 was critically acclaimed upon release.</p>
                        <p>
                            <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Modal-Farcry3">Read More &raquo;</button>
                        </p>
                        <!-- Modal -->
                        <div id="Modal-Farcry3" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Far Cry 3</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>
                                            <img class="img-thumbnail" src="Images/modal-Farcry3.jpg" width="768" height="432" />
                                        </p>
                                        <br />
                                        <p>Far Cry 3 is an open world action-adventure first-person shooter video game developed by Ubisoft Montreal in conjunction with Ubisoft Massive, Ubisoft Red Storm, Ubisoft Shanghai, and Ubisoft Reflections, published by Ubisoft for Microsoft Windows, Xbox 360, and PlayStation 3.</p>
                                        <p>Far Cry 3 is set on a tropical island between the Indian and Pacific Oceans. After a vacation goes awry, protagonist Jason Brody must save his friends, who have been kidnapped by pirates and escape from the island and its unhinged inhabitants.</p>
                                        <p>he third installment in the Far Cry series, Far Cry 3 was critically acclaimed upon release, with reviewers praising its world design, open-ended gameplay and story, while the game's multiplayer mode was criticized.</p>
                                        <h4>Gameplay</h4>
                                        <p>Far Cry 3 is a first-person shooter, which also features role-playing game elements including experience points, skill trees, and a crafting system. The player has the ability to take cover behind objects to break enemies' lines of sight and to peek around and over cover and blindfire.</p>
                                        <p>The player has the ability to perform silent takedowns by performing melee attacks from above, below, or close behind. The game's narrative director, Jason Vandenberghe, said that the story mode map is around ten times larger than the game's previous installments. Players are given the ability to survey and plan out their attacks with stealth takedown combinations and tag enemies with the camera in order to track their movement once they break the player's line of sight.</p>
                                        <p>Equipment is controlled by a simple system. As missions are completed, new items are unlocked to be purchased or crafted by Jason, using the pelts of various animals found around the island to improve items-, weapons- and ammunitions-carrying capabilities. When scramblers on radio towers are removed, areas of the map are opened and weapons in the shop are first made available for purchase, and ultimately made available for free.</p>
                                        <p>Skills are collected by gaining experience from completing missions and killing enemies, and are unlocked in three skill trees, which correspond to the Spider, the Heron, and the Shark. Each skill tree upgrades different aspects of Jason's abilities, with the Spider upgrading his stealth takedowns and hunting skills, Shark for assault takedowns and health, with the Heron upgrading his long-range takedowns and mobility. As skills are collected, the tattoo on Jason's forearm grows which is made up of several different tribal designs resembling the three animal skill trees.</p>
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

        </div>


         <hr />
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; 2015 Virtual Highs &middot; <a href="Default.aspx">Home</a> &middot; <a href="#">Games</a> &middot; <a href="Gallery.aspx">Gallery</a> &middot; <a href="Events.aspx">Events</a> &middot; <a href="SignUp.aspx">Sign Up</a></p>
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
