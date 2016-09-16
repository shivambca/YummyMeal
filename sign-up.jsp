<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <body onload="updown()" oncontextmenu = "return false">
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
        <ul class="nav-list" style="margin-top: 9.8%;">
            <li onclick="location.href = 'index.jsp';">Home
            <li onclick="location.href = 'aboutus.jsp#whyus';">Why YummyMeal?
            <li>Meal Plans
            <li onclick="location.href = 'orderonline.jsp';">Order Meal
            <li onclick="location.href = 'aboutus.jsp#about';">About Us
        </ul>
        <div class="mini-head">SIGN UP</div>
        <div class="h-line" style="margin-top: 17.4%;"></div>
        <p class="head1">REQUEST FOR NEW CUSTOMER</p>
        <form class="signup-form" action="newuser.jsp" method="post" onsubmit="return validate()">
            <input type="text" placeholder="ENTER YOUR FULL NAME" name="user" id="user1"><br/>
            <input type="password" placeholder="ENTER YOUR PASSWORD" name="pass" id="pass1" style="width: 32em; text-indent: 3em; float: left;">
            <div style="position: relative; margin-left: 91.5%; box-shadow: inset 0px 0px 10px #aaa; font-size: 1.5em; height: 7.9%; padding-bottom: 4px; background-color: #eee; color: #777; width: 2em; text-align: center;">
                <i class="fa fa-eye-slash" style="margin-top: 1.5%;" onclick="hide3()" id="eye"></i>
            </div><br/>
            <input type="email" placeholder="ENTER YOUR EMAIL ADDRESS" name="mail" id="mail1"><br/>
            <select name="city" id="city1"><option>PLEASE SELECT YOUR CITY</option><option>Lucknow</option></select>
            <p>Delivery Location : </p>
            <span class="glyphicon glyphicon-unchecked" onclick="check();" id="tik"></span> LUNCH
            <span class="glyphicon glyphicon-unchecked" onclick="check1();" id="tik1" style="margin-left: 20%;"></span> DINNER <br/>
            <select class="area" name="local_areas" id="lunch" style="margin-top: 2%; text-indent: 27%; display:none;">
                <option value="SELECT YOUR LUNCH LOCATION">SELECT YOUR LUNCH LOCATION</option>
                <option value="Aashiana">Aashiana</option><option value="Adarsh Nagar">Adarsh Nagar</option>
                <option value="Aalambagh">Aalambagh</option><option value="Aalam Nagar">Aalam Nagar</option>
                <option value="Aaishbagh">Aaishbagh</option><option value="Aaliganj">Aaliganj</option>
                <option value="Balaganj">Balaganj</option><option value="Bijnaur">Bijnaur</option>
                <option value="Chaupatiya">Chaupatiya</option><option value="Charbagh">Charbagh</option>
                <option value="Civil Line">Civil Line</option><option value="Chowk">Chowk</option>
                <option value="Daliganj">Daliganj</option><option value="Darulshafa">Darulshafa</option>
                <option value="Ganesh Gang">Ganesh Gang</option><option value="Gomti Nagar">Gomti Nagar</option>
                <option value="Hazarat Ganj">Hazarat Ganj</option><option value="Husain Ganj">Husain Ganj</option>
                <option value="Indira Nagar">Indira Nagar</option><option value="Jankipuram">Jankipuram</option>
                <option value="Kursi Road">Kursi Road</option><option value="Laalbagh">Laalbagh</option>
                <option value="Nishatganj">Nishatganj</option><option value="Raibareli Road">Raibareli Road</option>
                <option value="Raja Ji Puram">Raja Ji Puram</option><option value="Rashi Khand">Rashi Khand</option>
                <option value="Sahadatganj">Sahadatganj</option><option value="Singar Nagar">Singar Nagar</option>
                <option value="Telibagh">Telibagh</option><option value="Thakurganj">Thakurganj</option>
            </select><br/>
            <input type="text" class="area" id="l1" placeholder="ENTER YOUR LUNCH ADDRESS" name="lunch_addrs" style="display: none;"><br/>
            <select id="dinner" name="local_areas1" style="margin-top: 2%; text-indent: 27%; display: none;">
                <option value="SELECT YOUR DINNER LOCATION">SELECT YOUR DINNER LOCATION</option>
                <option value="Aashiana">Aashiana</option><option value="Adarsh Nagar">Adarsh Nagar</option>
                <option value="Aalambagh">Aalambagh</option><option value="Aalam Nagar">Aalam Nagar</option>
                <option value="Aaishbagh">Aaishbagh</option><option value="Aaliganj">Aaliganj</option>
                <option value="Balaganj">Balaganj</option><option value="Bijnaur">Bijnaur</option>
                <option value="Chaupatiya">Chaupatiya</option><option value="Charbagh">Charbagh</option>
                <option value="Civil Line">Civil Line</option><option value="Chowk">Chowk</option>
                <option value="Daliganj">Daliganj</option><option value="Darulshafa">Darulshafa</option>
                <option value="Ganesh Gang">Ganesh Gang</option><option value="Gomti Nagar">Gomti Nagar</option>
                <option value="Hazarat Ganj">Hazarat Ganj</option><option value="Husain Ganj">Husain Ganj</option>
                <option value="Indira Nagar">Indira Nagar</option><option value="Jankipuram">Jankipuram</option>
                <option value="Kursi Road">Kursi Road</option><option value="Laalbagh">Laalbagh</option>
                <option value="Nishatganj">Nishatganj</option><option value="Raibareli Road">Raibareli Road</option>
                <option value="Raja Ji Puram">Raja Ji Puram</option><option value="Rashi Khand">Rashi Khand</option>
                <option value="Sahadatganj">Sahadatganj</option><option value="Singar Nagar">Singar Nagar</option>
                <option value="Telibagh">Telibagh</option><option value="Thakurganj">Thakurganj</option>
            </select><br/>
            <input type="text" id="l2" placeholder="ENTER YOUR DINNER ADDRESS" name="dinner_addrs" style=" display:none;"><br/>
            <span class="glyphicon glyphicon-unchecked" onclick="agree(), proceed()" id="terms" style="margin-left: 0%; font-size: 1.4em; float: left; margin-top: 0%;"></span>
            <p style="margin-top: 0%; text-indent: 5%;" id="terms1"> I AGREE <font onclick="location.href='termscondition.jsp';" onmouseover="this.style.color = '#5b9f00';" onmouseout="this.style.color = 'gray', this.style.cursor = 'Pointer';"> TERMS &amp; CONDITIONS.</font></p><br/>
            <input type="button" value="&laquo; GO BACK" style="transition: 2s; width: 20%; color: white; background-color: #666;" onmouseover="this.style.backgroundColor = '#5b9f00';" onmouseout="this.style.backgroundColor = '#666';">
            <input type="submit" value="PROCEED" title="Agree terms and conditions to proceed." id="btn_proced" style="width: 20%; margin-left: 59%; background-color: #666; color: white" disabled="disabled">
        </form>
        <div class="foot" style="margin-top: 65%;">
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