

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            div {margin:0;}
            div {


            }
            .map{
                background-color: #fff;
                width: 70%;
                height: 30%;
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
        <title>Contact us</title>
    </head>
    <body>

        <div class="navbar" align="left">
            <h2><font color="white">
                <a href="category.html">HOME</a>
                <a href="contactus.jsp">CONTACT US </a>
                <a href="aboutus.jsp">  </a>
                <a href="index.jsp">LOGOUT</a>
            </h2></font>
        </div>
        <br><br><br><br><br><br>

        <font color="#000"><b><h3>FIND ME AT :</h3></b>
        <h4>
            DEEPAK PARADISE, B WING KALYAN WEST, MAHARASHTRA.</h4></font>
        <div class="map" id="map" style="width:100%;height:500px"></div>

        <script>
            function myMap() {
                var myCenter = new google.maps.LatLng(19.2667719, 73.1255978);
                var mapCanvas = document.getElementById("map");
                var mapOptions = {center: myCenter, zoom: 5};
                var map = new google.maps.Map(mapCanvas, mapOptions);
                var marker = new google.maps.Marker({position: myCenter});
                marker.setMap(map);

                var infowindow = new google.maps.InfoWindow({
                    content: "Right Here!"
                });
                infowindow.open(map, marker);
            }
        </script>

        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyChNCdahD48X0TsH7xXa_QW1OVOOt891I0&callback=myMap"></script>


        <style>
            .fa {
                padding: 20px;
                font-size: 30px;
                width: 50px;
                text-align: center;
                text-decoration: none;
                margin: 5px 2px;
            }

            .fa:hover {
                opacity: 0.7;
            }

            .fa-facebook {
                background: #3B5998;
                color: white;
            }

            .fa-twitter {
                background: #55ACEE;
                color: white;
            }

            .fa-google {
                background: #dd4b39;
                color: white;
            }

            .fa-linkedin {
                background: #007bb5;
                color: white;
            }

            .fa-youtube {
                background: #bb0000;
                color: white;
            }

            .fa-instagram {
                background: #125688;
                color: white;
            }
        </style>

        <font color="#000"><b><h3>MAIL YOUR FEEDBACK :</h3></b>
        </font>
        <form method="post" action="#" id="form1">
            <fieldset>
                <legend><h3>Your feedback is valuable for us:</h3></legend>
                <font color="#000"><h4>
                    Enter your name : <input type="text" placeholder="Batman" name="userName" required><br>

                    EmailID         : <input type="email" placeholder="batman@gmail.com" name="emailID" required><br>
                    Review          :</h4></font><textarea name="review"> </textarea>   
                <button class="button" type="submit" form="form1" value="Submit"><span>Submit</span></button>
                <button class="button" type="reset" form="form1" value="reset"><span>Reset</span></button>

            </fieldset>
        </form>
        <font color="#000"><b><h3>FIND ME SOCIAL MEDIA :</h3></b>
        </font>
    <center>
        <a href="https://www.facebook.com/vishal.sonawane.33" class="fa fa-facebook"></a>
        <a href="https://twitter.com/vshl_sonawane" class="fa fa-twitter"></a>
        <a href="https://plus.google.com/u/0/+VishalSonawane" class="fa fa-google"></a>
        <a href="https://www.linkedin.com/in/vishal-sonawane-aaa56293/" class="fa fa-linkedin"></a>
        <a href="#" class="fa fa-youtube"></a>
        <a href="https://www.instagram.com/vshl_sonawane/" class="fa fa-instagram"></a>
    </center>

</body>
</html>
