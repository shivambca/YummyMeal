<%-- 
    Document   : reset_pass
    Created on : 8 Jul, 2016, 11:54:43 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" type="image/x-icon" href="Images/burger.png"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/combine.css"/>
        <link rel="stylesheet" type="text/css" href="css/external.css"/>
        <script type="text/javascript" src="external.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Password Reset</title>
    </head>
    <body onload="updown()">
        <%@include file="header.jsp"%>
        <ul class="nav-list">
            <li onclick="location.href = 'index.jsp';">Home
            <li onclick="location.href = 'aboutus.jsp#whyus';">Why YummyMeal?
            <li>Meal Plans
            <li onclick="location.href = 'orderonline.jsp';">Order Meal
            <li onclick="location.href = 'aboutus.jsp#about';">About Us
        </ul>
        <div class="mini-head" style="width: 15%; margin-left: 43%; font-size: 1.2em;">
            RESET PASSWORD
        </div>
        <div class="h-line" style="margin-top: 17.4%;"></div>
        <p class="head1" style="margin-top: 19%; margin-left: 39%;">REQUEST FOR NEW PASSWORD</p>
        <form action="resetpass_process.jsp" method="post" onsubmit="return check_blank();">
            <input type="email" placeholder="ENTER YOUR REGISTERED E-MAIL ADDRESS." class="logarea" name="re_mail" id="log-mail">
            <input type="text" placeholder="ENTER YOUR FULL NAME." class="logarea" name="re_user" id="log-name" style="margin-top: 26%;">
            <input type="button" onclick="test1();" class="signin_btn" value="PROCEED" style="margin-top: 29.5%;"/>
            <i class="fa fa-arrow-circle-down" style="margin-top: 30.2%; margin-left: 54.5%; font-size: 1.5em; color: white; position: absolute;"></i>
            <div class="newpass" style="display: none;" id="repass">
                <div class="h-line" style="margin-top: 33%;"></div>
                    <input type="password" placeholder="ENTER YOUR NEW PASSWORD." class="logarea" name="re_mail1" id="log-pas1" style="margin-top: 34.5%; float: left; width: 32%;">
                    <div style="position: absolute; margin-top: 34.5%; margin-left: 65%; box-shadow: inset 0px 0px 10px #aaa; font-size: 1.5em; height: 5.3%; background-color: #eee; color: #777; width: 2.7%; text-align: center;">
                        <i class="fa fa-eye-slash" style="margin-top: 1.5%;" onclick="hide1()" id="eye1"></i>
                    </div>
                    <input type="password" placeholder="RE-ENTER YOUR PASSWORD" class="logarea" name="re_pass1" id="log-pas2" style="margin-top: 38%; float: left; width: 32%;">
                    <div style="position: absolute; margin-top: 38%; margin-left: 65%; box-shadow: inset 0px 0px 10px #aaa; font-size: 1.5em; height: 5.3%; background-color: #eee; color: #777; width: 2.7%; text-align: center;">
                        <i class="fa fa-eye-slash" style="margin-top: 1.5%;" onclick="hide2()" id="eye2"></i>
                    </div>
                    <input type="submit" value="GENERATE NEW PASSWORD" class="signin_btn" style="margin-top: 41.5%; margin-left: 40%; width: 20%;">
            </div>
        </form>
        <div class="foot" style="margin-top: 45%;">
            <%
                String p = (String)session.getAttribute("current_user");
                if(p!=null)   {   %>
                <input type="button" class="logout" value="Log Out">
            <%   }   %>
            <ul><li onclick="location.href='termscondition.jsp';">Terms &amp; Conditions.</li><li>Feedback</li><li>Site Map</li></ul>
            <p>&copy; 2016. All rights reserved.</p>    
            <font>Follow us on : 
                <i class="fa fa-facebook-square" onmouseover="this.style.color = '#3b5998';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.facebook.com/Yummy-Tiffins-107605889277954/';"></i>
                <i class="fa fa-youtube-square" onmouseover="this.style.color = '#c4302b';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://www.youtube.com/channel/UCWSyDMKfxeoLwQJNxtny-4Q';"></i>
                <i class="fa fa-github-square" onmouseover="this.style.color = '#000'/* '#3cf' */;" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://github.com/shivambca';"></i>
                <i class="fa fa-google-plus-square" onmouseover="this.style.color = '#dd4b39';" onmouseout="this.style.color = 'gray';" onclick="location.href = 'https://plus.google.com/u/0/+ShivamVerma1996/about';"></i>
            </font>
        </div>     
    </body>
</html>
