<%-- 
    Document   : feedback.jsp
    Created on : 8 Jul, 2016, 4:43:35 PM
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
        <title>Website Feedback Page</title>
        <script type="text/javascript" src="external.js"></script>
    </head>
    <body onkeypress="moveover()"><!--onload="setInterval(moveover, 10000), setInterval(show, 12000)"-->
        <div class="outer" title="Hit Enter">
            <img src="Images/yummymeal.jpg" id="dabbawala"/>
            <div class="inner" id="iner">
                <h2 class="welcome_note">Welcome Users.</h2>
                <p>Your feedback is important to us. Please give us your reviews, suggestions and also complaint if any.</p>
            </div>
        </div>
        <div class="feed_body" id="feedmain">
            <h3 style='text-align: center; margin-top: 5%;'>WEBSITE FEEDBACK FORM</h3>
            <img src="Images/burger.png" style="margin-left: 3%; margin-top: 1%; opacity: 0; float: left;" id='burger'>
            <div class="mini-head" style="margin-top: 5%; margin-left: 58.5%; width: 30%; height: 6%; font-size: 1.2em; padding-top: 6px;">
                USER'S PERSONAL INFORMATION</div>
            <div class="h-line" style="margin-top: 8.2%; width: 43%; margin-left: 46%;"></div>
            <form action="storefeedback.jsp" method="post" onsubmit="return test2()">
                <input type="email" placeholder="ENTER YOUR REGISTERED E-MAIL ADDRESS." class="logarea" name="Umail" id="log-Umail" style="margin-left: 10%; margin-top: 12%;">
                <input type="text" placeholder="ENTER YOUR FULL NAME." class="logarea" name="Uname" id="log-Uname" style="margin-left: 10%; margin-top: 17%;">
                <div class="mini-head" style="margin-top: 23%; margin-left: 58.5%; width: 30%; height: 6%; font-size: 1.2em; padding-top: 6px;">
                    YOUR FEEDBACK MESSAGE</div>
                <div class="h-line" style="margin-top: 26.2%; width: 43%; margin-left: 46%;"></div>
                <textarea id='mesg' name='fmsg' rows='5' cols='52' maxlength="300" style='resize: none; margin-left: 10%; margin-top: 28%; text-align: center; border: 1px solid #ccc;' placeholder='ENTER YOUR FEEDBACK MESSAGE'></textarea>
                <input type='submit' value='SUBMIT FEEDBACK' class="signin_btn" style="margin-left: -27%; margin-top: 38.5%; width: 20%;">
            </form>
        </div>
    </body>
</html>
