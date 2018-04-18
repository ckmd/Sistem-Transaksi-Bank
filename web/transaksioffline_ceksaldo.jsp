<%-- 
    Document   : transaksioffline_ceksaldo
    Created on : Apr 16, 2018, 7:03:58 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOffline"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Offline)</title>
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
<%
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
    TransaksiOffline transaksi = new TransaksiOffline(tabungan);
    
%>
        <h1>Saldo anda
        
        <%
            out.print(transaksi.cekSaldo());
        %>
        </h1><br>
        <div id="login">
        <form>
            <button type="submit"><a href="tellermenu.jsp">Kembali ke menu utama</a></button>
            <hr><button type="submit"><a href="usersite.jsp">Keluar</a></button>
        </form>
        </div>
    </body>
</html>
