includeTargets << grailsScript("_GrailsInit")

pluginAssetsDir = "$foundationSitesPluginDir/grails-app/assets"
appAssetsDir = "$basedir/grails-app/assets"
overwriteAll = false

target(foundationSettings: "Copies the _settings.scss file into the local project directory to customize Foundation.") {
    final String SETTINGS_LOCATION = 'stylesheets/vendor/foundation-sites/scss/settings/_settings.scss'
    copyAsset(SETTINGS_LOCATION)
    event('StatusUpdate', ["Copied $SETTINGS_LOCATION into project."])
}


copyAsset = { String filename ->
    copyFile("$pluginAssetsDir/$filename", "$appAssetsDir/$filename")
}

copyFile = { String from, String to ->
    if (!checkOverwrite(to, 'overwrite')) {
        return
    }
    ant.copy file: from, tofile: to, overwrite: true
}

checkOverwrite = { String dest, String action ->
    File file = new File(dest)
    if (overwriteAll || !file.exists()) {
        return true
    }
    String propertyName = "file.overwrite.$file.name"
    ant.input(addProperty: propertyName, message: "$dest exists, $action?", validargs: 'y,n,a', defaultvalue: 'y')
    if (ant.antProject.properties."$propertyName" == 'n') {
        return false
    }
    if (ant.antProject.properties."$propertyName" == 'a') {
        overwriteAll = true
    }
    return true
}

setDefaultTarget(foundationSettings)
