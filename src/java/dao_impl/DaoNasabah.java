/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao_impl;

import dao.DaoApp;
import java.sql.Connection;
import model.Nasabah;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Rachmad
 */
public class DaoNasabah implements DaoApp<Nasabah, Long>{
    public static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    public static final String DB_Name = "bank_nr";
    public static final String DB_URL = "jdbc:mysql://localhost/"+DB_Name;
    
    public static final String USER = "root";
    public static final String PASS = "";
    public static final String tbl_nasabah = "nasabah";
    Connection conn = null;
    Statement stmt = null;
    
    public DaoNasabah(){
        create_database();
        create_table_nasabah();
    }
    
    private void openConnection(){
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
        }catch(ClassNotFoundException ex){
            Logger.getLogger(DaoNasabah.class.getName()).log(Level.SEVERE,null,ex);
        }catch(SQLException ex){
            Logger.getLogger(DaoNasabah.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    
    private void closeConnection(){
        try{
            if(conn != null)
                conn.close();
        }catch(SQLException ex){
            Logger.getLogger(DaoNasabah.class.getName()).log(Level.SEVERE,null,ex);
        }
    }
    
    @Override
    public void save(Nasabah nasabah){
        openConnection();
        try{
            if(conn == null){
                System.out.println("conn is null");
                return;                
            }
            stmt = conn.createStatement();
            String sql = "INSERT INTO "+tbl_nasabah
                    +" (id,user)"
                    +"VALUES ("
                    +nasabah.getId()+", "
                    +"'"+nasabah.getUser()+"')";
            stmt.executeUpdate(sql);
        }
        catch(SQLException ex){
            Logger.getLogger(DaoNasabah.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
    }
    
    @Override
    public void delete(Long id){
        openConnection();
        try{
            if(conn == null){
                System.out.println("Conn is null");
                return;                
            }
            stmt = conn.createStatement();
            String sql = "DELETE FROM "+tbl_nasabah+" WHERE id="+id;
            stmt.executeUpdate(sql);
        }
        catch(SQLException ex){
            Logger.getLogger(DaoNasabah.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
    }
    
    public List<Nasabah> findAll(){
        Nasabah nasabah = null;
        List<Nasabah> listNasabah = new ArrayList<Nasabah>();
        openConnection();
        try{
            if(conn == null){
                System.out.println("Conn is null");
                return null;                
            }
            stmt = conn.createStatement();
            String sql = "SELECT * FROM "+tbl_nasabah;
            ResultSet rs = stmt.executeQuery(sql);
            rs.first();
                while(!rs.isAfterLast()){
                    long nid = rs.getLong("id");
                    String user = rs.getString("user");
                    nasabah = new Nasabah(nid,user);
                    listNasabah.add(nasabah);
                    rs.next();
                }
            rs.close();
        }
        catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
        return listNasabah;
    }
    
    @Override
    public Nasabah findById(Long id){
        Nasabah nasabah = null;
        openConnection();
        try{
            if(conn == null){
                System.out.println("Conn is null");
                return null;                
            }
            stmt = conn.createStatement();
            String sql = "SELECT * FROM "+tbl_nasabah+" WHERE id="+id;
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.first()){
                long nid = rs.getLong("id");
                nasabah = new Nasabah(nid);
                rs.close();
            }
        }
        catch(SQLException ex){
            Logger.getLogger(DaoTabungan.class.getName()).log(Level.SEVERE,null,ex);
        }
        closeConnection();
        return nasabah;
    }

    public void create_database(){
        Connection conn = null;
        Statement stmt = null;
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection("jdbc:mysql://localhost/",USER,PASS);
            stmt = conn.createStatement();
            String sql = "CREATE DATABASE IF NOT EXISTS "+DB_Name;
            stmt.executeUpdate(sql);
        }
        catch(SQLException se){
            se.printStackTrace();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        finally{
            try{
                if(stmt != null)
                    stmt.close();
            }
            catch(SQLException se2){
            }
            try{
                if(conn != null)
                    conn.close();
            }
            catch(SQLException se){
                se.printStackTrace();
            }
        }
    }
    
    private void create_table_nasabah(){
        Connection conn = null;
        Statement stmt = null;
        try{
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
            stmt = conn.createStatement();
            String sql = "CREATE TABLE IF NOT EXISTS "+tbl_nasabah+" "
                    +"(id INTEGER NOT NULL AUTO_INCREMENT, "
                    +" user VARCHAR(255), "
                    +" PRIMARY KEY ( id ))";
            stmt.executeUpdate(sql);
        }
        catch(SQLException se){
            se.printStackTrace();
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            try{
                if(stmt != null)
                    conn.close();
            }
            catch(SQLException se){
                
            }
            try{
                if(conn != null)
                    conn.close();
            }
            catch(SQLException se){
                se.printStackTrace();
            }
        }
    }
}
