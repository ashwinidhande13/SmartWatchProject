

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Add your review</title>
        <style>
            div {margin:0;}
            div {
                max-width: 100%;
                height: 100px;
                background-color: #000;
                color:#ffffff;

            }
            input[type=text],[type=email], select, textarea {
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
            .button {
                border-radius: 4px;
                background-color: #000;
                width:45%;
                height: 80px;
                border: none;
                color: #FFFFFF;
                text-align: center;
                font-size: 28px;
                padding: 20px;

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

    </head>
    <body>
        <%String pID = request.getParameter("productID");%>
        <div><center><h1><b>REVIEW</b></h1></center></div>
        <form method="post" action="addReview.jsp" id="form1">
            <fieldset>
                <legend><h3>Your review for<%= pID%>   </h3></legend>
                <font color="#000"><h4>
                    Enter your name : <input type="text" placeholder="Batman" name="userName" required><br>
                    <input type="hidden" name="productID" value="<%=pID%>"/> 

                    EmailID         : <input type="email" placeholder="batman@gmail.com" name="emailID" required><br>
                    Rating for watch:  <input type="radio" name="rating" value="5"> 5
                    <input type="radio" name="rating" value="4">4   
                    <input type="radio" name="rating" value="3">3 
                    <input type="radio" name="rating" value="2">2 
                    <input type="radio" name="rating" value="1">1 <br>
                    <br> Review          :</h4></font><br><textarea name="review">

                            </textarea>
          <br>
                  <button class="button" type="submit" form="form1" value="Submit"><span>Submit</span></button>
<button class="button" type="reset" form="form1" value="reset"><span>Reset</span></button>

        </fieldset>
        </form>
    </body>
</html>
