<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Grails</title>
</head>
<body>



<g:form controller="user" action="login" class="form-signin">
        <g:textField name="username" class="form-control" placeholder="name" required="required" />
        <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
        <g:submitButton class="btn btn-lg btn-primary btn-block" name="login" value="Login" />
          ${flash.message}
</g:form>

</body>
</html>
