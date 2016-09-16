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
<body style="background-color: #eee;" onresize='document.getElementsByTagName("body")[0].style["font-size"] = document.body.clientWidth * (12/1280) + "px";' onload="updown(), other(), setInterval(change, 5000)">
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
    <div id="wowslider-container1" style="margin-top: 2.8%;">
	<div class="ws_images"><ul>
		<li><img src="data1/images/chola_puri.jpg" alt="Chola Puri" title="Chola Puri" id="wows1_0"/></li>
		<li><img src="data1/images/desi_thali.jpg" alt="Desi Thali" title="Desi Thali" id="wows1_1"/></li>
		<li><img src="data1/images/panner_gravy.jpg" alt="Panner Gravy" title="Chilli Panner" id="wows1_2"/></li>
		<li><img src="data1/images/smart_containers.png" alt="smart_containers" title="Smart Containers" id="wows1_3"/></li>
		<li><img src="data1/images/tasty_rotis.png" alt="tasty_rotis" title="Tasty Rotis" id="wows1_4"/></li>
		<li><img src="data1/images/vegitable_salad.png" alt="bootstrap slider" title="Vegitable Salad" id="wows1_5"/></a></li>
		<li><img src="data1/images/yummy_pasta.png" alt="yummy_pasta" title="Yummy Pasta" id="wows1_6"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="Chola Puri"><span><img src="data1/tooltips/chola_puri.jpg" alt="Chola Puri"/>1</span></a>
		<a href="#" title="Desi Thali"><span><img src="data1/tooltips/desi_thali.jpg" alt="Desi Thali"/>2</span></a>
		<a href="#" title="Panner Gravy"><span><img src="data1/tooltips/panner_gravy.jpg" alt="Panner Gravy"/>3</span></a>
		<a href="#" title="smart_containers"><span><img src="data1/tooltips/smart_containers.png" alt="smart_containers"/>4</span></a>
		<a href="#" title="tasty_rotis"><span><img src="data1/tooltips/tasty_rotis.png" alt="tasty_rotis"/>5</span></a>
		<a href="#" title="vegitable_salad"><span><img src="data1/tooltips/vegitable_salad.png" alt="vegitable_salad"/>6</span></a>
		<a href="#" title="yummy_pasta"><span><img src="data1/tooltips/yummy_pasta.png" alt="yummy_pasta"/>7</span></a>
	</div></div><!--div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">slider</a> by WOWSlider.com v8.7</div-->
	<div class="ws_shadow"></div>
        </div>
	<script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>	
	<marquee style="font-size: 1.3em; font-weight: bold; width: 70%; margin-left: 15%; margin-bottom: 1%; margin-top: 1%;">Lunch and Dinner delivered all over Lucknow.</marquee>
	<div style=" height: 40%; width: 25%; margin-left: 5%; margin-bottom: 5%; position: absolute; background-color: white;">
            <h4 style="text-align: center; font-size: 2em;">Order Timing</h4>
	    <ul>
                <li><img src="Images/lunch.png" style="float: left; width: 22%; ">
                    <h4 style="font-size: 1.5em; margin-left: 28%; margin-top: 5%;">Lunch</h4><p style="margin-left: 28%; margin-top: -3%; font-size: 1em;">Previous Day Before 6 PM.</p></li>
	        <li><img style="width: 19%; margin-left:3%; margin-top: -3%; float: left;" src="Images/dinner.png">
                    <h4 style="font-size: 1.5em; margin-left: 28%; margin-top: 10%;">Dinner</h4><p style="margin-left: 28%; margin-top: -3%;">Same Day Before 12:30 PM.</p></li>
            </ul>
	    <a href="ordertiming.jsp" style="margin-top: -0.5%; margin-left: 20%; font-size: 1.3em; text-align: center;">View timing for delivery.</a>
	    <div class="order" onclick="location.href = 'orderonline.jsp';">Order Online</div>
	</div>
        <div class="why-us" style="margin-top: 0%;">
            <h4>WHY US</h4>
            <p>Are you tired of eating baingan/ lauki everyday? Is your diet dictated by your dabbawala? Yummy Tiffins offers you</p>
            <ul>
                <li>&star; Tasty Food</li>
                <li>&starf; Select your own menu.</li>
                <li>&starf; Food packed in disposable containers.</li>
                <li>&starf; Fresh vegetables and spices</li>
                <li>&starf; Delivery through India's famous dabbawalas of Lucknow.</li>
            </ul>
            <div class="read-more" onclick="location.href = 'aboutus.jsp#whyus';">Read More</div>
        </div>
        <div class="quality">
            <h2>User Reviews</h2>
            <%@page import="java.sql.*"%>
            <%
                Connection con = null;
                int count = 0;
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yummy?zeroDateTimeBehavior=convertToNull","root","password");
                Statement st = con.createStatement();
                String qry = "select * from yummy.feedback";
                ResultSet r_set = st.executeQuery(qry);
                while(r_set.next())    {
            %>
            <div id="<%= count++ %>">
                <div style="float: left; text-align: center; width: 100%;">
                    <%= r_set.getString(2) %>
                    <h4 style="font-size: 1.2em; color: #aaa;">
                        - <%= r_set.getString(1) %>
                    </h4>
                </div>
            </div>
            <% } %>
            <script>
                var flag = 0;
                setInterval(function () { 
                    document.getElementById(flag).style.visibility = "visible";
                    document.getElementById(flag).style.opacity = "1";
                    setTimeout(function(){
                        flag--;
                        document.getElementById(flag).style.opacity = "0";
                        document.getElementById(flag).style.visibility = "hidden";
                        flag++;
                    },8000);
                    flag++;
                    if(flag === 4)
                    {
                        document.getElementById(flag).style.opacity = "0";
                        document.getElementById(flag).style.visibility = "hidden";
                        flag = 1;
                    }
                }, 9000);
            </script>
            <%--@include file="showFeed.jsp"--%>
        </div>
        <div class="foot" style="margin-top: 36%;">
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
    </body>
</html>