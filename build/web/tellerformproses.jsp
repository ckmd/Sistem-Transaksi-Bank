<%-- 
    Document   : tellerformproses
    Created on : Apr 16, 2018, 4:45:09 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Tabungan"%>
<%@page import="model.TransaksiOffline"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Teller)</title>
        <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
<%
    Long norek = Long.parseLong(request.getParameter("norek"));
    int pass = Integer.parseInt(request.getParameter("password"));
    
    Tabungan tabungan = new Tabungan(norek, "a", pass, 0L);
    TransaksiOffline transaksi = new TransaksiOffline(tabungan);
    
    if (transaksi.login(norek, pass)){
        session.setAttribute("tabungan", transaksi.getTabungan());
        response.sendRedirect("tellermenu.jsp");
    } else {
%>
        <h1>User Tidak Ada atau Password Salah</h1>
        <br>
        <h1>Silahkan mengulang kembali</h1>
        <br>
        <div id="login">
        <form>
            <button type="submit"><a href="tellerform.jsp">Kembali</a></button>
        </form>
        </div>
<%    
    }
%>

    </body>
</html>
