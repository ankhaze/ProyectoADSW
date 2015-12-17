import fisw.*
class BootStrap {

    def init = { servletContext ->

        def adminRol= new Rol('ROLE_ADMIN').save(failOnError: true)
        def directorRol= new Rol('ROLE_DIREC').save(failOnError: true)
        def usuarioRol= new Rol('ROLE_USER').save(failOnError: true)

        def adminUser= new Usuario(username: 'admin',password: 'admin',enabled: true,nombre: 'Administrador', accountExpired: false, accountLocked: false, passwordExpired: false).save(failOnError: true)
        def directorUser= new Usuario(username: 'direc',password: 'direc',enabled: true,nombre: 'Director', accountExpired: false, accountLocked: false, passwordExpired: false).save(failOnError: true)
        def usuarioUser=new Usuario(username: 'user',password: 'user',enabled: true,nombre: 'Usuario', accountExpired: false, accountLocked: false, passwordExpired: false).save(failOnError: true)

        //def user1 = new Usuario(nombre: 'Administrador',Usuario:adminUser).save()
        //def user2 = new Usuario(nombre: 'Director',Usuario:directorUser).save()
        //def user3 = new Usuario(nombre: 'Usuario',Usuario:usuarioUser).save()
        def espregrado = new Cargo(nombre: "Estudiante de Pregrado").save()
        def espstgrado = new Cargo(nombre: "Estudiante de Postgrado").save()
        def trabajador = new Cargo(nombre: "Trabajador").save()
        def jefelab = new Cargo(nombre: "Jefe de Laboratorio").save()
        def colaboradorN = new Cargo(nombre: "Colaborador Nacional").save()
        def colaboradorI = new Cargo(nombre: "Colaborador Internacional").save()
        def biotecv   = new Area(nombre: "Biotecnología vegetal").save()
        def comp   = new Area(nombre: "Compuestos bioactivos").save()
        def microb   = new Area(nombre: "Microbiología").save()
        def bioteca   = new Area(nombre: "Biotecnología Ambiental").save()

        UserRol.create adminUser,adminRol,true
        UserRol.create directorUser,directorRol,true
        UserRol.create usuarioUser,usuarioRol,true


    }
    def destroy = {
    }
}
