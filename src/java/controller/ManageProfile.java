/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.sql.Date;
import java.sql.SQLException;
import model.Profile;

/**
 *
 * @author user
 */
public class ManageProfile extends HttpServlet {

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
            out.println("<title>Servlet ManageAccount</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ManageAccount at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        Profile user = (Profile) session.getAttribute("acc");
        if (user.getBirthday() != null) {
            String birthday = user.getBirthday().substring(0, 10);
            Date dob = Date.valueOf(birthday);
            request.setAttribute("birthday", dob);
        } 

        request.getRequestDispatcher("my_account_profile.jsp").forward(request, response);
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
        String url = "manage-profile";
        String name = request.getParameter("acc-name");
        String username = request.getParameter("acc-username");
        String birthday = request.getParameter("acc-birthday");
        String gender = request.getParameter("acc-gender");
        String address = request.getParameter("acc-address");
        String tel = request.getParameter("acc-tel");
        String save = request.getParameter("save");

        if (save != null) {
            AccountDAO dao = new AccountDAO();

            HttpSession session = request.getSession();
            Profile result = (Profile) session.getAttribute("acc");

            result.setBirthday(birthday);
            result.setName(name);
            if (gender.equals("Male")) {
                result.setGender(true);
            } else {
                result.setGender(false);
            }
            result.setAddress(address);
            result.setTel(tel);

            String birth = result.getBirthday().substring(0, 10);
            Date dob = Date.valueOf(birth);
            request.setAttribute("birthday", dob);

            dao.updateProfile(result);
            //session.setMaxInactiveInterval(30);

            session.setAttribute("acc", result);
            response.sendRedirect(url);
        }

//                request.getRequestDispatcher("index.jsp").forward(request, response);
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
