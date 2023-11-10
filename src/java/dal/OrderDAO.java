/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import DTO.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.*;

/**
 *
 * @author user
 */
public class OrderDAO extends DBContext {

    public ArrayList<Order> getOrderByCustomerID(int customerID) {
        ArrayList<Order> listCustomer = new ArrayList<>();

        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "SELECT * FROM [order]\n"
                        + "WHERE customer_id = ? ORDER BY id desc ";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setInt(1, customerID);
                ;
                //4. Excute Query
                rs = stm.executeQuery();
                //5. Process Result
                while (rs.next()) {
                    int id = rs.getInt("id");

                    String order_date = rs.getString("order_date");
                    String shipped_date = rs.getString("order_date");
                    double total_money = rs.getDouble("total_money");
                    int status = rs.getInt("status");
                    String name = rs.getNString("name");
                    String address = rs.getNString("address");
                    String phone = rs.getString("phone");
                    String note = rs.getNString("note");
                    int delivery_id = rs.getInt("delivery_id");

                    listCustomer.add(new Order(id, customerID, order_date, shipped_date, total_money, status, name, address, phone, note, delivery_id));

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (rs != null) {

                    rs.close();

                }
                if (stm != null) {
                    stm.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (SQLException ex) {
                Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return listCustomer;
    }

    public void addOrderDetail(int quantity, int order_id, int product_variant_id) {
        try {
            String sql = "INSERT INTO order_detail (quantity, order_id, product_variant_id)\n"
                    + "values\n"
                    + "    (?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setInt(2, order_id);
            ps.setInt(3, product_variant_id);
            ps.executeUpdate();

        } catch (Exception e) {
        }
    }

    public void addOrder(int customer_id, double total_money, String name, String address, String phone, String note, int delivery_id, ArrayList<ProductInCart> cartProducts) {
        try {
            String sql = "INSERT INTO [order]\n"
                    + "    (\n"
                    + "     customer_id,\n"
                    + "     total_money,\n"
                    + "     name,\n"
                    + "     address,\n"
                    + "     phone,\n"
                    + "     note,\n"
                    + "     delivery_id)\n"
                    + "VALUES\n"
                    + "    (\n"
                    + "        ?,\n"
                    + "        ?,\n"
                    + "        ?,\n"
                    + "        ?,\n"
                    + "        ?,\n"
                    + "        ?,\n"
                    + "        ?\n"
                    + "    );";
            PreparedStatement ps = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, customer_id);
            ps.setDouble(2, total_money);
            ps.setNString(3, name);
            ps.setString(4, address);
            ps.setString(5, phone);
            ps.setNString(6, note);
            ps.setInt(7, delivery_id);

            ps.executeUpdate();
            try ( ResultSet generatedKeys = ps.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    for (ProductInCart product : cartProducts) {
                        addOrderDetail(product.getQuantity(), generatedKeys.getInt(1), product.getProduct_id());
                        new ProductVariantDAO().updateProductQuantity(cartProducts);
                    }
                    new CartDAO().removeCart(cartProducts);
                } else {
                    throw new SQLException("Creating invoice detail failed, no ID obtained.");
                }
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public ArrayList<Order> getAllOrder() {
        ArrayList<Order> listOrder = new ArrayList<>();

        try {
            //1. Connect DB
            Connection con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "SELECT * FROM [order]";
                //3. Create Statement
                PreparedStatement stm = con.prepareStatement(sql);

                //4. Excute Query
                ResultSet rs = stm.executeQuery();
                //5. Process Result
                while (rs.next()) {
                    int id = rs.getInt("id");
                    int customer_id = rs.getInt("customer_id");
                    String order_date = rs.getString("order_date");
                    String shipped_date = rs.getString("shipped_date");
                    double total_money = rs.getDouble("total_money");
                    int status = rs.getInt("status");
                    String name = rs.getNString("name");
                    String address = rs.getNString("address");
                    String phone = rs.getString("phone");
                    String note = rs.getNString("note");
                    int delivery_id = rs.getInt("delivery_id");

                    listOrder.add(new Order(id, customer_id, order_date, shipped_date, total_money, status, name, address, phone, note, delivery_id));

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listOrder;
    }

    public ArrayList<Order> getAllOrdered() {
        ArrayList<Order> listOrder = new ArrayList<>();

        try {
            //1. Connect DB
            Connection con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "SELECT * FROM [order]"
                        + "WHERE status = 2";
                //3. Create Statement
                PreparedStatement stm = con.prepareStatement(sql);

                //4. Excute Query
                ResultSet rs = stm.executeQuery();
                //5. Process Result
                while (rs.next()) {
                    int id = rs.getInt("id");
                    int customer_id = rs.getInt("customer_id");
                    String order_date = rs.getString("order_date");
                    String shipped_date = rs.getString("shipped_date");
                    double total_money = rs.getDouble("total_money");
                    int status = rs.getInt("status");
                    String name = rs.getNString("name");
                    String address = rs.getNString("address");
                    String phone = rs.getString("phone");
                    String note = rs.getNString("note");
                    int delivery_id = rs.getInt("delivery_id");

                    listOrder.add(new Order(id, customer_id, order_date, shipped_date, total_money, status, name, address, phone, note, delivery_id));

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listOrder;
    }

    public ArrayList<Double> getAllEarningMonth(int year) {
        ArrayList<Double> earnings = new ArrayList<>();

        try {
            //1. Connect DB
            Connection con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                for (int i = 1; i <= 12; i++) {
                    String sql = "SELECT SUM(total_money) as sum FROM [order]\n"
                            + "WHERE YEAR(shipped_date) = ?"
                            + " and MONTH(shipped_date) = ?;";
                    //3. Create Statement
                    PreparedStatement stm = con.prepareStatement(sql);
                    stm.setInt(1, year);
                    stm.setInt(2, i);
                    //4. Excute Query
                    ResultSet rs = stm.executeQuery();
//                    System.out.println(rs.next());
                    //5. Process Result
                    if (rs.next()) {
                        earnings.add(rs.getDouble("sum"));
                    } else{
                        earnings.add(0.0);
                      
                    }
                }

            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return earnings;
    }

   
    

    public ArrayList<Order> getOrderByStatus(int status) {
        ArrayList<Order> listOrder = new ArrayList<>();

        try {
            //1. Connect DB
            Connection con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "SELECT * FROM [order]\n"
                        + "WHERE status = ?";
                //3. Create Statement
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setInt(1, status);

                //4. Excute Query
                ResultSet rs = stm.executeQuery();
                //5. Process Result
                while (rs.next()) {
                    int id = rs.getInt("id");
                    int customer_id = rs.getInt("customer_id");
                    String order_date = rs.getString("order_date");
                    String shipped_date = rs.getString("shipped_date");
                    double total_money = rs.getDouble("total_money");

                    String name = rs.getNString("name");
                    String address = rs.getNString("address");
                    String phone = rs.getString("phone");
                    String note = rs.getNString("note");
                    int delivery_id = rs.getInt("delivery_id");

                    listOrder.add(new Order(id, customer_id, order_date, shipped_date, total_money, status, name, address, phone, note, delivery_id));

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listOrder;
    }

    public ArrayList<OrderDetailDTO> getAllOrderDetailDTO(int order_id) {
        ArrayList<OrderDetailDTO> listOrder = new ArrayList<>();

        try {
            //1. Connect DB
            Connection con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "SELECT *\n"
                        + "FROM [order], order_detail, product_variant,products\n"
                        + "WHERE [order].id = order_detail.order_id and \n"
                        + "      order_detail.product_variant_id=product_variant.id and \n"
                        + "      product_variant.product_id = products.id and [order].id = ?";
                //3. Create Statement
                PreparedStatement stm = con.prepareStatement(sql);
                stm.setInt(1, order_id);

                //4. Excute Query
                ResultSet rs = stm.executeQuery();
                //5. Process Result
                while (rs.next()) {

                    String order_date = rs.getString(2);
                    String shipped_date = rs.getString(3);

                    double total_money = rs.getDouble(4);
                    int status = rs.getInt(5);
                    int customer_id = rs.getInt(6);
                    String name = rs.getNString(7);
                    String address = rs.getNString(8);
                    String phone = rs.getString(9);
                    String note = rs.getNString(10);
                    int delivery_id = rs.getInt(11);
                    int order_detail_id = rs.getInt(12);
                    int order_detail_quantity = rs.getInt(13);
                    double price = rs.getDouble(16);
                    int product_variant_id = rs.getInt(15);
                    String size = rs.getString(18);
                    int product_id = rs.getInt(19);
                    String color = rs.getNString(20);
                    String image = rs.getString(27);

                    listOrder.add(new OrderDetailDTO(order_id, order_date, shipped_date, total_money, status, customer_id, name, address, phone, note, delivery_id, order_detail_id, order_detail_quantity, price, product_variant_id, size, product_id, color, image));

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listOrder;
    }

    public void updateStatus(int orderID, int status) {
        try {
            String sql;

            sql = "UPDATE [order]\n"
                    + "SET\n"
                    + "    status = ?\n"
                    + "WHERE id = ?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, status);
            ps.setInt(2, orderID);

            ps.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
