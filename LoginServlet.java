protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (userDao.isValidUser(username, password)) {
        HttpSession session = request.getSession();
        session.setAttribute("username", username);
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("login.jsp?error=1");
    }
}
