package fisw


class Usuario extends User{
    Date fecha_registro
    String nombre
    String apellido
    String estudio_pregrado
    String estudio_postgrado
    static hasMany = [cargos: Cargo, multimedia: Multimedia, publicaciones: Publicacion, congresos: Congreso, reportes: Reporte, usproyectos: UsuarioProyecto, tesis: Tesis, usareas: UsuarioArea]
    static constraints = {
        fecha_registro nullable:true
        nombre blank: true
        apellido nullable:true
        estudio_pregrado nullable:true
        estudio_postgrado nullable:true
    }
    Usuario(String username, String password,String nombre, String apellido, String estudio_pregrado, String estudio_postgrado,Date fecha_registro){
        super(username, password)
        this.nombre = nombre
        this.apellido = apellido
        this.estudio_pregrado = estudio_pregrado
        this.estudio_postgrado = estudio_postgrado
        this.fecha_registro = fecha_registro
    }
}
