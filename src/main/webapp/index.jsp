<!DOCTYPE html>
<html>

<head>
    <title>My Spring Web App</title>
</head>

<body>
    <h1>Welcome to My Spring Web Application</h1>
    <p>This JSP page is served by Tomcat with Spring framework.</p>

    <h2>Test Spring Beans:</h2>
    <form action="hello" method="post">
        <input type="submit" value="Test Spring Service">
    </form>

    <p>
        <%= new java.util.Date() %>
    </p>
</body>

</html>