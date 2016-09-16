<%@page import = "java.sql.*"%>
<%@page import = "bean.Hash"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yummy?zeroDateTimeBehavior=convertToNull","root","password");
    Statement st = con.createStatement();
    String a = request.getParameter("re_mail");
    String b = request.getParameter("re_user");
    String c = request.getParameter("re_mail1");
    c = Hash.generateMD5(c);
    String d = request.getParameter("re_pass1");
    String qry = "update yummy.userdata set paswd = '"+c+"' where user = '"+b+"' and email = '"+a+"';";
    st.executeUpdate(qry);
    response.sendRedirect("log-in.jsp");
%>