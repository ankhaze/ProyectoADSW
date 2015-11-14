
<%@ page import="fisw.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="usuario.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${usuarioInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuario.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.fecha_registro}">
				<li class="fieldcontain">
					<span id="fecha_registro-label" class="property-label"><g:message code="usuario.fecha_registro.label" default="Fecharegistro" /></span>
					
						<span class="property-value" aria-labelledby="fecha_registro-label"><g:formatDate date="${usuarioInstance?.fecha_registro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="usuario.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${usuarioInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.apellido}">
				<li class="fieldcontain">
					<span id="apellido-label" class="property-label"><g:message code="usuario.apellido.label" default="Apellido" /></span>
					
						<span class="property-value" aria-labelledby="apellido-label"><g:fieldValue bean="${usuarioInstance}" field="apellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.estudio_pregrado}">
				<li class="fieldcontain">
					<span id="estudio_pregrado-label" class="property-label"><g:message code="usuario.estudio_pregrado.label" default="Estudiopregrado" /></span>
					
						<span class="property-value" aria-labelledby="estudio_pregrado-label"><g:fieldValue bean="${usuarioInstance}" field="estudio_pregrado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.estudio_postgrado}">
				<li class="fieldcontain">
					<span id="estudio_postgrado-label" class="property-label"><g:message code="usuario.estudio_postgrado.label" default="Estudiopostgrado" /></span>
					
						<span class="property-value" aria-labelledby="estudio_postgrado-label"><g:fieldValue bean="${usuarioInstance}" field="estudio_postgrado"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="usuario.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${usuarioInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="usuario.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${usuarioInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.cargos}">
				<li class="fieldcontain">
					<span id="cargos-label" class="property-label"><g:message code="usuario.cargos.label" default="Cargos" /></span>
					
						<g:each in="${usuarioInstance.cargos}" var="c">
						<span class="property-value" aria-labelledby="cargos-label"><g:link controller="cargo" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.congresos}">
				<li class="fieldcontain">
					<span id="congresos-label" class="property-label"><g:message code="usuario.congresos.label" default="Congresos" /></span>
					
						<g:each in="${usuarioInstance.congresos}" var="c">
						<span class="property-value" aria-labelledby="congresos-label"><g:link controller="congreso" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="usuario.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${usuarioInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.multimedia}">
				<li class="fieldcontain">
					<span id="multimedia-label" class="property-label"><g:message code="usuario.multimedia.label" default="Multimedia" /></span>
					
						<g:each in="${usuarioInstance.multimedia}" var="m">
						<span class="property-value" aria-labelledby="multimedia-label"><g:link controller="multimedia" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="usuario.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${usuarioInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.publicaciones}">
				<li class="fieldcontain">
					<span id="publicaciones-label" class="property-label"><g:message code="usuario.publicaciones.label" default="Publicaciones" /></span>
					
						<g:each in="${usuarioInstance.publicaciones}" var="p">
						<span class="property-value" aria-labelledby="publicaciones-label"><g:link controller="publicacion" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.reportes}">
				<li class="fieldcontain">
					<span id="reportes-label" class="property-label"><g:message code="usuario.reportes.label" default="Reportes" /></span>
					
						<g:each in="${usuarioInstance.reportes}" var="r">
						<span class="property-value" aria-labelledby="reportes-label"><g:link controller="reporte" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.tesis}">
				<li class="fieldcontain">
					<span id="tesis-label" class="property-label"><g:message code="usuario.tesis.label" default="Tesis" /></span>
					
						<g:each in="${usuarioInstance.tesis}" var="t">
						<span class="property-value" aria-labelledby="tesis-label"><g:link controller="tesis" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.usareas}">
				<li class="fieldcontain">
					<span id="usareas-label" class="property-label"><g:message code="usuario.usareas.label" default="Usareas" /></span>
					
						<g:each in="${usuarioInstance.usareas}" var="u">
						<span class="property-value" aria-labelledby="usareas-label"><g:link controller="usuarioArea" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.usproyectos}">
				<li class="fieldcontain">
					<span id="usproyectos-label" class="property-label"><g:message code="usuario.usproyectos.label" default="Usproyectos" /></span>
					
						<g:each in="${usuarioInstance.usproyectos}" var="u">
						<span class="property-value" aria-labelledby="usproyectos-label"><g:link controller="usuarioProyecto" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
