/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package adminController;

import dal.ProductDAO;
import dal.ProductVariantDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.ProductVariant;
import model.Products;

/**
 *
 * @author user
 */
public class AdminEditProductServlet extends HttpServlet {

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
            out.println("<title>Servlet AdminEditProductServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminEditProductServlet at " + request.getContextPath() + "</h1>");
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
        int productID = Integer.parseInt(request.getParameter("productID"));
        Products p = (new ProductDAO()).getProduct(productID);
        ArrayList<ProductVariant> listVariant = (new ProductVariantDAO()).getProductVariantByProductID(productID);
        request.setAttribute("category", p.getCategory_id());
        request.setAttribute("productName", p.getName());
        request.setAttribute("productImage", p.getImage());
        request.setAttribute("productImages[]", p.getImage());
        request.setAttribute("price", p.getPrice());
        request.setAttribute("description", p.getDescription());
        request.setAttribute("descriptionSummary", p.getDescription_summary());
        request.setAttribute("listVariant", listVariant);
        request.setAttribute("productID", productID);

//        
        request.getRequestDispatcher("admin/admin_editProduct.jsp").forward(request, response);
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
        int productID = Integer.parseInt(request.getParameter("productID"));

        int category = Integer.parseInt(request.getParameter("category"));
        String productName = request.getParameter("productName");
        String image;
        if (request.getParameter("productImage") == null) {
            image = request.getParameter("image");
        } else {
            image = request.getParameter("productImage");
        }

//        String[] images = request.getParameterValues("productImage[]");
        double price = Double.parseDouble(request.getParameter("price"));
        String description = request.getParameter("description");
        String descriptionSummary = request.getParameter("descriptionSummary");
        String[] productVariantID = request.getParameterValues("productVariantID[]");
        String[] sizes = request.getParameterValues("sizes[]");
        String[] colors = request.getParameterValues("colors[]");
        String[] quantities = request.getParameterValues("quantities[]");

        int totalQuantity = 0;
        for (String quantity : quantities) {
            totalQuantity += Integer.parseInt(quantity);
        }
        ArrayList<ProductVariant> listVariant = new ArrayList<>();
        for (int i = 0; i < productVariantID.length; i++) {
            listVariant.add(new ProductVariant(Integer.parseInt(productVariantID[i]), sizes[i], productID, colors[i], Integer.parseInt(quantities[i])));
        }

        (new ProductVariantDAO()).updateProductVariant(listVariant);

        if (request.getParameterValues("newsize[]") != null) {
            String[] newsizes = request.getParameterValues("newsize[]");
            String[] newcolors = request.getParameterValues("newcolor[]");
            String[] newquantities = request.getParameterValues("newquantity[]");
            for (int i = 0; i < newsizes.length; i++) {
                (new ProductVariantDAO()).addProductVariant(newsizes[i], productID, newcolors[i], Integer.parseInt(newquantities[i]));
            }
            for (String quantity : newquantities) {
                totalQuantity += Integer.parseInt(quantity);
            }
            
            (new ProductDAO()).updateProductQuantity(productID, totalQuantity);
        }

        request.setAttribute("message", "Update product successfull!");
        request.getRequestDispatcher("admin/admin_editProduct.jsp").forward(request, response);
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
