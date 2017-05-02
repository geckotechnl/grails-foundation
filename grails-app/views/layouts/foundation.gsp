<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<!--[if IE 9]><html class="lt-ie10" lang="en" > <![endif]-->
<html class="no-js" lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><g:layoutTitle default="${grailsApplication.metadata.applicationName}"/></title>
    <asset:stylesheet src="vendor/foundation-sites/assets/foundation.css"/>
    <asset:javascript src="vendor/jquery/dist/jquery.min.js"/>
    <asset:javascript src="vendor/what-input/dist/what-input.min.js"/>
    <asset:javascript src="vendor/foundation-sites/dist/js/foundation.min.js"/>
    <asset:stylesheet src="vendor/motion-ui/dist/motion-ui.min.css"/>
    <asset:javascript src="vendor/motion-ui/dist/motion-ui.min.js"/>
    <g:layoutHead/>
</head>
<body>
<g:layoutBody/>
<script>
    $(document).foundation();
</script>
</body>
</html>