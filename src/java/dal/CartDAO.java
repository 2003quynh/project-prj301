/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.*;
import DTO.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author user
 */
public class CartDAO extends DBContext {

    public ArrayList<ProductInCart> getProductInCartByProfileID(int profileID) {
        ArrayList<ProductInCart> listProduct = new ArrayList<>();

        try {
            String sql = "SELECT cart.id as cartID, cart.quantity as quantity, product_variant_id, image,size,color,price,name\n"
                    + "                     FROM cart, product_variant, products\n"
                    + "                     WHERE cart.product_variant_id= product_variant.id and product_variant.product_id = products.id and\n"
                    + "                         cart.profile_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, profileID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                int id = rs.getInt("cartID");
                int quantity = rs.getInt("quantity");
                int product_variant_id = rs.getInt("product_variant_id");
                double price = rs.getDouble("price");
                String image = rs.getString("image");
                String size = rs.getString("size");
                String color = rs.getString("color");
                String name = rs.getString("name");
                ProductInCart cart = new ProductInCart(id, quantity, price, product_variant_id, image, name, size, color, profileID);
                listProduct.add(cart);

            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return listProduct;
    }

    public void updateCart(int quantity, int product_variant_id) {

        try {
            String sql = "UPDATE cart\n"
                    + "SET quantity = ?\n"
                    + "WHERE product_variant_id = ?";
            PreparedStatement ps;
            ps = connection.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setInt(2, product_variant_id);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CartDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public Cart getCart(int profileID, int product_variant_id) {
        Cart cart = null;

        try {
            String sql = "SELECT * FROM cart\n"
                    + "WHERE profile_id = ? and product_variant_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, profileID);
            ps.setInt(2, product_variant_id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
//                System.out.println(rs.getInt("id"));
                int id = rs.getInt("id");
                int quantity = rs.getInt("quantity");

                cart.setId(id);
                cart.setQuantity(quantity);
                cart.setProduct_variant_id(product_variant_id);
                cart.setProfile_id(profileID);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return cart;
    }

    public void addProductIntoCart(int profileID, int quantity, String color, String size, int productID) {
        ProductVariantDAO pvd = new ProductVariantDAO();
        int product_variant_id = pvd.getProductVariantID(size, color, productID);

        Cart c = getCart(profileID, product_variant_id);
//        System.out.println(c);
        if (c != null) {
            quantity = quantity + c.getQuantity();
            updateCart(quantity, c.getId());
            return;
        }
        try {

            String sql = "INSERT INTO cart (quantity,product_variant_id,profile_id)\n"
                    + "values\n"
                    + "(?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setInt(2, product_variant_id);
            ps.setInt(3, profileID);
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }

    public void removeCart(ArrayList<ProductInCart> listCart) {
        try {
            for (int i = 0; i < listCart.size(); i++) {
                String sql = "DELETE FROM cart WHERE profile_id = ?";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1, listCart.get(i).getProfile_id());

                ps.executeUpdate();
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
    
    public void removeCartByID(int id){
        try {
            
                String sql = "DELETE FROM cart WHERE id = ?";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1, id);

                ps.executeUpdate();
            

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

}
