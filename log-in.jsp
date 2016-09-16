<%-- 
    Document   : log-in
    Created on : 5 Jul, 2016, 1:44:00 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="Images/burger.png"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/combine.css"/>
        <link rel="stylesheet" href="css/external.css"/>
        <title>Log In Page</title>
        <script type="text/javascript" src="external.js"></script>
    </head>
    <body onload="updown()">
        <%@include file="header.jsp"%>
        <%--@include file="nav-list.jsp"--%>
        <ul class="nav-list">
            <li onclick="location.href = 'index.jsp';">Home
            <li onclick="location.href = 'aboutus.jsp#whyus';">Why YummyMeal?
            <li>Meal Plans
            <li onclick="location.href = 'orderonline.jsp';">Order Meal
            <li onclick="location.href = 'aboutus.jsp#about';">About Us
        </ul>
        <div class="mini-head">SIGN IN</div>
        <div class="h-line" style="margin-top: 17.4%;"></div>
        <p class="head1" style="margin-top: 19%; margin-left: 39%;">REQUEST FOR EXISTING CUSTOMER</p>
        <form action="login_process.jsp" method="post" onsubmit="return test();">
            <input type="email" placeholder="ENTER YOUR REGISTERED E-MAIL ADDRESS." class="logarea" name="mail" id="log-id">
            <input type="password" placeholder="ENTER YOUR PASSWORD." class="logarea" name="paas" id="log-pas" style="margin-top: 26%; width: 32%;">
            <div style="position: absolute; margin-top: 26%; margin-left: 65%; box-shadow: inset 0px 0px 10px #aaa; font-size: 1.5em; height: 5.3%; background-color: #eee; color: #777; width: 3%; text-align: center;">
                <i class="fa fa-eye-slash" style="margin-top: 1.5%;" onclick="hide4()" id="eye3"></i>
            </div>
            <p class="forget" onclick="location.href='reset_pass.jsp';">FORGET YOUR PASSWORD ?</p>
            <input type="submit" class="signin_btn" value="SIGN ME IN"/>
        </form>
        <h4 class="yet_acc">DON'T HAVE AN ACCOUNT YET?</h4>
        <div class="creat_new" onclick="location.href='sign-up.jsp';">CREATE NEW ACCOUNT</div>
        <div class="foot" style="margin-top: 41%;">
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