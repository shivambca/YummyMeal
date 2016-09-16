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
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <!--link rel="stylesheet" href="http://www.yummytiffins.com/css/combine.css"/-->
        <link rel="stylesheet" href="css/combine.css"/>
        <title>Yummy Meal Portal</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/external.css"/>
        <script type="text/javascript" src="external.js"></script>        
    </head>
    <body onload="updown(), setInterval(change, 5000)" oncontextmenu="return false">
        <%@include file="header.jsp"%>
        <%@include file="nav-list.jsp"%>
        <marquee style="margin-top:41%; font-size: 1.3em; font-weight: bold; width: 70%; margin-left: 15%;">Lunch and Dinner delivered all over Lucknow.</marquee>
        <%@include file="order.jsp"%>
        <%@include file="why-us.jsp"%>
        <%@include file="reviews.jsp"%>
        <%@include file="footer.jsp" %>
    </body>
</html>
