/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import DTO.*;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

public class ProductDAO extends DBContext {

    public Products getProduct(int id) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "Select * "
                        + "FROM products "
                        + "WHERE id = ? ";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setInt(1, id);
//                stm.setString(2, password);
                //4. Excute Query
                rs = stm.executeQuery();
                //5. Process Result
                if (rs.next()) {

                    int quantity = rs.getInt("quantity");
                    int sold = rs.getInt("sold");
                    double price = rs.getDouble("price");
                    String description = rs.getString("description");
                    String image = rs.getString("image");
                    String name = rs.getString("name");
                    boolean gender = rs.getBoolean("gender");
                    boolean season = rs.getBoolean("season");
                    int category_id = rs.getInt("category_id");
                    String description_summary = rs.getString("description_summary");

                    Products p = new Products(id, quantity, sold, price, description, image, name, gender, season, category_id, description_summary);
                    return p;

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
        return null;
    }

    public ArrayList<ProductImage> getImagesByProductId(int id) {
        ArrayList<ProductImage> images = new ArrayList<>();
        try {
            String sql = "SELECT * FROM product_image "
                    + "WHERE product_id = ?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductImage image = new ProductImage();
                image.setId(rs.getInt("id"));
                image.setImage(rs.getString("image"));
                image.setProduct_id(rs.getInt("product_id"));

                images.add(image);
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return images;
    }

    public ArrayList<String> getSizeByProductId(int id) {
        ArrayList<String> sizes = new ArrayList<>();
        try {
            String sql = "SELECT DISTINCT size FROM product_variant\n"
                    + "WHERE product_id = ?\n"
                    + "ORDER BY size DESC";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String size = new String();
                size = rs.getString("size");
                sizes.add(size);

            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return sizes;
    }

    public ArrayList<String> getColorByProductId(int id) {
        ArrayList<String> listColor = new ArrayList<>();
        try {
            String sql = "SELECT DISTINCT color FROM product_variant\n"
                    + "WHERE product_id = ?\n"
                    + "ORDER BY color DESC";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String color = new String();
                color = rs.getString("color");
                listColor.add(color);

            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return listColor;
    }

    public ArrayList<Products> getTop4ProductLastest() {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ArrayList<Products> products = new ArrayList<>();

        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "SELECT TOP 4\n"
                        + "  *\n"
                        + "FROM products\n"
                        + "ORDER BY id DESC";
                //3. Create Statement
                stm = con.prepareStatement(sql);

                //4. Excute Query
                rs = stm.executeQuery();

                //5. Process Result
                while (rs.next()) {
                    int id = rs.getInt("id");
                    int quantity = rs.getInt("quantity");
                    int sold = rs.getInt("sold");
                    double price = rs.getDouble("price");
                    String description = rs.getString("description");
                    String image = rs.getString("image");
                    String name = rs.getString("name");
                    boolean gender = rs.getBoolean("gender");
                    boolean season = rs.getBoolean("season");
                    int category_id = rs.getInt("category_id");
                    String description_summary = rs.getString("description_summary");

                    Products p = new Products(id, quantity, sold, price, description, image, name, gender, season, category_id, description_summary);
                    products.add(p);

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
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return products;
    }

    public ArrayList<Products> getTop9ProductLastest(int categoryID, int index) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ArrayList<Products> products = new ArrayList<>();

        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String

                if (categoryID == 0) {
                    String sql = "SELECT *\n"
                            + "FROM (SELECT row_number() over (ORDER BY id DESC ) as r, *\n"
                            + "      FROM products) as x\n"
                            + "WHERE (r between ? and ?)";
                    stm = con.prepareStatement(sql);

                    stm.setInt(1, index * 9 - 8);
                    stm.setInt(2, index * 9);
                } else {
                    String sql = "SELECT *\n"
                            + "FROM (SELECT row_number() over (ORDER BY id DESC ) as r, *\n"
                            + "      FROM products WHERE category_id = ?) as x\n"
                            + "WHERE r between ? and ?";
                    stm = con.prepareStatement(sql);

                    stm.setInt(1, categoryID);
                    stm.setInt(2, index * 9 - 8);
                    stm.setInt(3, index * 9);
                }

                //3. Create Statement
                //4. Excute Query
                rs = stm.executeQuery();

                //5. Process Result
                while (rs.next()) {
                    int id = rs.getInt("id");
                    int quantity = rs.getInt("quantity");
                    int sold = rs.getInt("sold");
                    double price = rs.getDouble("price");
                    String description = rs.getString("description");
                    String image = rs.getString("image");
                    String name = rs.getString("name");
                    boolean gender = rs.getBoolean("gender");
                    boolean season = rs.getBoolean("season");
                    int category_id = rs.getInt("category_id");
                    String description_summary = rs.getString("description_summary");

                    Products p = new Products(id, quantity, sold, price, description, image, name, gender, season, category_id, description_summary);
                    products.add(p);

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
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return products;
    }

    public ArrayList<Products> getAllProduct() {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ArrayList<Products> products = new ArrayList<>();

        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String

                String sql = "SELECT *\n"
                        + "FROM products\n";
                stm = con.prepareStatement(sql);

            }

            //3. Create Statement
            //4. Excute Query
            rs = stm.executeQuery();

            //5. Process Result
            while (rs.next()) {
                int id = rs.getInt("id");
                int quantity = rs.getInt("quantity");
                int sold = rs.getInt("sold");
                double price = rs.getDouble("price");
                String description = rs.getString("description");
                String image = rs.getString("image");
                String name = rs.getString("name");
                boolean gender = rs.getBoolean("gender");
                boolean season = rs.getBoolean("season");
                int category_id = rs.getInt("category_id");
                String description_summary = rs.getString("description_summary");

                Products p = new Products(id, quantity, sold, price, description, image, name, gender, season, category_id, description_summary);
                products.add(p);

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
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return products;
    }

    public ArrayList<ProductDTO> getAllProductDTO() {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ArrayList<ProductDTO> products = new ArrayList<>();

        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String

                String sql = "SELECT * FROM products, categories\n"
                        + "WHERE category_id = categories.id";
                stm = con.prepareStatement(sql);

            }

            //3. Create Statement
            //4. Excute Query
            rs = stm.executeQuery();

            //5. Process Result
            while (rs.next()) {
                int id = rs.getInt(1);
                int quantity = rs.getInt(2);
                int sold = rs.getInt(3);
                double price = rs.getDouble(4);
                String description = rs.getNString(5);
                String image = rs.getString(6);
                String name = rs.getString(7);
                boolean gender = rs.getBoolean(8);
                boolean season = rs.getBoolean(9);
                int category_id = rs.getInt(10);
                String category_name = rs.getNString(13);
                String description_summary = rs.getString(11);

//                System.out.println(id+" "+ quantity+" "+sold+" "+ price+" "+ image+" "+ name+" "+gender+" "+season+" "+ category_id+" "+category_name+" "+description_summary);
                products.add(new ProductDTO(id, quantity, sold, price, description, image, name, gender, season, category_id, category_name, description_summary));

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
                Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return products;
    }

    public int count() {
        int count = 0;
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "SELECT countP FROM (SELECT COUNT(*) as countP\n"
                        + "FROM Products) as x;";
                //3. Create Statement
                stm = con.prepareStatement(sql);

//                stm.setString(2, password);
                //4. Excute Query
                rs = stm.executeQuery();
                //5. Process Result
                if (rs.next()) {

                    count = rs.getInt("countP");

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

        return count;
    }

    public int countByCategory(int category_id) {
        int count = 0;
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "SELECT SUM(quantity) as countC\n"
                        + "    FROM products\n"
                        + "    WHERE category_id = ?;";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setInt(1, category_id);
//                stm.setString(2, password);
                //4. Excute Query
                rs = stm.executeQuery();
                //5. Process Result
                if (rs.next()) {

                    count = rs.getInt("countC");

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

        return count;
    }

    public ArrayList<Products> searchByName(String txtSearch) {
        ArrayList<Products> list = new ArrayList<>();
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        String query = "select * from products\n"
                + "where name like ?";
        try {
            con = new DBContext().connection;
            stm = con.prepareStatement(query);
            stm.setString(1, "'%"+txtSearch+"%'");
            rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int quantity = rs.getInt("quantity");
                int sold = rs.getInt("sold");
                double price = rs.getDouble("price");
                String description = rs.getString("description");
                String image = rs.getString("image");
                String name = rs.getString("name");
                boolean gender = rs.getBoolean("gender");
                boolean season = rs.getBoolean("season");
                int category_id = rs.getInt("category_id");
                String description_summary = rs.getString("description_summary");

                Products p = new Products(id, quantity, sold, price, description, image, name, gender, season, category_id, description_summary);
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addProduct(int totalQuantity, double price, String description, String image, String name, int category_id, String description_summary, String[] sizes, String[] colors, String[] quantities) {
        try {
            String sql = "INSERT INTO products\n"
                    + "    (\n"
                    + "     quantity,\n"
                    + "     price,\n"
                    + "     description,\n"
                    + "     image,\n"
                    + "     name,\n"
                    + "     category_id,\n"
                    + "     description_summary)\n"
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
            ps.setInt(1, totalQuantity);
            ps.setDouble(2, price);
            ps.setNString(3, description);
            ps.setString(4, "img/products/".concat(image));
            ps.setString(5, name);
            ps.setInt(6, category_id);
            ps.setNString(7, description_summary);

            ps.executeUpdate();
            try ( ResultSet generatedKeys = ps.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    for (int i = 0; i < sizes.length; i++) {
                        (new ProductVariantDAO()).addProductVariant(sizes[i], generatedKeys.getInt(1), colors[i], Integer.parseInt(quantities[i]));

                    }
                    ;
                } else {
                    throw new SQLException("");
                }
            }

        } catch (SQLException ex) {
            System.out.println(ex);
        }

    }

    public void updateProductStatus(int productID, int status) {
        try {
            String sql = "UPDATE products\n"
                    + "SET\n"
                    + "sold = ?\n"
                    + "WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);

            if (status == 0) {
                ps.setInt(1, 1);
            } else {
                ps.setInt(1, 0);
            }
            ps.setInt(2, productID);

            ps.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateProductQuantity(int productID, int quantity) {
        try {
            String sql = "UPDATE products\n"
                    + "SET\n"
                    + "quantity = ?\n"
                    + "WHERE id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setInt(1, quantity);
            ps.setInt(2, productID);

            ps.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }
}
