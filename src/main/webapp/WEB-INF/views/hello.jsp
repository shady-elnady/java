<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <html>

    <head>
        <title>Hello Page</title>
        <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    </head>

    <body>
        <div class="container">
            <div class="header">
                <h1>Hello Page</h1>
            </div>

            <div style="text-align: center; padding: 40px;">
                <h2>${message}</h2>
                <p><strong>Current time:</strong> ${timestamp}</p>

                <div class="image-container">
                    <img src="${pageContext.request.contextPath}/images/spring-logo.png" alt="Spring Logo"
                        class="spring-logo">
                </div>

                <a href="${pageContext.request.contextPath}/" class="button">Back to Home</a>
            </div>

            <footer style="text-align: center; margin-top: 40px; color: #666;">
                <p>&copy; <span id="current-year"></span> My Spring Application</p>
            </footer>
        </div>

        <script src="${pageContext.request.contextPath}/js/app.js"></script>
    </body>

    </html>