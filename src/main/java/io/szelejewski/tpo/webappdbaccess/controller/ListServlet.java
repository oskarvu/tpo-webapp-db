package io.szelejewski.tpo.webappdbaccess.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
    name = "ListServlet",
    urlPatterns = {"/list"}
)
public class ListServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    if (request.getSession().getAttribute("user") == null) {
      request.getRequestDispatcher("/index.jsp").forward(request, response);
    } else {
      request.getRequestDispatcher("/list.jsp").forward(request, response);
    }
  }
}