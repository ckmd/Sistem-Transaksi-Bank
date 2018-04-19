<%-- 
    Document   : listTabungan
    Created on : Apr 19, 2018, 12:08:50 PM
    Author     : Rachmad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Tabungan</title>
    <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
    <div id="login">
      <form name='form-login' action="listTabunganProses.jsp">
          <button type="but">Isi Untuk Melihat Tabungan Nasabah</button><hr>
          <span class="fontawesome-user"> ID Nasabah</span>
          <input type="text" name="idnasabah" placeholder="ID Nasabah" >
          <button type="submit">Register</button>
    </form>
    </div>
    </body>
</html>
