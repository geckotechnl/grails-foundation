class FoundationGrailsPlugin {
    // the plugin version
    def version = "6.3.1"
    // the version or versions of Grails the plugin is designed for
    def grailsVersion = "2.4 > *"
    // resources that are excluded from plugin packaging
    def pluginExcludes = [
        "grails-app/views/error.gsp",
        "grails-app/views/test.gsp",
        "grails-app/assets/**/.bower.json",
        "grails-app/assets/**/bower.json",
        "grails-app/assets/**/.bowerrc",
        "grails-app/assets/**/gulpfile.js",
        "grails-app/assets/**/Gulpfile.js",
        "grails-app/assets/**/composer.json",
        "grails-app/assets/**/package.json",
        "grails-app/assets/**/yarn.lock",
        "grails-app/assets/stylesheets/vendor/foundation-sites/.github",
        "grails-app/assets/stylesheets/vendor/foundation-sites/assets/**",
        "grails-app/assets/stylesheets/vendor/foundation-sites/customizer/**",
        "grails-app/assets/stylesheets/vendor/foundation-sites/dist/**",
        "grails-app/assets/stylesheets/vendor/foundation-sites/.eslintrc",
        "grails-app/assets/stylesheets/vendor/foundation-sites/.sass-lint.yml",
        "grails-app/assets/stylesheets/vendor/foundation-sites/browserstack.json",
        "grails-app/assets/stylesheets/vendor/foundation-sites/code-of-conduct.md",
        "grails-app/assets/stylesheets/vendor/foundation-sites/docslink.sh",
        "grails-app/assets/stylesheets/vendor/jquery/external/**",
        "grails-app/assets/stylesheets/vendor/jquery/src/**",
        "grails-app/assets/stylesheets/vendor/motion-ui/dist/**",
        "grails-app/assets/stylesheets/vendor/motion-ui/docs/**",
        "grails-app/assets/stylesheets/vendor/motion-ui/lib/**",
        "grails-app/assets/stylesheets/vendor/what-input/src/**",
    ]

    def title = "Foundation for Sites Plugin" // Headline display name of the plugin
    def author = "Geckotech"
    def authorEmail = "info@geckotech.nl"
    def description = '''\
Foundation for Sites assets
'''

    // URL to the plugin's documentation
    def documentation = "http://grails.org/plugin/foundation-sites"

    // Extra (optional) plugin metadata

    // License: one of 'APACHE', 'GPL2', 'GPL3'
    def license = "APACHE"

    // Details of company behind the plugin (if there is one)
    def organization = [ name: "Geckotech", url: "https://www.geckotech.nl" ]

    // Any additional developers beyond the author specified above.
//    def developers = [ [ name: "Joe Bloggs", email: "joe@bloggs.net" ]]

    // Location of the plugin's issue tracker.
    def issueManagement = [ url: "https://github.com/geckotechnl/grails-foundation/issues" ]

    // Online location of the plugin's browseable source code.
    def scm = [ url: "https://github.com/geckotechnl/grails-foundation/tree/2.x" ]

    def doWithWebDescriptor = { xml ->
        // TODO Implement additions to web.xml (optional), this event occurs before
    }

    def doWithSpring = {
        // TODO Implement runtime spring config (optional)
    }

    def doWithDynamicMethods = { ctx ->
        // TODO Implement registering dynamic methods to classes (optional)
    }

    def doWithApplicationContext = { ctx ->
        // TODO Implement post initialization spring config (optional)
    }

    def onChange = { event ->
        // TODO Implement code that is executed when any artefact that this plugin is
        // watching is modified and reloaded. The event contains: event.source,
        // event.application, event.manager, event.ctx, and event.plugin.
    }

    def onConfigChange = { event ->
        // TODO Implement code that is executed when the project configuration changes.
        // The event is the same as for 'onChange'.
    }

    def onShutdown = { event ->
        // TODO Implement code that is executed when the application shuts down (optional)
    }
}
