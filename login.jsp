<body>
    <div class="container">
        <h1>Login</h1>
        <form action="LoginServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>
            <button type="submit">Login</button>
        </form>

        <p><a href="index.jsp">Back to Home</a></p>

        <%-- Display error message if login fails --%>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red;">Invalid username or password. Please try again.</p>
        <% } %>
        
        <%-- Display message if registration is successful --%>
        <% String registration = request.getParameter("registration");
            if (registration != null && registration.equals("success")) { %>
                <p style="color: green;">Your registration was successful. Please login.</p>
        <% } %>
    </div>
</body>
