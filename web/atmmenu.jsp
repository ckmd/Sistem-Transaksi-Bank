<%-- 
    Document   : atmmenu
    Created on : Apr 16, 2018, 11:57:23 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(ATM)</title>
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
        <h1>Selamat Datang di ATM</h1>
        <br>
        <h1>Silahkan Memilih Transaksi</h1>
        <br>
        <div id="login">
            <form name='form-login'>
            <button type="submit"><a href="transaksioffline_transfer.jsp">Transfer</a></button>
            <hr><button type="submit"><a href="transaksioffline_ceksaldo.jsp">Cek Saldo</a></button>
            <hr><button type="submit"><a href="atmtariktunai.jsp">Tarik Tunai</a></button>
            <hr><button type="submit"><a href="transaksioffline_setortunai.jsp">Setor Uang</a></button>
        </form>
        </div>
    </body>
</html>