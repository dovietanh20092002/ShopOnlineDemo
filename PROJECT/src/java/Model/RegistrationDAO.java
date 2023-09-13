/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import static org.apache.tomcat.jni.Buffer.address;
import utils.DBHelper;
import Model.RegistrationDTO;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class RegistrationDAO implements Serializable {

    private List<RegistrationDTO> Acc;

    public List<RegistrationDTO> getAcc() {
        return Acc;
    }

    public boolean checkLogin(String username, String password)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = DBHelper.makeConnection();
            if (con != null) {
                //2. Create SQL String
                String sql = "select account \n"
                        + "from [user] \n"
                        + " where account =? and password =?";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);
                //4. Excute Query
                rs = stm.executeQuery();
                //5. Process Result
                if (rs.next()) {
                    return true;
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return false;
    }

    public void addUser(String acc, String pass, String fullname, String Phone, String add) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {  //1. Connect DB
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "insert into [User](account,[password],phone,fullname,[address])\n"
                        + "                    values (?,?,?,?,?) ";
                stm = con.prepareStatement(sql);
                stm.setString(1, acc);
                stm.setString(2, pass);
                stm.setString(3, fullname);
                stm.setString(4, Phone);
                stm.setString(5, add);
                //4. Excute Query
                rs = stm.executeQuery();

            }

        } catch (Exception e) {
            System.out.println("loi" + e.getMessage());
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }

        }
    }

    public boolean checkAccExist(String acc) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {//1. Connect DB
            con = DBHelper.makeConnection();

            if (con != null) {
                String sql = "  select * from [user]\n"
                        + "                    where account =?";
                stm = con.prepareStatement(sql);
                stm.setString(1, acc);
                //4. Excute Query
                rs = stm.executeQuery();
                if (rs.next()) {
                    return true;
                }
            }

        } catch (Exception e) {
            System.out.println("loi" + e.getMessage());
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }

        }
        return false;
    }

    public RegistrationDTO getDataAccount(String account, String password) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
//1. Connect DB
            con = DBHelper.makeConnection();

            if (con != null) {
                String sql = " select * from  [User] \n"
                        + "   where account =?  and password =?";

                stm = con.prepareStatement(sql);
                stm.setString(1, account);
                stm.setString(2, password);
                rs = stm.executeQuery();
                while (rs.next()) {
                    return new RegistrationDTO(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getBoolean(7)
                    );

                }
            }

        } catch (Exception e) {
            System.out.println("loi" + e.getMessage());
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }

        }
        return null;

    }

    public RegistrationDTO getDataAccountGoogle(String account) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
//1. Connect DB
            con = DBHelper.makeConnection();

            if (con != null) {
                String sql = " select * from  [User] \n"
                        + "   where account =? ";

                stm = con.prepareStatement(sql);
                stm.setString(1, account);
                rs = stm.executeQuery();
                while (rs.next()) {
                    return new RegistrationDTO(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getBoolean(7)
                    );

                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("loi" + e.getMessage());
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }

        }
        return null;

    }

    public ArrayList<RegistrationDTO> getListAccount() throws SQLException, ClassNotFoundException {
        ArrayList<RegistrationDTO> dataAcc = new ArrayList<>();
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = DBHelper.makeConnection();
            if (con != null) {
//2. Create SQL String
                String sql = "  select * from [User]";
                //3. Create Statement
                stm = con.prepareStatement(sql);

                //4. Excute Query
                rs = stm.executeQuery();
            }
            while (rs.next()) {

                int uID = rs.getInt(1);
                String account = rs.getString(2);
                String password = rs.getString(3);
                String fullname = rs.getString(4);
                String phone = rs.getString(5);
                String address = rs.getString(6);
                boolean roleID = rs.getBoolean(7);

                dataAcc.add(new RegistrationDTO(uID, account, password, fullname, phone, address, roleID));
            }

        } catch (Exception e) {
            System.out.println("getListAcc " + e.getMessage());
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return dataAcc;

    }

    public boolean updateMember(String uid, String account, String password, String fullname, String phone, String address, boolean role)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            //1. Connect DB
            con = DBHelper.makeConnection();
            if (con != null) {
                //2. Create SQL String
                String sql = "  Update [User]\n"
                        + "                        SET  account=?, password =?,[fullname] =?,[phone]=?,[address]=?,    [roleid] = ? \n"
                        + "                                              WHERE [uid] =?";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setString(1, account);
                stm.setString(2, password);
                stm.setString(3, fullname);
                stm.setString(4, phone);
                stm.setString(5, address);
                stm.setBoolean(6, role);
                stm.setString(7, uid);

                //4. Excute Query
                int row = stm.executeUpdate();
                if (row > 0) {
                    return true;
                }
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return false;

    }

    public boolean deleteUser(String uid)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            //1. Connect DB
            con = DBHelper.makeConnection();
            if (con != null) {
                //2. Create SQL String
                String sql = "delete from [User] \n"
                        + "   where uid =?";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setString(1, uid);
                //4. Excute Query
                int row = stm.executeUpdate();
                if (row > 0) {
                    return true;
                }
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return false;
    }

    public RegistrationDTO getAcc(String username, String password)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
            con = DBHelper.makeConnection();
            if (con != null) {
                //2. Create SQL String
                String sql = "select account \n"
                        + "from [user] \n"
                        + " where account =? and password =?";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setString(1, username);
                stm.setString(2, password);
                //4. Excute Query
                rs = stm.executeQuery();
                //5. Process Result
                if (rs.next()) {
                    return new RegistrationDTO(
                            rs.getInt(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getBoolean(7));
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return null;
    }

    public void changePass(String account, String password)
            throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            //1. Connect DB
            con = DBHelper.makeConnection();
            if (con != null) {
                //2. Create SQL String
                String sql = "    Update [User]                  SET   password =?\n"
                        + "                                                                    WHERE [account] =?";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setString(1, password);
                stm.setString(2, account);

                //4. Excute Query
                stm.executeUpdate();

            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }

    }

//    public RegistrationDTO getLastUser() throws SQLException, ClassNotFoundException {
//   
//    }
    public void addUserGoogle(String account, String fullname) throws SQLException, ClassNotFoundException {
        Connection con = null;
        PreparedStatement stm = null;
        try {
            //1. Connect DB
            con = DBHelper.makeConnection();
            if (con != null) {
                //2. Create SQL String
                String sql = "INSERT INTO [User] (account, fullname,[roleid])\n"
                        + "VALUES (?, ?,0);";
                //3. Create Statement
                stm = con.prepareStatement(sql);
                stm.setString(1, account);
                stm.setString(2, fullname);
                //4. Excute Query
                stm.executeUpdate();
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }
}
