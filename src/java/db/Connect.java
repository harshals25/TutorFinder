/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author PransHu
 */
public class Connect {
   public static Connection con;
   public Connect()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
           
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/major", "root", "root");
        } catch(SQLException ex){}
        catch(ClassNotFoundException ex){}
    }
    
}
