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
import java.util.ArrayList;
import java.util.List;
import utils.DBHelper;
import Model.CategoryDTO;

/**
 *
 * @author ADMIN
 */
public class CategoryDAO implements Serializable {

    public ArrayList<CategoryDTO> getListCategory() throws SQLException, ClassNotFoundException {
        ArrayList<CategoryDTO> dataC = new ArrayList<>();
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            //1. Connect DB
           
            
             con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "select * from Category";
                //3. Create Statement
                stm = con.prepareStatement(sql);

                //4. Excute Query
                rs = stm.executeQuery();
                while (rs.next()) {
                    int idC = rs.getInt(1);
                    String nameC = rs.getString(2);
                    dataC.add(new CategoryDTO(idC, nameC));

                }
            }
        } catch (Exception e) {
            System.out.println("getCategory " + e.getMessage());
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
        return dataC;
    }
}
