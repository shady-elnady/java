<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>

    <head>
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">
        <title>My Spring App</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    </head>

    <body>
        <div class="container">
            <div class="header">
                <h1>Welcome to Spring MVC with Tomcat 11</h1>
            </div>

            <div class="image-container">
                <img src="${pageContext.request.contextPath}/images/spring-logo.png" alt="Spring Logo"
                    class="spring-logo">
            </div>

            <div style="text-align: center;">
                <a href="${pageContext.request.contextPath}/hello" class="button">Go to Hello Page</a>
                <a href="#" class="button" id="testButton">Test JavaScript</a>
            </div>

            <footer style="text-align: center; margin-top: 40px; color: #666;">
                <p>&copy; <span id="current-year"></span> My Spring Application</p>
            </footer>
        </div>

        <script src="${pageContext.request.contextPath}/js/app.js"></script>
    </body>

    </html>