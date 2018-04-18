<%-- 
    Document   : usersite
    Created on : Apr 14, 2018, 6:14:10 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
        <h1>Selamat Datang di Bank Krut</h1>
        <h1>Silahkan pilih jalur transaksi yang diinginkan</h1>
        <br>
        <div id="login">
        <form name='form-login'>
            <button type="but"><a href="transaksionline.jsp">Online</a></button>
            <hr><button type="but"><a href="tellerform.jsp">Teller</a></button>
            <hr><button type="but"><a href="atmform.jsp">ATM</a></button>
        </form>
        </div>
    </body>
</html>
