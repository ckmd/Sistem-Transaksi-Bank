<%-- 
    Document   : transaksioffline_tariktunaiatmproses
    Created on : Apr 17, 2018, 12:06:44 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOffline, model.Atm"%>
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
    Atm transaksi = new Atm(tabungan);
    
    
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
        </h1><br>
                <div id="login">

<%    
    }   
%>        
<form name='form-login'>
            <button type="submit"><a href="atmmenu.jsp">Kembali ke menu utama</a></button>
            <hr><button type="submit"><a href="usersite.jsp">Keluar</a></button>
        </form>
        </div>
    </body>
</html>

