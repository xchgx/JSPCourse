/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package no17.demo2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import no17.demo2.bean.Food;

/**
 *
 * @author 陈老师
 */
public class FoodService {

    public List<Food> listFood() {
        List<Food> foods = new ArrayList<>();
        try {
            Class.forName("org.gjt.mm.mysql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/x5?useUnicode=true&characterEncoding=utf8", "root", "x5");
            String sql = "select * from takeout_food";
            PreparedStatement pstat = conn.prepareStatement(sql);
            ResultSet rs = pstat.executeQuery();
            while (rs.next()) {
                Food food = new Food(rs.getString(1), rs.getString(2), rs.getFloat(3), rs.getString(4), rs.getString(5));
                foods.add(food);
            }
            rs.close();
            pstat.close();
            conn.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FoodService.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(FoodService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return foods;
    }
}
