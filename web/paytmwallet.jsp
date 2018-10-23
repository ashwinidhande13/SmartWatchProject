

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            div {
                max-width: 100%;
                height: 750px;
                background-color: #E0E0E0;
                color:#000;    
            }
            input[type=submit] {
                background-color: #fff;
                color: #125688;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                width: 350px ;
                height:80px ;
            }

            input[type=submit]:hover {
                background-color: #F5F5F5;
            }
        </style>
    </head>
    <body>
    <center><img src="images/paytmwallet.jpg" align="center" height="150px" width="300px" /></center>
    <div>
        <center><h3><b><br/>SCAN QR CODE :</b></h3></center>
        <center><br/><img src="images/paytmqr.jpg" align="center" height="350px" width="350px" /><br/></center>
        <form action="tezwallet.jsp" method="post">
            <center> <br/><br/> <input type="submit" value="TEZ"/></center>
        </form>
        <form action="payment.html" method="post">
            <center><input type="submit" value="CREDIT CARD"/></center>
        </form>
        <form action="trackorder.html" method="post">
            <center><input type="submit" value="TRACK"/></center>
        </form>
    </div>

</body>
</html>
