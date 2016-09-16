<%@page import= "java.sql.*"%>
<%@page import="bean.Hash"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yummy?zeroDateTimeBehavior=convertToNull","root","password");
    Statement st = con.createStatement();
    String a = request.getParameter("user");
    String b = request.getParameter("pass");
    String z = Hash.generateMD5(b);
    String c = request.getParameter("mail");
    String d = request.getParameter("city");
    String e = request.getParameter("local_areas");
    String f = request.getParameter("lunch_addrs");
    String g = request.getParameter("local_areas1");
    String h = request.getParameter("dinner_addrs");
    out.print("Username : "+a+"<br/>");
    out.print("Password : "+b+"<br/>");
    out.print("Email id : "+c+"<br/>");
    out.print("City Name : "+d+"<br/>");    
    /*if(e == "SELECT YOUR LUNCH LOCATION" || f == "")
        out.print("You have not select any area <br/>");
    else    {
        out.print("Area Name for Lunch : "+e+"<br/>");
        out.print("Area address for lunch : "+f+"<br/>");
    }   */
//  out.print("Area Name for Dinner : "+g+"<br/>");
//  out.print("Area address for lunch : "+h+"<br/>");
    
//    out.print("AreaName : "+e+"<br/>");*/
    //out.print(e);
    if(e.equals("SELECT YOUR LUNCH LOCATION"))
       e = "null";
    String qry = "insert into yummy.userdata values ('"+a+"','"+z+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"');";
    st.executeUpdate(qry);
    response.sendRedirect("log-in.jsp"); 
%>