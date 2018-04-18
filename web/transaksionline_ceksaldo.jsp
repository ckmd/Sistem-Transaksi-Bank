<%-- 
    Document   : transaksionline_ceksaldo
    Created on : Apr 16, 2018, 10:06:53 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOnline"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Online)</title>
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
<%
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
    TransaksiOnline transaksi = new TransaksiOnline(tabungan);
    
%>
        <h1>Saldo anda 
        <%
            out.print(transaksi.cekSaldo());
        %>
        </h1><br>
        <div id="login">
        <form>
            <button type="submit"><a href="transaksionlinemenu.jsp">Kembali ke menu utama</a></button>
            <hr><button type="submit"><a href="usersite.jsp">Keluar</a></button>
        </form>
        </div>
    </body>
</html>