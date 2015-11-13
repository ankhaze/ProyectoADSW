<%@ page import="fisw.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="usuario.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${usuarioInstance?.apellido}"/>

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

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estudio_postgrado', 'error')} required">
	<label for="estudio_postgrado">
		<g:message code="usuario.estudio_postgrado.label" default="Estudiopostgrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudio_postgrado" required="" value="${usuarioInstance?.estudio_postgrado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estudio_pregrado', 'error')} required">
	<label for="estudio_pregrado">
		<g:message code="usuario.estudio_pregrado.label" default="Estudiopregrado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estudio_pregrado" required="" value="${usuarioInstance?.estudio_pregrado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'fecha_registro', 'error')} required">
	<label for="fecha_registro">
		<g:message code="usuario.fecha_registro.label" default="Fecharegistro" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha_registro" precision="day"  value="${usuarioInstance?.fecha_registro}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'fotos', 'error')} ">
	<label for="fotos">
		<g:message code="usuario.fotos.label" default="Fotos" />
		
	</label>
	<g:select name="fotos" from="${fisw.Foto.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.fotos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="usuario.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'proyectos', 'error')} ">
	<label for="proyectos">
		<g:message code="usuario.proyectos.label" default="Proyectos" />
		
	</label>
	

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

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'videos', 'error')} ">
	<label for="videos">
		<g:message code="usuario.videos.label" default="Videos" />
		
	</label>
	<g:select name="videos" from="${fisw.Video.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.videos*.id}" class="many-to-many"/>

</div>

