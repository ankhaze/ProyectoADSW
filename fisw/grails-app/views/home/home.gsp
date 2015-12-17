<%--
  Created by IntelliJ IDEA.
  User: Memo
  Date: 13-12-2015
  Time: 1:08
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title><g:message code="dashboard.header" default="Aqui llegan todos"/> </title>
    <style type="text/css" media="screen">
    #login {
        margin: 15px 0px;
        padding: 0px;
        text-align: center;
    }
    #status {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 12em;
        float: left;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status li {
        line-height: 1.3;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    </style>
</head>

<body>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>

Welcome
<sec:loggedInUserInfo field="username" />

<div id="status" role="navigation">
    <h2>Link:</h2>
    <ul>
        <sec:ifAllGranted roles='ROLE_USER'> <%--Si es un simple Usuario Cargaran estos controladores --%>
        <g:link controller="Usuario" action="editPerfil">Perfil</g:link>
        </sec:ifAllGranted>

        <sec:ifAllGranted roles='ROLE_ADMIN'><%--Si es un Admin Legendario Cargaran estos controladores --%>
        <a class="list" href="${createLink (controller:'User', action:'edit', id:1)}">Perfil</a></span>
        </sec:ifAllGranted>

        <sec:ifAllGranted roles='ROLE_DIREC'> <%--Si es el supuesto jefe Cargaran estos controladores --%>
            <a class="list" href="${createLink (controller:'User', action:'edit', id:2)}">Perfil</a></span>
        </sec:ifAllGranted>
    </ul>
</div>
</body>
</html>