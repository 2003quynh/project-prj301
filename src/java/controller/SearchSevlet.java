/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Products;

/**
 *
 * @author user
 */
@MultipartConfig(maxFileSize = 16177215)
public class SearchSevlet extends HttpServlet {

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

        
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html");

        request.setCharacterEncoding("UTF-8");
//        int categoryID = Integer.parseInt(request.getParameter("categoryID"));

        int size = 9;

        int count = (new ProductDAO()).count();
        int countDresses = (new ProductDAO()).countByCategory(1);
        int countClothes = (new ProductDAO()).countByCategory(2);
        int countShoes = (new ProductDAO()).countByCategory(3);
        int countAccessories = (new ProductDAO()).countByCategory(4);

        int endPage = count / size + 1;

        request.setAttribute("endPage", endPage);
        request.setAttribute("count", count);
        request.setAttribute("countDresses", countDresses);
        request.setAttribute("countClothes", countClothes);
        request.setAttribute("countShoes", countShoes);
        request.setAttribute("countAccessories", countAccessories);
        
        request.setAttribute("categoryID", 0);
        String txtSearch = request.getParameter("search");//giay chay bo
        ProductDAO dao = new ProductDAO();
        ArrayList<Products> list = dao.searchByName(txtSearch);
        PrintWriter out = response.getWriter();
//        out.print("hell");
//        out.flush();
        for (Products o : list) {
            out.println("<div class=\"product-layouts col-lg-3 col-md-3 col-sm-6 col-xs-6\">\n"
                    + "                                    <div class=\"product-thumb\">\n"
                    + "                                        <div class=\"image zoom\">\n"
                    + "                                            <a href=\"product_detail.jsp\">\n"
                    + "                                                <img src=\"" + o.getImage() + "\" alt=\"01\"/>\n"
                    + "                                                <img src=\"" + o.getImage() + "\" alt=\"02\" class=\"second_image img-responsive\"/>							</a>\n"
                    + "\n"
                    + "                                        </div>\n"
                    + "                                        <div class=\"thumb-description\">\n"
                    + "                                            <div class=\"caption\">\n"
                    + "                                                <h4 class=\"product-title text-capitalize\"><a href=\"product_detail.jsp\">" + o.getName() + "</a></h4>\n"
                    + "                                            </div>\n"
                    + "                                            <div class=\"rating\">\n"
                    + "                                                <div class=\"product-ratings d-inline-block align-middle\">\n"
                    + "                                                    <span class=\"fa fa-stack\"><i class=\"material-icons\">star</i></span>\n"
                    + "                                                    <span class=\"fa fa-stack\"><i class=\"material-icons\">star</i></span>\n"
                    + "                                                    <span class=\"fa fa-stack\"><i class=\"material-icons\">star</i></span>\n"
                    + "                                                    <span class=\"fa fa-stack\"><i class=\"material-icons off\">star</i></span>\n"
                    + "                                                    <span class=\"fa fa-stack\"><i class=\"material-icons off\">star</i></span>							</div>\n"
                    + "                                            </div>\n"
                    + "\n"
                    + "                                            <div class=\"price\">\n"
                    + "                                                <div class=\"regular-price\">" + o.getPrice() + "</div>\n"
                    + "\n"
                    + "                                            </div>\n"
                    + "                                            <div class=\"button-wrapper\">\n"
                    + "                                                <div class=\"button-group text-center\">\n"
                    + "                                                    <button type=\"button\" class=\"btn btn-primary btn-cart\" data-target=\"#cart-pop\" data-toggle=\"modal\" disabled><i class=\"material-icons\">shopping_cart</i><span>Out of stock</span></button>\n"
                    + "                                                    <a href=\"wishlist.html\" class=\"btn btn-primary btn-wishlist\"><i class=\"material-icons\">favorite</i><span>wishlist</span></a>\n"
                    + "                                                    <button type=\"button\" class=\"btn btn-primary btn-compare\"><i class=\"material-icons\">equalizer</i><span>Compare</span></button>\n"
                    + "                                                    <button type=\"button\" class=\"btn btn-primary btn-quickview\"  data-toggle=\"modal\" data-target=\"#product_view\"><i class=\"material-icons\">visibility</i><span>Quick View</span></button>\n"
                    + "                                                </div>\n"
                    + "                                            </div>\n"
                    + "                                        </div>\n"
                    + "                                    </div>\n"
                    + "                                </div>");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
