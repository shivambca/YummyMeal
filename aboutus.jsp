<%-- 
    Document   : aboutus
    Created on : 3 Jul, 2016, 8:07:35 PM
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
        <link rel="stylesheet" type="text/css" href="css/external.css"/>
        <title>About Us Page</title>
        <script type="text/javascript" src="external.js"></script>
    </head>
    <body onload="updown(), other(), setInterval(change, 5000)">
        <%@include file = "header.jsp"%>
        <!--div class="header">
            <img src="Images/yummy.jpg">
            <p>Call Us : <span class="glyphicon glyphicon-earphone" style="margin-top: 1%; font-size: 0.8em; margin-right: 1%; transition-duration: 1s;"></span>9044151442</p>
            <ul class="user">
                <li class="login"><a href="log-in.jsp"><i class="fa fa-sign-in" style="font-size: 1.5em;"></i><br/><span>SIGN IN</span> </a></li>
                <li class="login" style=" margin-left: 5%;"><a href="sign-up.jsp"><i class="fa fa-user"></i><br/><span>SIGN UP</span> </a></li>
            </ul>
            <h5>Lucknow's First Customized Online Tiffin Service.</h5>
            <a href="selected-item.jsp" class="cart" id="bag"><i class="fa fa-shopping-cart"></i></a>
        </div-->
        <ul class="nav-list">
            <li onclick="location.href = 'index.jsp';">Home
            <li onclick="location.href = 'aboutus.jsp#whyus';">Why YummyMeal?
            <li>Meal Plans
            <li onclick="location.href = 'orderonline.jsp';">Order Meal
            <li onclick="location.href = 'aboutus.jsp#about';">About Us
        </ul>
        <div class="about-me" id="about">
            <h2 style=" color: #5b9f00; margin-left: 3%;">About Us</h2>
            <p style="float: left;">We love picky eaters. We love vegetarians. We love health freaks. We love the ones who call, We even love the ones who order online. We love them all.<br/>
            Born with a mission to revolutionize eating habits, we believe in providing tiffins in Lucknow that are healthy, homely and hygienic. These meals are ideal for people who are too busy to cook or don’t wish to compromise on nutrition with restaurant food. The menu, at Yummy Meals, comes in a variety of mouth-watering cuisines and nutritional options - a judicious mix of carbohydrates and proteins, low calorie content and no artificial flavours/preservatives.
            Whether it’s Hakka noodles, Cheese Balls or Gulab Jamun. Nutrition doesn’t have to mean bland, boring diets. Ask the dietician on board.
            It’s just like you would make it, minus the effort.</p>
            <img src="Images/box.jpg" alt="developer-of-this-project" style="margin-left: 9%; margin-top: -3%; height: 80%; width: 18%; border-radius: 50%;">
            <h4 style="font-weight: bold; margin-left: 76.5%;">Shivam Verma</h4>
            <h5 style="margin-left: 77%;">BCA from IGNOU.</h5><h5 style="margin-left: 75%;">shivambca75@gmail.com</h5>
            <p style="margin-right: 6%; float: right;">
            <div class="note">A well balanced and healthy meal can now reach in any nook or corner of Lucknow. Choose what you would like for your next meal and we promise to deliver tiffins in Lucknow.</div>
            <p style="float: right; margin-right: 5%;">The team at Yummy Meals ensures that the meals are not only healthy but also appealing to the eye and palette. Our menu changes daily and features over 40 dishes that change every day. That includes a variety of vegetables, daal, soups, raita, rice, rotis, salads, and snack items. These are healthy. The same food prepared in canteens or Udupi restaurants can be tasty, but is generally oily and big on your pocket.
            Now, relish the tangy vegetable masala, homemade Gajar Halwa, and life-changing Garlic Spinach and Chickpea soup.<br/>
            Go on, order as you are</p>
        </div>
        <div class="about-meal" id="whyus">
            <h3 style=" color: #5b9f00; margin-left: 1%;">Why Yummy Meals?</h3>
            <div class="first">
                <span class="head">Locations</span><br/>
                Sign up for tiffin services in Lucknow or join us for tiffin services or even register from old Lucknow, we will not say a ‘NO’. We deliver just everywhere in Lucknow.<br/>
                <span class="head">Affordable prices.</span><br/>
                Customized lunch and dinner tiffin services in Lucknow start at very low price. The food that you eat is healthy, yummy at the same time it’s affordable.<br/>
                <span class="head">Fresh ingredients.</span><br/>
                Everyday fresh vegetable of the best quality are procured to ensure that the food that you eat is good for your health.<br/>
            </div>
            <div class="first">
                <span class="head">Tasty Food.</span><br/>
                Our experienced chefs ensure that the food you eat has the perfect mix of spices. The food that you eat is not too spicy or too oily at the same time it’s very tasty.<br/>

                <span class="head">Select your own menu.</span><br/>
                You can select your own menu with the help of our unique E-menu feature, because you deserve to eat what you like, Not what your Dabbawala provide.<br/>
                <span class="head">Experienced cooks.</span><br/>
                Our cooks have more than a decade of experience in catering industry.<br/>

            </div>
            <div class="first">
                <span class="head">No preservatives/ artificial color/pre-cooked gravies.</span><br/>
                No artificial preservatives, colors or pre-cooked gravies to make the food look attractive. The food that you eat is just like the way food cooked at home.<br/>
                <span class="head">Disposable containers.</span><br/>
                Food is packed in disposable plastic containers. All these containers are carefully packed in a disposable bag. This ensures that there are no chances of contamination.<br/>
            </div>
        <div style="position: relative; background-color: #888; height: 0.2; left: 10%; right: 10%;"></div>
        </div>
        <div class="foot" style="margin-top: 87.5%;">
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