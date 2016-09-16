<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <link rel="icon" type="image/x-icon" href="Images/burger.png"/>
        <!--link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"-->
        <!--link rel="stylesheet" href="file://D:/HTML/font-awesome-4.6.2/css/font-awesome.min.css"-->
        <!--link rel="stylesheet" href="http://www.yummytiffins.com/css/combine.css"/-->
        <link rel="stylesheet" type="text/css" href="css/external.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/combine.css"/>
        <title>Yummy Meal Portal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="external.js"></script>
    </head>
    <body onload="updown()">
        <%--@include file="header.jsp"--%>
        <%--@include file="nav-list.jsp"--%>
        <div class="header">
            <img src="Images/yummy.jpg">
            <p>Call Us : <span class="glyphicon glyphicon-earphone" style="margin-top: 1%; font-size: 0.8em; margin-right: 1%; transition-duration: 1s;"></span>9044151442</p>
            <ul class="user" style="margin-top: 5%; margin-left: 11%;">
                <li class="login"><a href="log-in.jsp"><i class="fa fa-sign-in" style="font-size: 1.5em;"></i><br/><span>SIGN IN</span> </a></li>
                <li class="login" style=" margin-left: 5%;"><a href="sign-up.jsp"><i class="fa fa-user"></i><br/><span>SIGN UP</span> </a></li>
            </ul>
            <h5>Lucknow's First Customized Online Tiffin Service.</h5>
            <a href="selected-item.jsp" class="cart" id="bag"><i class="fa fa-shopping-cart"></i></a>
        </div>
        <ul class="nav-list" style="margin-top: 9.8%;"><li onclick="location.href= 'index.jsp';">Home<li onclick="location.href = 'aboutus.jsp';">Why YummyMeal?<li>Meal Plans<li onclick="location.href = 'orderonline.jsp';">Order Meal<li onclick="location.href = 'aboutus.jsp';">About Us</ul>
        <div class="mini-head" style="width: 20%; margin-left: 40%; margin-top: 14%;">ORDER &amp; DELIVERY TIMING</div>
        <div class="h-line"></div>
        <div class="order-time" style="margin-top: 18%; width: 40%;">
            <h4>Order Timing</h4>
            <ul><li><img src="Images/lunch.png" style="margin-left: 2%;"><h4>Lunch</h4><p style="margin-top: 0.7%;">Previous Day Before 6 PM.</p></li>
                <li style="margin-top: 5%;"><img style="height: 16%; margin-left:3%;" src="Images/dinner.png"><h4>Dinner</h4><p style="margin-top: 0.7%;">Same Day Before 12:30 PM.</p></li>
            </ul>
            <!--a href="ordertiming.jsp">View timing for location.</a>
            <div class="order">Order Online</div-->
        </div>
        <div style="top: 35%; bottom: 23%; position: absolute; background-color: #ccc; width: 0.1%; margin-left: 50%;"></div>
        <div class="order-time" style="margin-top: 18%; margin-left: 55%; width: 40%;">
            <h4>Delivery Timing</h4>
            <ul><li><img src="Images/lunch.png" style="margin-left: 2%;"><h4>Lunch</h4><p style="margin-top: 0.7%;">Between 12:30 PM to 01:30 PM.</p></li>
                <li style="margin-top: 5%;"><img style="height: 16%; margin-left:3%;" src="Images/dinner.png"><h4>Dinner</h4><p style="margin-top: 0.7%;">Between 6:30 PM to 08:45 PM.</p></li>
            </ul>
        </div>
        <marquee style="margin-top:38%; margin-bottom: -1.8%; font-size: 1.3em; font-weight: bold; width: 70%; margin-left: 15%;">We have very good quality food and wonderful delivery system.</marquee>
        <div class="foot" style="bottom:0;">
            <ul><li onclick="location.href='termscondition.jsp';">Terms &amp; Conditions.</li><li>Feedback</li><li>Site Map</li></ul>
            <p>&copy; 2016. All rights reserved.</p>
            <%
                String p = (String)session.getAttribute("current_user");
                if(p!=null)   {   %>
                <input type="button" class="logout" value="Log Out" onclick="location.href='logout.jsp';" style="margin-top: -1.5%;">
            <%   }   %>            
            <font>Follow us on : 
                <i class="fa fa-facebook-square" onmouseover="this.style.color = '#3b5998';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.facebook.com/Yummy-Tiffins-107605889277954/';"></i>
                <i class="fa fa-youtube-square" onmouseover="this.style.color = '#c4302b';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.youtube.com/channel/UCWSyDMKfxeoLwQJNxtny-4Q';"></i>
                <i class="fa fa-github-square" onmouseover="this.style.color = '#000'/* '#3cf' */;" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://github.com/shivambca';"></i>
                <i class="fa fa-google-plus-square" onmouseover="this.style.color = '#dd4b39';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://plus.google.com/u/0/+ShivamVerma1996/about';"></i>
            </font>
        </div>
    </body>
</html>