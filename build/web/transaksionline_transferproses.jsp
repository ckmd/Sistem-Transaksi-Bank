<%-- 
    Document   : transaksionline_transferproses
    Created on : Apr 15, 2018, 9:42:47 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOffline"%>
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
    Long rektujuan = Long.parseLong(request.getParameter("rektujuan"));
    Long uangtransfer = Long.parseLong(request.getParameter("uangtransfer"));
    Tabungan tabungan = (Tabungan) session.getAttribute("tabungan");
    TransaksiOffline transaksi = new TransaksiOffline(tabungan);
    
    if (transaksi.transfer(uangtransfer, rektujuan)== true){
%>
        <h1>Transaksi Berhasil</h1>
        <br>
        <h1>Saldo anda sekarang
        <%
            out.print(transaksi.cekSaldo());
        %>
        
<%    
    } else{   
%>
        <h1>Transaksi Gagal</h1>
        <br>
        <h1> saldo anda sekarang 
        <%
            out.print(transaksi.cekSaldo());
        %>

<%    
    }   
%>        
        </h1>
        <br>
        <div id="login">
        <form name='form-login'>
            <button type="submit"><a href="transaksionlinemenu.jsp">Kembali ke menu utama</a></button>
            <hr><button type="submit"><a href="usersite.jsp">Keluar</a></button>
        </form>
        </div>
    </body>
</html>