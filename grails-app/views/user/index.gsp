<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Simple Login</title>
</head>
<body>

  <g:if test="${session.user}" class="secret">
    <div class="wrapper-s">
      Login as : ${session.user} | <g:link action="logout">Logout</g:link>
      <br/>
      <h1>Добро пожаловать в секретный раздел</h1>
    </div>
  </g:if>

  <g:else>
      <g:form controller="user" action="login" class="form-signin">
          <g:textField name="username" class="form-control" placeholder="name" required="required" />
          <g:passwordField name="password" class="form-control" placeholder="Password" required="required" />
          <g:submitButton class="btn btn-lg btn-primary btn-block" name="login" value="Вход" />
          <div id="notification">${flash.message}</div>
          <div class="message">Tips : try user/user</div>
      </g:form>
  </g:else>



</body>
</html>
