<%@ page import ="java.sql.*" %>
<%
    String review = request.getParameter("review");
    String productID = request.getParameter("productID");
    String userName = request.getParameter("userName");
    String emailID = request.getParameter("emailID");
    String rating = request.getParameter("rating");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "root");
    Statement st = con.createStatement();
    int check = 0;
    int i = st.executeUpdate("insert into productreview(reviewOfWatch,productID,userName,emailID,rating) values ('" + review + "','" + productID + "','" + userName + "','" + emailID + "','" + rating + "')");
//      int i = st.executeUpdate("insert into productreview(reviewOfWatch,productID,reviewDate) values ('" + review + "','" + productID +"','"+", CURDATE()"+ "')");
    System.out.println(" " + review + " " + productID);
    if (i > 0) {
        response.sendRedirect(request.getHeader("referer"));
    }
%>
