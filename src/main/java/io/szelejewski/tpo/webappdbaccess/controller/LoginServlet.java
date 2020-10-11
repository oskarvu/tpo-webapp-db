package io.szelejewski.tpo.webappdbaccess.controller;

import io.szelejewski.tpo.webappdbaccess.bussiness.User;
import io.szelejewski.tpo.webappdbaccess.data.UserDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(
    name = "LoginServlet",
    urlPatterns = {"/login"},
    loadOnStartup = 1)
public class LoginServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    HttpSession session = request.getSession();
    String usernameInput = request.getParameter("username");
    String passwordInput = request.getParameter("password");
    User user = null;
    if (!UserDB.userExists(usernameInput)) {
      request.setAttribute("wrongUser", "Incorrect user.");
      request.setAttribute("usernameInput", usernameInput);
      request.getRequestDispatcher("/index.jsp").forward(request, response);
    } else if (!UserDB.isPasswordOK(usernameInput, passwordInput)) {
      request.setAttribute("wrongPassword", "Wrong password.");
      request.setAttribute("usernameInput", usernameInput);
      request.getRequestDispatcher("/index.jsp").forward(request, response);
    } else {
      user = UserDB.selectUser(usernameInput);
      session.setAttribute("user", user);
      response.sendRedirect("/list");
    }
  }
}
