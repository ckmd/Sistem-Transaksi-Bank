<%-- 
    Document   : transaksioffline_tariktunaiatm
    Created on : Apr 17, 2018, 12:06:38 AM
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
        <h1>isi form untuk menarik tunai</h1>
        <div id="login">
        <form name='form-login' action="transaksioffline_tariktunaiproses.jsp">
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
