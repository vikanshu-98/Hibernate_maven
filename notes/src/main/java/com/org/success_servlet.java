/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;

/**
 *
 * @author shivani chauhan
 */
@WebServlet(name = "success_servlet", urlPatterns = {"/success_servlet"})
public class success_servlet extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
      try{
        String title=  request.getParameter("tittle");
         String Description= request.getParameter("description");
     int id= Integer.parseInt(request.getParameter("update"));
         Session ses=HibersnateFactory.getSessionFactory().openSession();
      ses.beginTransaction();
      SessionInfo session=(SessionInfo)ses.get(SessionInfo.class, id);
      session.setDate(new Date());
      session.setTittle(title);
      session.setDescription(Description);
      ses.getTransaction().commit();
      
      
      ses.close();
     
      response.sendRedirect("showNotes.jsp");
      
      
      }
      
      catch(Exception e){
          e.printStackTrace();
        
    }}

   
 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
}
