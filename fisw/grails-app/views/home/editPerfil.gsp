<%--
  Created by IntelliJ IDEA.
  User: Memo
  Date: 13-12-2015
  Time: 12:10
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<h2>Perfil</h2>
<g:each in="${usuarios}" var="usuario" status="i">
        ${i+1}. Nombre: ${usuario.nombre}
        <br/>
        &nbsp &nbsp Mail: ${usuario.username}
        <br/>
    <br/>

</g:each>
</body>
</html>