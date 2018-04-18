<%-- 
    Document   : tellerform
    Created on : Apr 14, 2018, 6:29:04 PM
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
        <div id="login">
        <form name='form-login' action="tellerformproses.jsp">
            <table>
                <tr>
                    <td><input type="text" name="norek" placeholder="NO Rekening" ></td>
                </tr>
                <tr>
                    <td><input type="text" name="password" placeholder="Password" ></td>
                </tr>
            </table>
            <button type="submit">Login</button>
        </form>
        </div>
    </body>
</html>
