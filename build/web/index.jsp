
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 40%;
        }

        #customers td, #customers th {
            border: 1px solid #ddd;
            padding: 8px;
        }

        #customers tr:nth-child(even){background-color: #f2f2f2;}

        #customers tr:hover {background-color: #ddd;}

        #customers th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            background-color:#000;
            color: white;
        }
        * {
            box-sizing: border-box;
        }

        input[type=text] ,select, textarea{
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            resize: vertical;
        }

        input[type=password] ,select, textarea{
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            resize: vertical;
        }
        label {
            padding: 12px 12px 12px 0;
            display: inline-block;
        }
        input[type=reset] {
            background-color: #6b5b95;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
            width: 100%;
        }
        input[type=submit]  {
            background-color: #6b5b95;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
            width: 100%;

        }

        input[type=submit]:hover {
            background-color: #92a8d1;

        }
        input[type=reset]:hover {
            background-color: #92a8d1;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }

        .col-25 {
            float: left;
            width: 100%;
            margin-top: 6px;
        }

        .col-75 {
            float: left;
            width: 100%;
            margin-top: 6px;
        }

        /* Clear floats after the columns */
        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
        @media (max-width: 600px) {
            .col-25, .col-75, input[type=submit] {
                width: 100%;
                margin-top: 0;
            }
        }
        @media (max-width: 600px) {
            .col-25, .col-75, input[type=reset] {
                width: 100%;
                margin-top: 0;
            }
        }

        div {margin:0;}
        div {
            width: 100%;
            height: 100px;
            color:#ffffff;

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
        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            width:400px;
            height:800px;
        }
        .button {
            border-radius: 4px;
            background-color: #000;
            width:300px;
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
            position: relative;
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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn </title>
    </head>
    <body>
        <div class="navbar"><center><h2><font color="Red">Digi</font>Watch</h2></center></div>
        <div></div>
        <form method="post" action="login.jsp" id="form1">
            <center>
                <table border="1" width="30%" cellpadding="3" id ="customers">
                    <thead>
                        <tr>
                            <th colspan="2"><center>Login Here</center></th>
                    </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>User Name</td>
                            <td><input type="text" name="uname" value="" placeholder="Username" required /></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="pass" value="" placeholder="password" required /></td>
                        </tr>
                        <tr>
                            <td> <button class="button" type="submit" form="form1" value="Submit"><span>LogIn</span></button></td>
                            <td><center> <button class="button" type="reset" form="form1" value="reset"><span>Reset</span></button></center></td>
                    </tr>
                    <tr>
                        <td colspan="2">Not Yet Registered? <a href="reg.jsp">Register Here</a></td>
                    </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>