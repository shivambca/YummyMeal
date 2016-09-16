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
    <div id="<%= count++ %>" style="height: 60%; position: absolute; width: 90%; visibility: hidden; transition: 1s; margin-left: 5%; padding: 0% 2% 0% 2%; /*background-color: #eee; box-shadow: -5px -5px 10px #eee inset; */ border-radius: 10px; font-family: Arial; color: #ccc; font-size: 1.4em;">
        <div style="float: left;">
            <%= r_set.getString(2) %>
            <h4 style="text-indent: 90%; margin-top: -0.5%;">
                <%= r_set.getString(1) %>
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
            },1000);
            flag++;
        }, 2000);
    </script>
    <%--@include file="showFeed.jsp"--%>
</div>