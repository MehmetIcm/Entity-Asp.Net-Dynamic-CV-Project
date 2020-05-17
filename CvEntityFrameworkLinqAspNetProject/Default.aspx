<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CvEntityFrameworkLinqAspNetProject.Default" %>


<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Conjoint a Corporate Category Bootstrap Responsive website Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Conjoint Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="/web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="/web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="/web/css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <!-- //online-fonts -->
</head>
<body>
    <div class="sidenav text-center">
        <div class="side_top">
            <img src="/web/images/profilepicture.jpg" alt="news image" class="img-fluid navimg">
            <h1 class="top_hd mt-2"><a href="index.html">
                <asp:Repeater ID="Repeater0" runat="server">
                    <ItemTemplate>
                        <%#Eval("BILGILER") %>
                    </ItemTemplate>
                </asp:Repeater>
            </a></h1>
            <p class="top_hdp mt-2">Software Developer / Mechatronic Engineer</p>
        </div>
        <!-- header -->
        <header>
            <div class="nav-top">
                <nav class="mnu mx-auto">
                    <label for="drop" class="toggle">Menu</label>
                    <input type="checkbox" id="drop">
                    <ul class="menu">
                        <li class="active"><a href="#home" class="scroll">Home</a></li>
                        <li class="mt-sm-3"><a href="#about" class="scroll">Education</a></li>
                        <li class="mt-sm-3"><a href="#services" class="scroll">Skills</a></li>
                        <li class="mt-sm-3"><a href="#news" class="scroll">Experience</a></li>
                        <li class="mt-sm-3"><a href="#contact" class="scroll">Contact</a></li>
                        <li class="mt-sm-3"><a href="Dashboard.aspx" class="scroll">Admin Panel</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->
    </div>
    <div class="main">
        <div class="banner-text-w3ls" id="home">
            <div class="container">
                <div class="mx-auto text-center">
                    <h3>My Personal CV
                    </h3>
                    <p class="banp mx-auto mt-3">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <%#Eval("BILGILER") %>
                            </ItemTemplate>
                        </asp:Repeater>
                    </p>
                    <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">Learn More</a>
                </div>
            </div>
        </div>
        <!-- Education -->
        <section class="slide-wrapper" id="about">
            <h2 class="w3_head mb-4">Education</h2>
            <p class="iner mt-md-5">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <%#Eval("EGITIM") %>
                    </ItemTemplate>
                </asp:Repeater>
            </p>
        </section>
        <!-- //Education -->
        <!-- experience -->
        <section class="services" id="services">
            <div class="container">
                <h3 class="w3_head mb-4 text-left">Skills</h3>
                <ul class="list-unstyled mt-5">
                    <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                            <li>
                                <div class="row">
                                    <div class="col-2 ic-lft">
                                        <span class="fa fa-code"></span>
                                    </div>
                                    <div class="col-10">
                                        <h6><%#Eval("YETENEK")%> </h6>
                                    </div>
                                </div>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </div>
        </section>
        <!-- //experience -->
        <!-- skills -->
        <div class="news" id="news">
            <h3 class="w3_head mb-4 text-left">Experience</h3>
            <p class="iner mt-md-5 text-left">
                <asp:Repeater ID="Repeater3" runat="server">
                    <ItemTemplate>
                        <%#Eval("ISDENEYIMLERI") %>
                    </ItemTemplate>
                </asp:Repeater>
            </p>


        </div>
        <!-- //skills -->
        <!-- contact -->
        <section class="wedo" id="contact">
            <h3 class="w3_head mb-4 text-left">Contact Me</h3>
            <p class="iner mt-md-5 text-left">Nunc fermentum adipiscing tempor cursus nascetur adipiscing adipiscing. Primis aliquam mus lacinia lobortis.Nunc fermentum adipiscing tempor cursus nascetur adipiscing adipiscing. </p>
            <div class="contact_grid_right mt-5 mx-auto text-left">
                <form action="#" method="post" runat="server">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <asp:TextBox ID="TxtName" runat="server" placeholder="Name"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TxtMail" runat="server" placeholder="Email"></asp:TextBox>
                        </div>
                    </div>
                    <asp:TextBox ID="TxtSubject" runat="server" placeholder="Subject"></asp:TextBox>
                    <asp:TextBox ID="TxtMessage" runat="server" placeholder="Message..." TextMode="MultiLine" Height="40"></asp:TextBox>
                    <asp:Button ID="BtnSend" runat="server" Text="Send Message" CssClass="btn btn-info" OnClick="BtnSend_Click" />
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" CssClass="btn btn-warning" OnClick="BtnReset_Click" />
                    <div class="clearfix"></div>
                </form>
            </div>
            <div class="cpy-right text-center">
                <p>
                    © 2020 
					<a href="https://mehmeticme.home.blog/">Mehmet İçme.</a>
                </p>
            </div>
            <!-- //contact -->
    </div>

</body>
</html>
