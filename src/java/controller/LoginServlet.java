/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DTO.*;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.*;
import dal.*;
import jakarta.servlet.http.Cookie;
import java.text.SimpleDateFormat;
import java.time.ZoneId;
import model.*;

/**
 *
 * @author user
 */
public class LoginServlet extends HttpServlet {

    private final String HOME_PAGE = "home";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "login.jsp";
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String remember = request.getParameter("remember");
        Cookie cu = new Cookie("cuser", username);
        Cookie cp = new Cookie("cpass", password);
        Cookie cr = new Cookie("crem", remember);
        if (remember != null) {
            cu.setMaxAge(60 * 60 * 24 * 7);
            cp.setMaxAge(60 * 60 * 24 * 7);
            cr.setMaxAge(60 * 60 * 24 * 7);
        } else {
            cu.setMaxAge(0);
            cp.setMaxAge(0);
            cr.setMaxAge(0);
        }
        response.addCookie(cu);
        response.addCookie(cp);
        response.addCookie(cr);
        AccountDAO dao = new AccountDAO();
        if (username.isEmpty()) {
            request.setAttribute("error", "Vui lòng nhập tên đăng nhập!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else if (password.isEmpty()) {
            request.setAttribute("error", "Vui lòng nhập mật khẩu!");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }
        Profile result = dao.getAccount(username);
        if (result != null && result.getPassword().equals(password)) {
            if (result.getRole() == 0) {
                url = "admin-index";
            } else {
                url = HOME_PAGE;
            }
            HttpSession session = request.getSession();
            session.setAttribute("acc", result);
            response.sendRedirect(url);
        } else {
            request.setAttribute("error", "Tên tài khoản của bạn hoặc Mật khẩu không đúng, vui lòng thử lại");
            request.getRequestDispatcher("login.jsp").forward(request, response);

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
