
<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'cargos', 'error')} ">
    <label for="cargos">
        <g:message code="usuario.cargos.label" default="Cargos" />

    </label>
    <g:select name="cargos" from="${fisw.Cargo.list()}" multiple="multiple" optionKey="id" optionValue="nombre" size="5" value="${usuarioInstance?.cargos*.id}" class="many-to-many"/>


</div>
