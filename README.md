# Grails foundation-sites plugin
Foundation for Sites for Grails projects

Include [ZURB Foundation for Sites](http://foundation.zurb.com/) and [Motion UI](http://zurb.com/playground/motion-ui) in a Grails 2.x project, directly usable with the ```sass-asset-pipeline``` plugin.

## Prerequisites

The asset-pipeline must be configured with the [sass-asset-pipeline](https://github.com/bertramdev/asset-pipeline/tree/master/sass-asset-pipeline) plugin to compile the Foundation SCSS.
Foundation 6 supports the latest ```sass-asset-pipeline``` based on jsass, but in this case Java 8 is required. Older ```JRuby``` based plugins should also work.

## Installation

Install by adding the plugin to ```BuildConfig.groovy```:

```groovy
plugins {
  // plugins for the compile step
  /* other plugins */
  compile ":foundation-sites:6.3.1.1"
}
```

To support compilation of ES6 used in Foundation, for partial includes, you must add the following to ```Config.groovy```:

```groovy
grails {
    assets {
        minifyOptions = [languageMode: 'ES6', targetLanguage: 'ES5']
    }
}
```

## Usage

### Foundation template
The plugin includes a ```foundation``` template which includes all dependencies on Foundation.

```html
<meta name="layout" content="foundation">
```

If you want to use the default Foundation styling, this is all you need. By default all components are included.
For Motion UI the [default CSS](https://github.com/zurb/motion-ui/blob/master/docs/classes.md) and JavaScript is included.

### Manual include

If you do not wish to include everything, you can include parts of the plugin manually:

```
<asset:stylesheet src="vendor/foundation-sites/assets/foundation.css"/>
<asset:javascript src="vendor/jquery/dist/jquery.min.js"/>
<asset:javascript src="vendor/what-input/dist/what-input.min.js"/>
<asset:javascript src="vendor/foundation-sites/dist/js/foundation.min.js"/>
<asset:stylesheet src="vendor/motion-ui/dist/motion-ui.min.css"/>
<asset:javascript src="vendor/motion-ui/dist/motion-ui.min.js"/>
```

If you use the JavaScript components, then ```jQuery``` is required. The dependency ```what-input``` is optional, but recommended for better accessibility.
You also should initialize the components just before closing the body:

```
<script>
    $(document).foundation();
</script>
```

For more information, see the [Foundation for Sites documentation](http://foundation.zurb.com/sites/docs/javascript.html).

## Custom settings

Foundation's default settings can be overridden by customizing the SCSS settings file.

To install this file in your local project, run the script:

```
grails foundation-configure
```

The settings file will be copied to:

```
grails-app/assets/stylesheets/vendor/foundation-sites/scss/settings/_settings.scss
```

Modify this file in your local project to customize any settings.

## Versioning

The plugin follows the same versioning as Foundation, but may append a "patch" version for patches to the plugin unrelated to Foundation upgrades.

## Release history

|version|date|notes|
|---|---|---|
|6.3.1.1|2017-06-23|Fixed release, include assets.|
|6.3.1|2017-05-02|Broken initial release. Missing assets.|
