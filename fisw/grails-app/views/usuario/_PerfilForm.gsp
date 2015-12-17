<%@ page import="fisw.Usuario" %>
<table style="width:100%">

    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'username', 'error')} required">
            <label for="username">
                <g:message code="usuario.username.label" default="Username" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="username" required="" value="${usuarioInstance?.username}"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
            <label for="password">
                <g:message code="usuario.password.label" default="Password" />
                <span class="required-indicator">*</span>
            </label>
            <g:passwordField name="password" required="" value="${usuarioInstance?.password}"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombre', 'error')} required">
            <label for="nombre">
                <g:message code="usuario.nombre.label" default="Nombre" />
                <span class="required-indicator">*</span>
            </label>
            <g:textField name="nombre" required="" value="${usuarioInstance?.nombre}"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellido', 'error')} ">
            <label for="apellido">
                <g:message code="usuario.apellido.label" default="Apellido" />

            </label>
            <g:textField name="apellido" value="${usuarioInstance?.apellido}"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estudio_pregrado', 'error')} ">
            <label for="estudio_pregrado">
                <g:message code="usuario.estudio_pregrado.label" default="Estudiopregrado" />

            </label>
            <g:textField name="estudio_pregrado" value="${usuarioInstance?.estudio_pregrado}"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'estudio_postgrado', 'error')} ">
            <label for="estudio_postgrado">
                <g:message code="usuario.estudio_postgrado.label" default="Estudiopostgrado" />

            </label>
            <g:textField name="estudio_postgrado" value="${usuarioInstance?.estudio_postgrado}"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div id = "remoto">
            <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cargos', 'error')} ">
                <label for="cargos">
                    <g:message code="usuario.cargos.label" default="Cargos" />

                </label>
                <g:select name="cargos" from="${fisw.Cargo.list()}" multiple="multiple" optionKey="id" optionValue="nombre" size="5" value="${usuarioInstance?.cargos*.id}" class="many-to-many"/>

            </div>
        </div>
        </td>
    </tr>
    <tr>
        <td>
            No funciona
            <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usareas', 'error')} ">
                <label for="usareas">
                    <g:message code="usuario.usareas.label" default="Areas" />

                </label>
                <g:select name="usareas" from="${fisw.Area.list()}" multiple="multiple" optionKey="id" optionValue="nombre" size="5" value="${usuarioInstance?.usareas*.id}" class="many-to-many"/>

            </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'congresos', 'error')} ">
            <label for="congresos">
                <g:message code="usuario.congresos.label" default="Congresos" />

            </label>
            <g:select name="congresos" from="${fisw.Congreso.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.congresos*.id}" class="many-to-many"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'multimedia', 'error')} ">
            <label for="multimedia">
                <g:message code="usuario.multimedia.label" default="Multimedia" />

            </label>
            <g:select name="multimedia" from="${fisw.Multimedia.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.multimedia*.id}" class="many-to-many"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'publicaciones', 'error')} ">
            <label for="publicaciones">
                <g:message code="usuario.publicaciones.label" default="Publicaciones" />

            </label>
            <g:select name="publicaciones" from="${fisw.Publicacion.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.publicaciones*.id}" class="many-to-many"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'reportes', 'error')} ">
            <label for="reportes">
                <g:message code="usuario.reportes.label" default="Reportes" />

            </label>
            <g:select name="reportes" from="${fisw.Reporte.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.reportes*.id}" class="many-to-many"/>

        </div>
        </td>
    </tr>
    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tesis', 'error')} ">
            <label for="tesis">
                <g:message code="usuario.tesis.label" default="Tesis" />

            </label>
            <g:select name="tesis" from="${fisw.Tesis.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.tesis*.id}" class="many-to-many"/>

        </div>
        </td>
    </tr>

    <tr>
        <td>
        <div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'usproyectos', 'error')} ">
            <label for="usproyectos">
                <g:message code="usuario.usproyectos.label" default="Usproyectos" />

            </label>
            <g:select name="usproyectos" from="${fisw.UsuarioProyecto.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.usproyectos*.id}" class="many-to-many"/>

        </div>
        </td>
    </tr>

</table>