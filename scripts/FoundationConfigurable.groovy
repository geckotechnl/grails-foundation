includeTargets << grailsScript("_GrailsInit")

pluginAssetsDir = "$foundationSitesPluginDir/grails-app/assets"
appAssetsDir = "$basedir/grails-app/assets"
overwriteAll = false

target(foundationConfigurable: "Copies the foundation files into the local project directory to fully configure Foundation components.") {
    final String FOUNDATION_ASSETS = 'stylesheets/vendor/foundation-sites/assets/foundation.scss'
    final String FOUNDATION_LOCATION = 'stylesheets/vendor/foundation-sites/scss/foundation.scss'
    final String SETTINGS_LOCATION = 'stylesheets/vendor/foundation-sites/scss/settings/_settings.scss'
    copyAsset(FOUNDATION_ASSETS)
    copyAsset(FOUNDATION_LOCATION)
    copyAsset(SETTINGS_LOCATION)
    event('StatusUpdate', ["Copied $FOUNDATION_ASSETS, $FOUNDATION_LOCATION and $SETTINGS_LOCATION into project."])
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

setDefaultTarget(foundationConfigurable)
