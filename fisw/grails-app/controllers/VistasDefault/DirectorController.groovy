package VistasDefault

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_DIRE'])
class DirectorController {

    def index() {
        render view:'admin'
    }
}
