/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.org;

import java.util.Date;
import java.util.Random;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author shivani chauhan
 */
@Entity(name = "data_table")
 
public class SessionInfo {
    @Id
    private int Id;
    private String Tittle;
    @Column(length =2000)
    private String Description;
    @Temporal(TemporalType.DATE)
    private Date date;

    public SessionInfo(String Tittle, String Description) {
       this.Id =new Random().nextInt(1000000);
        this.Tittle = Tittle;
        this.Description = Description;
        
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public void setTittle(String Tittle) {
        this.Tittle = Tittle;
    }

    public void setDescription(String Description) {
        this.Description = Description;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getId() {
        return Id;
    }

    public String getTittle() {
        return Tittle;
    }

    public String getDescription() {
        return Description;
    }

    public Date getDate() {
        return date;
    }

    public SessionInfo() {
    
    }
    
    
    
    
    
    
}
