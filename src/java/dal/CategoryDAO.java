/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Products;
import model.Profile;

/**
 *
 * @author user
 */
public class CategoryDAO {

    public Category getProduct(int id) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "Select * "
                        + "FROM categories "
                        + "WHERE id = ? ";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setInt(1, id);
//                stm.setString(2, password);
                //4. Excute Query
                rs = stm.executeQuery();
                //5. Process Result
                if (rs.next()) {

                    String name = rs.getNString("name");
                    Category c = new Category(id, name);
                    return c;

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

    public ArrayList<Category> getAllCategory() {
        ArrayList<Category> listCategory = new ArrayList<>();

        try {
            //1. Connect DB
            Connection con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "Select * "
                        + "FROM  categories";
                //3. Create Statement
                PreparedStatement stm = con.prepareStatement(sql);

                //4. Excute Query
                ResultSet rs = stm.executeQuery();
                //5. Process Result
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getNString("name");
                    Category c = new Category(id, name);

                    listCategory.add(new Category(id, name));

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listCategory;
    }
}
