<%-- 
    Document   : transaksioffline_tariktunaiproses
    Created on : Apr 16, 2018, 8:31:54 PM
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
    Long uangambil = Long.parseLong(request.getParameter("uangambil"));
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
    TransaksiOffline transaksi = new TransaksiOffline(tabungan);
    String atm;
    
    String teller;
    
    
    if (transaksi.ambil(uangambil) == true){
%>
        <h1>Transaksi Berhasil</h1>
        <br>
        <h1>Saldo anda sekarang
        <%
            out.print(tabungan.getSaldo());
        %>
        </h1><br>
        <div id="login">
        
<%    
    } else{   
%>
        <h1>Transaksi Gagal</h1>
        <br>
        <h1>Saldo anda sekarang
        <%
            out.print(transaksi.cekSaldo());
        %>
        </h1>
        <br>
        <div id="login">
        
<%    
    }   
%> 
    <form>
            <button type="submit"><a href="tellermenu.jsp">Kembali ke menu utama</a></button>
            <hr><button type="submit"><a href="usersite.jsp">Keluar</a></button>
        </form>
    </body>
</html>
