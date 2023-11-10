/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import DTO.ProductInCart;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.*;

/**
 *
 * @author user
 */
public class ProductVariantDAO extends DBContext {

    public int getProductVariantID(String size, String color, int productID) {
        int id = 0;
        try {

            String sql = "SELECT * FROM product_variant\n"
                    + "WHERE size = ? and color = ? and product_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, size);
            ps.setString(2, color);
            ps.setInt(3, productID);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                id = rs.getInt("id");
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return id;
    }

    public int getQuantityByID(int id) {
        int quantity = 0;
        try {

            String sql = "SELECT * FROM product_variant\n"
                    + "WHERE id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                quantity = rs.getInt("quantity");
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return id;
    }

    public ArrayList<ProductVariant> getProductVariantByProductID(int productID) {
        ArrayList<ProductVariant> listVariant = new ArrayList();
        try {

            String sql = "SELECT * FROM product_variant\n"
                    + "WHERE product_id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, productID);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("id");
                String size = rs.getString("size");
                String color = rs.getString("color");
                int quantity = rs.getInt("quantity");
                listVariant.add(new ProductVariant(id, size, productID, color, quantity));
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

        return listVariant;
    }

    public void updateProductQuantity(ArrayList<ProductInCart> listCart) {
        try {
            for (int i = 0; i < listCart.size(); i++) {
                String sql = "UPDATE product_variant\n"
                        + "SET\n"
                        + "quantity = ?\n"
                        + "WHERE id = ?";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1, getQuantityByID(listCart.get(i).getProduct_id()) - listCart.get(i).getQuantity());
                ps.setInt(2, listCart.get(i).getProduct_id());

                ps.executeUpdate();
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void addProductVariant(String size, int product_id, String color, int quantity) {
        try {
            String sql = "INSERT INTO product_variant(\n"
                    + "    size, product_id, color, quantity\n"
                    + ") values (\n"
                    + "  ?,?,?,?\n"
                    + " )";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, size);
            ps.setInt(2, product_id);
            ps.setString(3, color);
            ps.setInt(4, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
        }

    }

    public void updateProductVariant(ArrayList<ProductVariant> listVariant) {
        try {
            for (int i = 0; i < listVariant.size(); i++) {
                String sql = "UPDATE product_variant\n"
                        + "SET\n"
                        + "size=?, quantity=?,color=?\n"
                        + "WHERE id = ?";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setString(1, listVariant.get(i).getSize());
                ps.setInt(2, listVariant.get(i).getQuantity());
                ps.setString(3, listVariant.get(i).getColor());
                ps.setInt(4, listVariant.get(i).getId());

                ps.executeUpdate();
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
