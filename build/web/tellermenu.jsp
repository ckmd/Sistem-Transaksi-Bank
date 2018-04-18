<%-- 
    Document   : tellermenu
    Created on : Apr 16, 2018, 7:49:38 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Teller)</title>
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
        <h1>Selamat Datang di Teller</h1>
        <br>
        <h1>Silahkan Memilih Transaksi</h1>
        <br>
        <div id="login">
        <form>
            <button type="submit"><a href="transaksioffline_transfer.jsp">Transfer</a></button>
            <hr><button type="submit"><a href="transaksioffline_ceksaldo.jsp">Cek Saldo</a></button>
            <hr><button type="submit"><a href="transaksioffline_tariktunai.jsp">Tarik Tunai</a></button>
            <hr><button type="submit"><a href="transaksioffline_setortunai.jsp">Setor Uang</a></button>
        </form>
        </div>
    </body>
</html>
