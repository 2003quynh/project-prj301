/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DTO.Account;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import dal.*;
import jakarta.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Profile;

/**
 *
 * @author user
 */
public class RegisterSevlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterSevlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterSevlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
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
//        processRequest(request, response);
        AccountDAO d = new AccountDAO();
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String remember = request.getParameter("remember");

        if (email.isEmpty()) {
            request.setAttribute("errorMessage", "Phải nhập email");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (username.isEmpty()) {
            request.setAttribute("errorMessage", "Phải nhập username");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (password.isEmpty()) {
            request.setAttribute("errorMessage", "Phải nhập password");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (confirmPassword.isEmpty()) {
            request.setAttribute("errorMessage", "Phải nhập Confirm Password");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (!confirmPassword.equals(password)) {
            request.setAttribute("errorMessage", "Password không hợp lệ");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        if (d.getAccount(username) != null) {
            request.setAttribute("errorMessage", "Tài khoản đã tồn tại");
            request.getRequestDispatcher("register.jsp").forward(request, response);
            return;
        }

        d.register(email, username, password);
        Profile p = new Profile();
        p.setEmail(email);
        p.setUsername(username);
        p.setPassword(password);
        p.setRole(2);
        HttpSession session = request.getSession();
        //session.setMaxInactiveInterval(30);

        session.setAttribute("acc", p);
        response.sendRedirect("home");

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
