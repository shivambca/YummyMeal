<%@page import = "java.sql.*" %>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yummy?zeroDateTimeBehavior=convertToNull","root","password");
    Statement st = con.createStatement();
    String a = request.getParameter("Umail");
    String b = request.getParameter("Uname");
    String c = request.getParameter("fmsg");
    String q = "insert into yummy.feedback values('"+b+"','"+c+"');";
    st.executeUpdate(q);
    out.print("<script> alert('Your feedback has stored to our database. Thank You for giving feedback.'); </script>");
    out.print("<script> location.href='index.jsp'; </script>");
%>