/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;
import java.util.List;
import model.Tabungan;
/**
 *
 * @author Rachmad
 */
public class Nasabah {
    private Long id;
    private String user;

    public Nasabah(){
        
    }

    public Nasabah(Long id, String user) {
        this.id = id;
        this.user = user;
    }
    
    public Nasabah(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
}
