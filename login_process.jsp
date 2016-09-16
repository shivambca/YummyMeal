<%@page import= "java.sql.*"%>
<%@page import= "bean.Hash"%>
<%
    Connection con = null;
    Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/yummy?zeroDateTimeBehavior=convertToNull","root","password");
    Statement st = con.createStatement();
    String a = request.getParameter("mail");
    String b = request.getParameter("paas");
    b = Hash.generateMD5(b);
    out.print("<script> alert('"+b+"'); </script>");
    String qry = "select * from yummy.userdata where user = '"+a+"' and paswd = '"+b+"';";
    ResultSet rs = st.executeQuery(qry);
    if(!rs.next())
    {
        session.setAttribute("current_user",a);
        response.sendRedirect("index.jsp");
    }
    else
    {
        out.print("<script> alert('User Email and Password mismatched.! Try Again.'); </script>");
        out.print("<script> location.href = 'log-in.jsp'; </script>");
    }
    
    //      out.print("<script> alert('Welcome "+a+" to our site.'); </script>");
%>