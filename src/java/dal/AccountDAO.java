/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import DTO.Account;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;
//import utils.*;

/**
 *
 * @author user
 */
public class AccountDAO extends DBContext {

    public void register(String email, String username, String password) {
        try {
            String sql = "INSERT INTO profile(\n"
                    + "    email, username, password\n"
                    + ") values (\n"
                    + "  ?,?,?\n"
                    + " )";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setNString(1, email);
            ps.setNString(2, username);
            ps.setString(3, password);
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }

    public Profile getAccount(String username) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "Select * "
                        + "FROM profile "
                        + "WHERE username = ? ";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
//                stm.setString(2, password);
                //4. Excute Query
                rs = stm.executeQuery();
                //5. Process Result
                if (rs.next()) {
                    int id = rs.getInt(1);
                    String name = rs.getString(2);
                    String birthday = rs.getString(3);
                    boolean gender = rs.getBoolean(4);
                    String address = rs.getString(5);
                    String tel = rs.getString(6);
                    String email = rs.getString(7);
                    String image = rs.getString(8);
                    int role = rs.getInt(9);
                    String password = rs.getString(11);

                    Profile p = new Profile(id, name, birthday, gender, address, tel, email, image, role, username, password);
                    return p;

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
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
        return null;
    }

    public void updateProfile(Profile p) {
        try {
            String sql;

            sql = "UPDATE profile\n"
                    + "SET\n"
                    + "    username = ?,\n"
                    + "    name = ?,\n"
                    + "    birthday = ?,\n"
                    + "    gender = ?,\n"
                    + "    address = ?,\n"
                    + "    tel = ?\n"
                    + "WHERE id = ?;";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setNString(1, p.getUsername());
            ps.setNString(2, p.getName());
            ps.setNString(3, p.getBirthday());
            ps.setBoolean(4, p.isGender());
            ps.setNString(5, p.getAddress());
            ps.setString(6, p.getTel());
            ps.setInt(7, p.getId());

            ps.executeUpdate();

        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public Profile getAccountByID(int id) {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "Select * "
                        + "FROM profile "
                        + "WHERE id = ? ";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setInt(1, id);
//                stm.setString(2, password);
                //4. Excute Query
                rs = stm.executeQuery();
                //5. Process Result
                if (rs.next()) {
//                    int id = rs.getInt(1);
                    String name = rs.getString("name");
                    String birthday = rs.getString("birthday");
                    boolean gender = rs.getBoolean("gender");
                    String address = rs.getString("address");
                    String tel = rs.getString("tel");
                    String email = rs.getString("email");
                    String image = rs.getString("image");
                    int role = rs.getInt("role");
                    String username = rs.getString("username");
                    String password = rs.getString("password");

                    Profile p = new Profile(id, name, birthday, gender, address, tel, email, image, role, username, password);
                    return p;

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
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
        return null;
    }

    public ArrayList<Profile> getAllProfile() {
        ArrayList<Profile> listProfile = new ArrayList<>();

        try {
            //1. Connect DB
            Connection con = new DBContext().connection;
            if (con != null) {
                //2. Create SQL String
                String sql = "Select * "
                        + "FROM profile ";
                //3. Create Statement
                PreparedStatement stm = con.prepareStatement(sql);
                
                //4. Excute Query
                ResultSet rs = stm.executeQuery();
                //5. Process Result
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String name = rs.getString("name");
                    String birthday = rs.getString("birthday");
                    boolean gender = rs.getBoolean("gender");
                    String address = rs.getString("address");
                    String tel = rs.getString("tel");
                    String email = rs.getString("email");
                    String image = rs.getString("image");
                    int role = rs.getInt("role");
                    String username = rs.getString("username");
                    String password = rs.getString("password");

                    Profile p = new Profile(id, name, birthday, gender, address, tel, email, image, role, username, password);
                    listProfile.add(p);

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return listProfile;
    }
}
