<%-- 
    Document   : adminsitecreatenasabah
    Created on : Apr 15, 2018, 10:54:25 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
 `  <meta charset="UTF-8">
    <link rel="stylesheet" href="css/style.css">
    <title>Register Nasabah</title>  
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,700">

</head>
<body>
    <div id="login">
      <form name='form-login' action="adminsitecreatenasabahproses.jsp">
          <button type="but">Register Nasabah</button><hr><hr>
          <span class="fontawesome-user"> ID Nasabah</span>
          <input type="text" name="idnasabah">
          <span class="fontawesome-user"> NAMA</span>
          <input type="text" name="usernasabah">
          <button type="submit">Register</button>
    </form>
    </div>
</body>
</html>