<%-- 
    Document   : transaksioffline_tariktunai
    Created on : Apr 16, 2018, 7:04:25 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut(Offline)</title>
       <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">
    </head>
    <body>
        <h1>Masukkan Jumlah Uang yang Ingin diambil</h1>
        <div id="login">
        <form name='form-login' action="atmtariktunaiatmproses.jsp">
            <table>
                <tr>
                    <td><input type="text" name="uangambil" placeholder="nominal"></td>
                </tr>
            </table>
            <button type="submit">Tarik</button>
        </form>
        </div>
    </body>
</html>
