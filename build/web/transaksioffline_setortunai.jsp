<%-- 
    Document   : transaksioffline_setortunai
    Created on : Apr 16, 2018, 7:04:36 PM
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
        <h1>masukkan nominal setor tunai</h1>
        <div id="login">
        <form name='form-login' action="transaksioffline_setortunaiproses.jsp">
            <table>
                <tr>
                    <td><input type="text" name="uangsetor" placeholder="nominal"></td>
                </tr>
            </table>
            <button type="submit">Simpan</button>
        </form>
        </div>
    </body>
</html>
