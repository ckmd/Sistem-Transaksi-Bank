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
    private long id;
    private List<Tabungan> listTabungan;

    public Nasabah(){
        
    }
    
    public Nasabah(long id) {
        this.id = id;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<Tabungan> getListTabungan() {
        return listTabungan;
    }

    public void setListTabungan(List<Tabungan> listTabungan) {
        this.listTabungan = listTabungan;
    }
}
