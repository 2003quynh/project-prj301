/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import DTO.ProductInCart;
import dal.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.*;
import model.Profile;

/**
 *
 * @author user
 */
public class CartServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CartServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        HttpSession session = request.getSession();
        ArrayList<ProductInCart> listCart = new ArrayList<>();
        if (session.getAttribute("acc") == null) {
            request.setAttribute("errorMessage", "Hãy đăng nhập để xem giỏ hàng!");
            request.getRequestDispatcher("home").forward(request, response);
            return;
        }
        int profileID = ((Profile) session.getAttribute("acc")).getId();

        listCart = (new CartDAO()).getProductInCartByProfileID(profileID);
        
        double subtotal = 0;
        for (ProductInCart p : listCart) {
            subtotal += p.getPrice() * p.getQuantity();
        }
        System.out.println(listCart.size());
        request.setAttribute("listCart", listCart);
        request.setAttribute("subtotal", subtotal);

//        response.getWriter().print(listCart);
        request.getRequestDispatcher("cart_page.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
        HttpSession session = request.getSession();
        ArrayList<ProductInCart> listCart = new ArrayList<>();
        CartDAO dao = new CartDAO();
        if (session.getAttribute("acc") == null) {
            
            request.setAttribute("errorMessage", "Hãy đăng nhập để thêm vào giỏ hàng!");
            response.sendRedirect("login");
            return;
        }
        int profileID = ((Profile) session.getAttribute("acc")).getId();
        listCart = dao.getProductInCartByProfileID(profileID);
        System.out.println(request.getParameter("button"));
        if (request.getParameter("button").equals("save")) {
            for (int i = 0; i < listCart.size(); i++) {
                int quantityValue = Integer.parseInt(request.getParameter("cart-qty-" + i));
                dao.updateCart(quantityValue, listCart.get(i).getProduct_id());
            }
        } else {

            int quantity = Integer.parseInt(request.getParameter("quantity"));
            String color = request.getParameter("color");
            String size = request.getParameter("size");
            int productID = Integer.parseInt(request.getParameter("productID"));
            ProductVariantDAO pvd = new ProductVariantDAO();
            int product_variant_id = pvd.getProductVariantID(size, color, productID);

            boolean isExist = false;

            for (ProductInCart p : listCart) {
                if (p.getProduct_id() == product_variant_id) {
                    dao.updateCart(quantity + p.getQuantity(), product_variant_id);
                    isExist = true;
                    return;
                }
            }

            if (!isExist) {
                dao.addProductIntoCart(profileID, quantity, color, size, productID);
            }
        }

        response.sendRedirect("cart");

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
