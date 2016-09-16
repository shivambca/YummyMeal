<!DOCTYPE html>
<html>
<head>
        <link rel="icon" type="image/x-icon" href="Images/burger.png"/>
        <!--link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"-->
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <!--link rel="stylesheet" href="http://www.yummytiffins.com/css/combine.css"/-->
        <link rel="stylesheet" href="css/combine.css"/>
        <title>Yummy Meal Portal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/external.css"/>
        <script type="text/javascript" src="external.js"></script>
        <title>Slider</title>
        <link rel="stylesheet" type="text/css" href="engine1/style.css" />
        <script type="text/javascript" src="engine1/jquery.js"></script>
        <script type="text/javascript">
            function other() {
                document.getElementById("bag").style.marginTop = "-7.5%";
            }
        </script>
</head>
<body style="background-color: #eee;" onload="updown(), other(), setInterval(change, 5000)">
    <div class="header" style="position: relative; border: 0px solid red; padding-top: 10%;">
        <img src="Images/yummy.jpg" style="margin-top: -10%;">
        <p style="margin-top: -9%;">Call Us : <span class="glyphicon glyphicon-earphone" style="margin-top: 1%; font-size: 0.8em; margin-right: 1%; transition-duration: 1s;"></span>9044151442</p>
        <ul class="user" style="margin-top: -6%; margin-left: 37%;">
            <li class="login"><a href="log-in.jsp"><i class="fa fa-sign-in" style="font-size: 1.5em;"></i><br/><span>SIGN IN</span> </a></li>
            <li class="login" style=" margin-left: 5%;"><a href="sign-up.jsp"><i class="fa fa-user"></i><br/><span>SIGN UP</span> </a></li>
        </ul>
        <h5 style="margin-top: -9%;">Lucknow's First Customized Online Tiffin Service.</h5>
        <a href="selected-item.jsp" class="cart" id="bag" style="margin-top: -9.5%;"><i class="fa fa-shopping-cart"></i></a>
    </div>
    <ul class="nav-list" style="margin-top: 0%;">
        <li onclick="location.href = 'index.jsp';">Home
        <li onclick="location.href = 'aboutus.jsp#whyus';">Why YummyMeal?
        <li>Meal Plans
        <li onclick="location.href = 'orderonline.jsp';">Order Meal
        <li onclick="location.href = 'aboutus.jsp#about';">About Us
    </ul>
    <div class="mini-head" style="margin-top: 5%; font-size: 1.2em;">THANK YOU</div>
    <div class="h-line" style="margin-top: 7.4%;"></div>
    <p class="head1" style="margin-top: 9%; margin-left: 39%;">REQUEST FOR EXISTING CUSTOMER</p>
    <div class="foot" style="margin-top: 31%;">
        <%
            String p = (String)session.getAttribute("current_user");
            if(p!=null)   {   %>
            <input type="button" class="logout" value="Log Out" onclick="location.href='logout.jsp';">
        <%   }   %>
        <ul><li onclick="location.href='termscondition.jsp';">Terms &amp; Conditions.</li>
            <li onclick="location.href='feedback.jsp';">Feedback</li>
            <li onclick="location.href='sitemap.jsp';">Site Map</li>
        </ul>
        <p>&copy; 2016. All rights reserved.</p>
        <font>Follow us on : 
            <i class="fa fa-facebook-square" onmouseover="this.style.color = '#3b5998';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.facebook.com/Yummy-Tiffins-107605889277954/';"></i>
            <i class="fa fa-youtube-square" onmouseover="this.style.color = '#c4302b';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.youtube.com/channel/UCWSyDMKfxeoLwQJNxtny-4Q';"></i>
            <i class="fa fa-github-square" onmouseover="this.style.color = '#000'/* '#3cf' */;" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://github.com/shivambca';"></i>
            <i class="fa fa-google-plus-square" onmouseover="this.style.color = '#dd4b39';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://plus.google.com/u/0/+ShivamVerma1996/about';"></i>
        </font>
    </div>