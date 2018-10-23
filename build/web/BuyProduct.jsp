
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            .card {
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.3s;
                width: 80%;
                height:40px;
                border-radius: 5px;
                background-color: #2196F3;
                padding: 2px 16px;
            }

            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }
            .cardButtotns {
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.3s;
                width: 80%;
                height:80px;
                border-radius: 5px;
                background-color: #2196F3;
                padding: 2px 16px;
            }

            .cardButtons:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }


            .container {
                padding: 2px 16px;
                background-color: #ECEFF1;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.3s;
                width: 80%;
                height:100px;
                border-radius: 5px;

            }

            .container:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }
            .Largecontainer {
                padding: 2px 16px;
                background-color: #ECEFF1;
                box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.3s;
                width: 80%;
                height:500px;
                border-radius: 5px;

            }

            .Largecontainer:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }
            .button {
                border-radius: 4px;
                background-color: #fff;
                width:150px;
                height: 50px;
                border: none;
                color: #000;
                text-align: center;
                font-size: 18px;
                padding: 10px;

                transition: all 0.5s;
                cursor: pointer;
                margin: 5px;
                float:next;
            }

            .button span {
                cursor: pointer;
                display: inline-block;
                position: relative;
                transition: 0.5s;
            }

            .button span:after {
                content: '\00bb';
                position: absolute;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.5s;
            }

            .button:hover span {
                padding-right: 25px;
            }

            .button:hover span:after {
                opacity: 1;
                right: 0;
            }



            .button1 {
                border-radius: 4px;
                background-color: #2196F3;
                width:80%;
                height: 30px;
                border: none;
                color: #000;
                text-align: center;
                font-size: 18px;
                padding: 10px;

                transition: all 0.5s;
                cursor: pointer;
                margin: 5px;
                float:next;
            }

            .button1 span {
                cursor: pointer;
                display: inline-block;
                position: relative;
                transition: 0.5s;
            }

            .button1 span:after {
                content: '\00bb';
                position: absolute;
                opacity: 0;
                top: 0;
                right: -20px;
                transition: 0.5s;
            }

            .button1:hover span {
                padding-right: 25px;
            }

            .button1:hover span:after {
                opacity: 1;
                right: 0;
            }
        </style>
    </head>


    <body>

        <%
            String productS = request.getParameter("productID");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom",
                    "root", "root");
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();

            ResultSet res;
            ResultSet res1;

            int pID = 0;
            int price = 0;
            String pname = "";
            int product = Integer.parseInt(productS);
            res = st.executeQuery("select * from productdetails where productID= " + product);
            while (res.next()) {
                pID = res.getInt("productID");
                price = res.getInt("productPrice");
                pname = res.getNString("productName");
            }
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
            int qty = 1;

            st.executeUpdate("insert into cart(name,productID,quantity) values ('" + uname + "','" + pID + "','" + qty + "')");


        %>

    <center>
        <div class="card" align="left">
            <h3><b> <font color = "#F5F5F5"> 1.  LOGIN</font></b></h3>
        </div>
        <div class="container">
            <h3><b> <font color = "#000000"> Hello, <%= uname%><br><%= email%> </font></b></h3>
        </div>

        <div class="card" align="left">
            <h3><b> <font color = "#F5F5F5"> 2. DELIVERY ADDRESS</font></b></h3>
        </div>
        <div class="container">
            <h3><b> <font color = "#000000">  <%= addr%></font></b></h3>
            <!--   <form action="changeAddress.jsp" method="post" id="form1">
                   <input type="hidden" name="productID" value="<%=uname%>">  
                    <button align ="left"class="button" type="Submit" form="form1" value="Change"><span>Change</span></button>  
                </form>-->
        </div>

        <div class="card" align="left">
            <h3><b> <font color = "#F5F5F5"> 3. ORDER DETAILS</font></b></h3>
        </div>
        <div class="Largecontainer">
            <%   int cartproduct = 0;
                int cartqty = 0;
                int cartID = 0;
                String cartuser = "";
                res = st.executeQuery("select * from cart where name = '" + uname + "'");
                while (res.next()) {
                    cartID = res.getInt("id");
                    cartuser = res.getNString("name");
                    cartproduct = res.getInt("productID");
                    cartqty = res.getInt("quantity");
                    res1 = st1.executeQuery("select * from productdetails where productID = " + cartproduct);
                    String cpname = "";
                    int cpprice = 0;
                    while (res1.next()) {
                        cpname = res1.getNString("productName");
                        cpprice = res1.getInt("productPrice");

            %>

            <h3><b> 
                    <font color = "#212121"> Cart ID: </font>

                    <font color = "#673AB7"> <%= cartID%> </font>

                    <font color = "#212121">  Product ID: </font>

                    <font color = "#673AB7"> <%= cartproduct%> </font>

                    <font color = "#212121"> Product Name: </font>

                    <font color = "#673AB7"> <%= cpname%> </font>

                    <font color = "#212121"> Product Price: </font>

                    <font color = "#673AB7">  <%= cpprice%> </font>

                    <font color = "#212121"> Quantity: </font>

                    <font color = "#673AB7"> <%= cartqty%> </font>

                </b></h3>



            <%
                    }
                }
            %>
            <%

            %>
        </div>
        <div class="cardButtons" align="center">
            <form action="removeProductAfterCheckout.jsp" method="post" id="form1">
                <input type="hidden" name="productID" value="<%=uname%>"/> 
                <button class="button1" type="Submit" form="form1" value="next"><span>Checkout</span></button>  
            </form>
            <form action="manageCartInput.jsp" method="post" id="form2">
                <button class="button1" type="Submit" form="form2" value="next"><span>ManageCart </span></button>  
            </form>    
        </div>
        <br/>
    </center>
</body>
</html>