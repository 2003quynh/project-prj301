/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DTO.ProductInCart;
import dal.AccountDAO;
import dal.CartDAO;
import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Order;
import model.Profile;

/**
 *
 * @author user
 */
public class CheckOutServlet extends HttpServlet {

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
            out.println("<title>Servlet CheckOutServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOutServlet at " + request.getContextPath() + "</h1>");
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
        ArrayList<ProductInCart> listCart = new ArrayList<>();
        if (session.getAttribute("acc") == null) {
            request.setAttribute("errorMessage", "Hãy đăng nhập để thanh toán!");
            request.getRequestDispatcher("home").forward(request, response);
            return;
        }
        int profileID = ((Profile) session.getAttribute("acc")).getId();
        ArrayList<Order> listCustomer = new ArrayList<>();

        listCart = (new CartDAO()).getProductInCartByProfileID(profileID);

        double subtotal = 0;
        for (ProductInCart p : listCart) {
            subtotal += p.getPrice() * p.getQuantity();
        }
        request.setAttribute("subtotal", subtotal);

        listCustomer = (new OrderDAO()).getOrderByCustomerID(profileID);
        if (!listCustomer.isEmpty()) {
            Order billingAdress = listCustomer.get(0);
            Profile p = (new AccountDAO()).getAccountByID(profileID);

            String[] address = billingAdress.getAddress().split(";");
            request.setAttribute("listCustomer", listCustomer);
            request.setAttribute("billingAdress", billingAdress);
            request.setAttribute("p", p);
            request.setAttribute("address", address);
        }
        request.getRequestDispatcher("checkout_page.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        ArrayList<ProductInCart> listCart = new ArrayList<>();
        if (session.getAttribute("acc") == null) {
            request.setAttribute("errorMessage", "Hãy đăng nhập để thanh toán!");
            request.getRequestDispatcher("home").forward(request, response);
            return;
        }
        int profileID = ((Profile) session.getAttribute("acc")).getId();
        
        listCart = (new CartDAO()).getProductInCartByProfileID(profileID);

        double subtotal = 0;
        for (ProductInCart p : listCart) {
            subtotal += p.getPrice() * p.getQuantity();
        }

        String name = request.getParameter("name");
        String address = request.getParameter("addressDetail").concat(";").concat(request.getParameter("wards")).concat(";").concat(request.getParameter("wards")).concat(";").concat(request.getParameter("province"));
        String phone = request.getParameter("phone");
        String note = request.getParameter("note");
        int delivery_id = 2;

        (new OrderDAO()).addOrder(profileID, subtotal, name, address, phone, note, delivery_id, listCart);
        
        request.setAttribute("listCart", listCart);
        request.setAttribute("subtotal", subtotal);
        request.getRequestDispatcher("order-confirmation.jsp").forward(request, response);

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
