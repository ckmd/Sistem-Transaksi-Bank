<%-- 
    Document   : adminsitecreatenasabah
    Created on : Apr 15, 2018, 10:54:25 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bank Krut</title>
    </head>
    <body>
        <h1>Register Nasabah</h1>
        <br>
        <form action="adminsitecreatenasabahproses.jsp">
            <table>
                <tr>
                    <td>ID Nasabah : </td>
                    <td><input type="text" name="idnasabah"></td>
                </tr> 
                <tr>
                    <td><button type="submit">Buat</button></td>
                    <td><button><a href="adminsitecreate.jsp"> Kembali </a></button></td>
                </tr>
           </table>
        </form>
    </body>
</html>
