# grails-foundation
Foundation for Sites for Grails projects

Include [ZURB Foundation for Sites](http://foundation.zurb.com/) and [Motion UI](http://zurb.com/playground/motion-ui) in a Grails 2.x project, directly usable with the ```sass-asset-pipeline``` plugin.

## Prerequisites

The asset-pipeline must be configured with the [sass-asset-pipeline](https://github.com/bertramdev/asset-pipeline/tree/master/sass-asset-pipeline) plugin to compile the Foundation SCSS.
Foundation 6 supports the latest ```sass-asset-pipeline``` based on jsass, but in this case Java 8 is required. Older ```JRuby``` based plugins should also work.

## Installation

*This plugin is pending approval for the Grails Plugin repository.*

When it is approved, it can be installed by adding the plugin to ```BuildConfig.groovy```:

```groovy
plugins {
  // plugins for the compile step
  /* other plugins */
  compile ":foundation-sites:6.3.1"
}
```

## Usage

The plugin includes a ```foundation``` template which includes all dependencies on Foundation.

```html
<meta name="layout" content="foundation">
```

If you want to use the default Foundation styling, this is all you need. By default all components are included.
For Motion UI the [default CSS](https://github.com/zurb/motion-ui/blob/master/docs/classes.md) and JavaScript is included.

## Custom settings

Foundation's default settings can be overridden by customizing the SCSS settings file.

To install this file in your local project, run the script:

```
grails foundation-settings
```

The settings file will be copied to:

```
grails-app/assets/stylesheets/vendor/foundation-sites/scss/settings/_settings.scss
```

Modify this file in your local project to customize any settings.

## Versioning

The plugin follows the same versioning as Foundation.
