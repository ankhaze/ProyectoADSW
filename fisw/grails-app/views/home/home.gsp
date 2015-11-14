<%--
  Created by IntelliJ IDEA.
  User: ank
  Date: 13/11/2015
  Time: 16:50
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="dashboard.header" default="Welcome to Grails Webinar"/> </title>
    <style type="text/css" media="screen">
    #login {
        margin: 15px 0px;
        padding: 0px;
        text-align: center;
    }
    </style>
</head>
<body>

<sec:link controller="admin" expression="hasRole('ROLE_ADMIN')">Admin Services</sec:link>

<sec:link controller="usuario" expression="hasRole('ROLE_USER')">Manage Employee Information</sec:link>

</body>
</html>