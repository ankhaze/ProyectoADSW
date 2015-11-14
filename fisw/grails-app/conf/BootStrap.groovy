import com.fisw.*
import fisw.*
class BootStrap {

    def init = { servletContext ->
        def usuarioRol= new Rol('ROLE_USER').save(failOnError: true)
        def adminRol= new Rol('ROLE_ADMIN').save(failOnError: true)

        def usuarioUser=new User('user','pass').save(failOnError: true)
        def adminUser= new User('track','0303456').save(failOnError: true)
        UserRol.create usuarioUser,usuarioRol,true
        UserRol.create adminUser,adminRol,true
    }
    def destroy = {
    }
}
