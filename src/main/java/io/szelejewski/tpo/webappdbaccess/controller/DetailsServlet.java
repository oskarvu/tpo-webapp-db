package io.szelejewski.tpo.webappdbaccess.controller;

import io.szelejewski.tpo.webappdbaccess.bussiness.Resource;
import io.szelejewski.tpo.webappdbaccess.bussiness.User;
import io.szelejewski.tpo.webappdbaccess.data.ResourceDB;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(
    name = "DetailsServlet",
    urlPatterns = {"/details"}
    )
public class DetailsServlet extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    HttpSession session = request.getSession();
    User user = (User) session.getAttribute("user");
    if (user == null) {
      request.getRequestDispatcher("/index.jsp").forward(request, response);
    } else {
    	String id = request.getParameter("id");
        Resource resource = user != null ? user.getResourceFromMap(id) : null;
        if (resource != null) {
          resource.setContent(ResourceDB.selectResourceContent(resource.getId()));
        }
        request.setAttribute("resource", resource);
        request.getRequestDispatcher("/details.jsp").forward(request, response);
    }
  }
}