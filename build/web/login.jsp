
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");  
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        int user = rs.getInt("id");
        String username = rs.getNString("first_name");
        session.setAttribute("userNumber", user);
        session.setAttribute("userName",username);
        
        out.println("welcome " + username);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("category.html");
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>