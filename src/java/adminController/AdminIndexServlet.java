/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package adminController;

import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import java.util.ArrayList;
import model.Order;

/**
 *
 * @author user
 */
public class AdminIndexServlet extends HttpServlet {

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
            out.println("<title>Servlet AdminIndexServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminIndexServlet at " + request.getContextPath() + "</h1>");
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
//        processRequest(request, response);
        ArrayList<Order> listOrder = (new OrderDAO()).getAllOrdered();
        String[] year = new String[listOrder.size()];
        String[] month = new String[listOrder.size()];

        for (int i = 0; i < listOrder.size(); i++) {
            year[i] = listOrder.get(i).getShipped_date().substring(0, 4);
            month[i] = listOrder.get(i).getShipped_date().substring(5, 7);
        }
        LocalDateTime currentTime = LocalDateTime.now();
        String thisYear = currentTime.toString().substring(0, 4);
        String thisMonth = currentTime.toString().substring(5, 7);

        double earningMonth = 0;
        double earningYear = 0;

        for (int i = 0; i < month.length; i++) {
            if (Integer.parseInt(thisMonth) - 1 == Integer.parseInt(month[i])) {
                earningMonth += listOrder.get(i).getTotal_money();
            }
            if (Integer.parseInt(thisYear) == Integer.parseInt(year[i])) {
                earningYear += listOrder.get(i).getTotal_money();
            }
        }

        ArrayList<Order> listOrderPending = new ArrayList<>();
        listOrderPending = (new OrderDAO()).getOrderByStatus(0);
        
        ArrayList<Double> data =new ArrayList<>();
        data = (new OrderDAO()).getAllEarningMonth((Integer.parseInt(thisYear)));
        
        String x="[";
        for (int i = 0; i < data.size(); i++) {
//            System.out.println(data.get(i));
            x += data.get(i) + ", ";
        }
        x = x.substring(0, x.length()-1).concat("]");
        
        request.setAttribute("data", x);
        request.setAttribute("earningMonth", earningMonth);
        request.setAttribute("earningYear", earningMonth);
        request.setAttribute("thisYear", thisYear);
        request.setAttribute("thisMonth", Integer.parseInt(thisMonth) - 1);
        request.setAttribute("orderPending", listOrderPending.size());

        request.getRequestDispatcher("admin/admin_index.jsp").forward(request, response);
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
        processRequest(request, response);
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
