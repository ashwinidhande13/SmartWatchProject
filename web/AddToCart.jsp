

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    String pID = request.getParameter("productID");
    int qty = 1;
    int productID = Integer.parseInt(pID);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "root");
    Statement st = con.createStatement();
    ResultSet res;

    int test = (Integer) session.getAttribute("userNumber");
    String uname = "";//request.getParameter("userName");
    String addr = "";
    String email = "";
    res = st.executeQuery("select * from members where id= " + test);
    while (res.next()) {
        uname = res.getNString("first_name");
        addr = res.getNString("address");
        email = res.getNString("email");
    }

    int i = st.executeUpdate("insert into cart(name,productID,quantity) values ('" + uname + "','" + productID + "','" + qty + "')");
    if (i > 0) {    //session.setAttribute("userid", user);
        response.sendRedirect(request.getHeader("referer"));
        // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    }%>
