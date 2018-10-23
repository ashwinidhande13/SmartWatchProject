
<%@ page import ="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            div {margin:0;}
            div {
                max-width: 100%;
                height: 100px;
                background-color: #009688;
                color:#ffffff;

            }
            input select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }


            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #009688;
            }

            input[type=reset] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=reset]:hover {
                background-color: #009688;
            }
            .container {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
                width:400px;
                height:800px;
            }
            .navbar {
                overflow: hidden;
                background-color: #333;
                position: fixed;
                top: 0;
                width: 100%;
            }

            .navbar a {
                float: left;
                display: block;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

            .main {
                padding: 16px;
                margin-top: 30px;
                height: 1500px; /* Used in this example to enable scrolling */
            }
            .footer{

                background-color: #333;
                color:#000;
                width: 100%;

            }
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th{
                padding: 8px;
                text-align: left;
                color:#D3D3D3;

            }
            td{
                padding: 8px;
                text-align: left;
                color:#A9A9A9;

            }
            hr { 
                display: block;
                margin-top: 0.5em;
                margin-bottom: 0.5em;
                margin-left: auto;
                margin-right: auto;
                border-style: inset;
                border-width: 1px;
            } 

            th.review, td.review {
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            tr:hover.review {background-color:#f5f5f5;}
            .button {
                border-radius: 4px;
                background-color: #000;
                width:100%;
                height: 50px;
                border: none;
                color: #FFFFFF;
                text-align: center;
                font-size: 18px;
                padding: 10px;

                transition: all 0.5s;
                cursor: pointer;
                margin: 5px;
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
        </style>
        <title>Product List</title>
    </head>
    <body>

        <div class="navbar" align="left"><h2><font color="white">
                <a href="category.html">HOME</a>
                <a href="contactus.jsp">CONTACT US </a>
                <a href="aboutus.jsp">  </a>
                <a href="index.jsp">LOGOUT</a>
                </font>
        </div>
        <br><br><br><br><br><br>
    <center><img src="images/samsung1.jpeg" align="center" height="250px" width="350px" /></center>


    <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecom",
                "root", "root");
        Statement st = con.createStatement();
        ResultSet res;
        res = st.executeQuery("select * from productdetails where productID= " + 5);
        while (res.next()) {
    %>                        


    <h2><font color=" #6A1B9A">Available in stock : <%= res.getInt("productQuantity")%><br>
        <% int s = res.getInt("productQuantity"); %>
        <% if (s < 10) { %> 
        <h3 ><font color ="Red ">Hurry only few are left</font></h3>
            <% }%> 
        Price: <%= res.getInt("productPrice")%>₹</font>
    </h2>
    <%
        }
    %>

    <h2><font color=" #6A1B9A">Watch Description :</font></h2>
    <font color=" #263238">
    Keep a track of the number of steps you take and the calories you burn, set your workout goals, monitor your heart rate and stress levels, and also stay connected via calls and messages by simply strapping the Apple Watch Series 4. Do all of this faster than ever as this smartwatch is powered by a dual-core processor.
    Addition Details: This device's battery life lasts for up to 18 hours, including 45 minutes of using apps and a 30 minute workout with music playback, and checking time and notifications 90 times each. The battery life may vary based on usage. The Apple Watch app is required to use this device's smart functions.
    </font>
    <h3><font color="#212121"> SPECIFICATION :</font></h3>  
    <hr>
    <table>
        <col width="50%">
        <col width="50%">
        <tr>
            <th><font color="#212121">General</font></th>
            <th></th>
        </tr>

        <tr>
            <th>Sales Package</th>
            <td>Smartwatch, Sport Band (Can be Configured for Either S / M or M / L Length), 1 m Magnetic Charging Cable, USB Power Adapter, Quick Start Guide</td>    
        </tr>

        <tr>
            <th>          Model Number      </th>
            <td>          MP032HN/A </td>
        </tr>

        <tr>
            <th>          Model Name      </th>
            <td>          Samsung Watch 1- 42 mm Space Grey Aluminium Case with Black Sport Band      </td>
        </tr>

        <tr>
            <th>  Dial Shape    </th>
            <td>          Rectangle      </td>
        </tr> 

        <tr>
            <th>          Strap Color      </th>
            <td>         Black       </td>
        </tr> 

        <tr>
            <th>          Strap Material      </th>
            <td>          Rubber      </td>
        </tr>

        <tr>
            <th>          Water Resistant      </th>
            <td>         yes      </td>
        </tr>

        <tr>
            <th>Usage      </th>
            <td>          Notifier      </td>
        </tr> 

        <tr>
            <th> Dial Material      </th>
            <td>Aluminum           </td>
        </tr>
    </table>
    <hr>
    <table>
        <col width="50%">
        <col width="50%">
        <tr>
            <th><font color="#212121">Product Details</font></th>
            <th></th>
        </tr>

        <tr>
            <th>Sensors</th>
            <td>Heart Rate Sensor, Accelerometer, Gyrometer, Ambient Light Sensor</td>
        </tr>

        <tr>
            <th>        Compatible Device      </th>
            <td> android devices with icecream sandwitch and above      </td>
        </tr>

        <tr>
            <th>Charge Time      </th>
            <td>90 min     </td>
        </tr>

        <tr>
            <th>Battery Life      </th>
            <td>Upto 18 hrs (Based on Usage)      </td>
        </tr> 

        <tr>
            <th>Rechargeable Battery      </th>
            <td>Yes      </td>
        </tr> 

        <tr>
            <th>Other Features      </th>
            <td>Case Weight: 30 g, Composite Back, Digital Crown, Band Fits 140 - 210 mm Wrists      </td>
        </tr>

    </table>
    <hr>
    <table>
        <col width="50%">
        <col width="50%">
        <tr>
            <th><font color="#212121">Platform And Storage Features</font></th>
            <th></th>
        </tr>
        <tr>
            <th>Operating System</th>
            <td>Tizen 3</td>
        </tr>
        <tr>
            <th>
                Compatible Operating System
            </th>
            <td>
                AndroidOS
            </td>
        </tr>
        <tr>
            <th>
                Number of Cores
            </th>
            <td>
                Dual Core
            </td>
        </tr>
        <tr>
            <th>
                Processor Name

            </th>
            <td>
                S1P  
            </td>
        </tr> 
    </table>
    <hr>        
    <table>
        <col width="50%">
        <col width="50%">
        <tr>
            <th><font color="#212121">Connectivity Features</font></th>
            <th></th>
        </tr>
        <tr>
            <th>Call Function</th>
            <td>Yes</td>
        </tr>
        <tr>
            <th>
                Bluetooth
            </th>
            <td>
                Yes
            </td>
        </tr>
        <tr>
            <th>
                Wi-Fi
            </th>
            <td>
                Yes
            </td>
        </tr>
        <tr>
            <th>
                Bluetooth Version

            </th>
            <td>
                v4.0
            </td>
        </tr> 
    </table>
    <hr>
    <table>
        <col width="50%">
        <col width="50%">
        <tr>
            <th><font color="#212121">Camera And Display Features</font></th>
            <th></th>
        </tr>
        <tr>
            <th>Display Resolution</th>
            <td>312 x 390 Pixels </td>
        </tr>
        <tr>
            <th>
                Display Size

            </th>
            <td>
                1.65 inch

            </td>
        </tr>
        <tr>
            <th>
                Display Type
            </th>
            <td>
                OLED Retina Display

            </td>
        </tr>
        <tr>
            <th>
                Other Display Features

            </th>
            <td>
                OLED Retina Display with Force Touch (450 nits)
            </td>
        </tr> 
    </table>
    <hr>
    <table>
        <col width="50%">
        <col width="50%">
        <tr>
            <th><font color="#212121">Warranty </font></th>
            <th></th>
        </tr>
        <tr>
            <th>Warranty Summary</th>
            <td>1 Year Warranty </td>
        </tr>
        <tr>
            <th>
                Warranty Service Type

            </th>
            <td>
                Carry In

            </td>
        </tr>
        <tr>
            <th>
                Covered in Warranty
            </th>
            <td>
                Manufacturing Defects

            </td>
        </tr>
        <tr>
            <th>
                Not Covered in Warranty

            </th>
            <td>
                Physical Damage
            </td>
        </tr> 
    </table>
    <h3><font color="#9C27B0"> Review about product</font> </h3>
    <table>
        <tr>
            <th ><font color="#212121">Review ID</font></th>
            <th><font color="#212121">User Name</font></th>
            <th><font color="#212121">Review</font></th>
            <th><font color="#212121">EmailID</font></th>
            <th><font color="#212121">Rating</font></th>
        </tr>

        <%
            res = st.executeQuery("select * from productreview where productID= " + 5);
            int count = 0;
            int rating = 0;
            int average = 0;
            while (res.next()) {
                count = count + 1;
        %>  
        <% int i = res.getInt("reviewID");%>
        <% String reveiw = res.getNString("reviewOfWatch");
            String userName = res.getNString("userName");
            String emailID = res.getNString("emailID");
            rating = res.getInt("rating");
            average = (average + rating);

        %>
        <tr>
            <td><font color="#9E9E9E"> <%= i%></font></td>
            <td><font color="#9E9E9E"> <%= userName%></font> </td>
            <td><font color="#9E9E9E"><%= reveiw%></font></td>
            <td><font color="#9E9E9E"><%=emailID%></font></td>
            <td><font color="#9E9E9E"> <%=rating%></font></td>
        </tr>

        <%
            }
            int total = (average / count);
        %>
    </table>
    <h3>Average rating from all users is <%=total%></h3>
    <form action="takeReview.jsp" method="post" id="form1">
        <input type="hidden" name="productID" value="5">  

        <button class="button" type="Submit" form="form1" value="review"><span>Add your review</span></button>  
    </form>


    <form action="AddToCart.jsp" method="post" id="form2">
        <input type="hidden" name="productID" value="5">  
        <button class="button" type="Submit" form="form2" value="Cart"><span>Add to your Cart</span></button>  
    </form>

    <form action="BuyProduct.jsp" method="post" id="form3">
        <input type="hidden" name="productID" value="5">  
        <button class="button" type="Submit" form="form3" value="buy"><span>Buy Product</span></button>  
    </form>
    <form action="productList6.jsp" method="post" id="form4">
        <button class="button" type="Submit" form="form4" value="next"><span>Next Product</span></button>  
    </form>
</body>
</html>
