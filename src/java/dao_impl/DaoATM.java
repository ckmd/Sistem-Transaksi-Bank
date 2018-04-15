/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao_impl;

import dao.DaoApp;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.KartuATM;

/**
 *
 * @author USER
 */
public class DaoATM implements DaoApp<KartuATM, Long>{
    public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    public static final String DB_Name = "bank_nr";
    public static final String DB_URL = "jdbc:mysql://localhost/"+DB_Name;
    
    public static final String USER = "root";
    public static final String PASS = "";
    public static final String tbl_tabungan = "tabungan";
    Connection conn = null;
    Statement stmt = null;
    
    private void openConnection(){
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
        }catch(ClassNotFoundException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    
    private void closeConnection(){
        try{
            if(conn != null)
                conn.close();
        }catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
    }

    @Override
    public void save(KartuATM m) {
        openConnection();
        try{
            if(conn == null){
                System.out.println("Conn is null");
                return;                
            }
            stmt = conn.createStatement();
            String sql = "UPDATE"+tbl_tabungan+" SET kartu_atm = '"
                    + m.GOLD.getStringValue();
            stmt.executeUpdate(sql);
        }
        catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
    }

    @Override
    public void delete(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public KartuATM findById(Long id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
