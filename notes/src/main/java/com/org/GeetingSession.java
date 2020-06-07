/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.org;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

 
public class GeetingSession {
    public static SessionFactory factory;
 
  

    public static SessionFactory getFactory() {
 try{     
     if(factory==null){
         Configuration  conf=new Configuration();
 
        factory=conf.buildSessionFactory();
                 }
        
 }catch(Exception e){
 e.printStackTrace();
 }
    
    return factory;}
    
   
    public static  void factoryClosed(){
       if(!factory.isOpen())
            factory.close();
    }

     }
