<%-- 
    Document   : admincreatetabungan
    Created on : Apr 15, 2018, 10:56:50 AM
    Author     : Rachmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
 `  <meta charset="UTF-8">
    <title>Register Tabungan</title>  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,700">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="cssTable/style.css">  

</head>
<body>
    <h1>Silahkan mengisi form di bawah ini untuk membuat tabungan baru</h1>
    <div id="login">
      <form name='form-login' action="adminSiteCreateTabunganLogic.jsp">
            <table>
                <tr>
                    <td><input type="text" name="rekening" placeholder="ID REKENING"></td>
                </tr>
                <tr>
                    <td><input type="text" name="user" placeholder="USERNAME"></td>
                </tr>
                <tr>
                    <td><input type="text" name="pass" placeholder="PASSWORD"></td>
                </tr>
                <tr>
                    <td><input type="text" name="saldo" placeholder="SALDO"></td>
                </tr>
                <tr>
                    <td><input type="text" name="idnasabah" placeholder="ID NASABAH"></td>
                </tr>
                <tr>
                    <td><button type="submit"> submit </button></td>
                </tr>
            </table>
            </form>
    </div>
</body>
</html>