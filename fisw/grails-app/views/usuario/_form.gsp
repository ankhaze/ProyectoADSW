<%@ page import="fisw.Usuario" %>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="usuario.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${usuarioInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${usuarioInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

</div>

<sec:access expression="hasRole('ROLE_ADMIN')">

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'fecha_registro', 'error')} ">
	<label for="fecha_registro">
		<g:message code="usuario.fecha_registro.label" default="Fecharegistro" />
		
	</label>
	<g:datePicker name="fecha_registro" precision="day"  value="${usuarioInstance?.fecha_registro}" default="none" noSelection="['': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellido', 'error')} ">
	<label for="apellido">
		<g:message code="usuario.apellido.label" default="Apellido" />
		
	</label>
	<g:textField name="apellido" value="${usuarioInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estudio_pregrado', 'error')} ">
	<label for="estudio_pregrado">
		<g:message code="usuario.estudio_pregrado.label" default="Estudiopregrado" />
		
	</label>
	<g:textField name="estudio_pregrado" value="${usuarioInstance?.estudio_pregrado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estudio_postgrado', 'error')} ">
	<label for="estudio_postgrado">
		<g:message code="usuario.estudio_postgrado.label" default="Estudiopostgrado" />
		
	</label>
	<g:textField name="estudio_postgrado" value="${usuarioInstance?.estudio_postgrado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="usuario.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${usuarioInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="usuario.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${usuarioInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cargos', 'error')} ">
	<label for="cargos">
		<g:message code="usuario.cargos.label" default="Cargos" />
		
	</label>
	<g:select name="cargos" from="${fisw.Cargo.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.cargos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'congresos', 'error')} ">
	<label for="congresos">
		<g:message code="usuario.congresos.label" default="Congresos" />
		
	</label>
	<g:select name="congresos" from="${fisw.Congreso.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.congresos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="usuario.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${usuarioInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'multimedia', 'error')} ">
	<label for="multimedia">
		<g:message code="usuario.multimedia.label" default="Multimedia" />
		
	</label>
	<g:select name="multimedia" from="${fisw.Multimedia.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.multimedia*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="usuario.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${usuarioInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'publicaciones', 'error')} ">
	<label for="publicaciones">
		<g:message code="usuario.publicaciones.label" default="Publicaciones" />
		
	</label>
	<g:select name="publicaciones" from="${fisw.Publicacion.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.publicaciones*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'reportes', 'error')} ">
	<label for="reportes">
		<g:message code="usuario.reportes.label" default="Reportes" />
		
	</label>
	<g:select name="reportes" from="${fisw.Reporte.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.reportes*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tesis', 'error')} ">
	<label for="tesis">
		<g:message code="usuario.tesis.label" default="Tesis" />
		
	</label>
	<g:select name="tesis" from="${fisw.Tesis.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.tesis*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usareas', 'error')} ">
	<label for="usareas">
		<g:message code="usuario.usareas.label" default="Usareas" />
		
	</label>
	<g:select name="usareas" from="${fisw.UsuarioArea.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.usareas*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usproyectos', 'error')} ">
	<label for="usproyectos">
		<g:message code="usuario.usproyectos.label" default="Usproyectos" />
		
	</label>
	<g:select name="usproyectos" from="${fisw.UsuarioProyecto.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.usproyectos*.id}" class="many-to-many"/>

</div>

</sec:access>