
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<%

    String id = request.getParameter("productID");
    String username = request.getParameter("userName");
    if (id != null) {
        PreparedStatement ps = null;
    //    int cartID = Integer.parseInt(id);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom", "root", "root");
            String sql = "DELETE FROM cart WHERE name = '" + id + "'";
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
          
            response.sendRedirect(("payment.html"));

            
        } catch (SQLException sqe) {
            out.println(sqe);
        }
    }
%>
