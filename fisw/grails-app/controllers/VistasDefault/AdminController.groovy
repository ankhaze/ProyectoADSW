package VistasDefault

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_DIREC'])
class AdminController {

    def index() {
        render view:'admin'
    }
}
