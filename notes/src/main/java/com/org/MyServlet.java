/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author shivani chauhan
 */
@WebServlet(name = "MyServlet", urlPatterns = {"/MyServlet"})
public class MyServlet extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
       String tittle=request.getParameter("tittle");
       String description=request.getParameter("description");
          SessionInfo ob1=new SessionInfo(tittle,description);
          ob1.setDate(new Date());
 SessionFactory factory=HibersnateFactory.getSessionFactory();
     Session session= factory.openSession();
        Transaction tr=   session.beginTransaction();
         session.save(ob1);
         session.flush();
       
         
         
         
        tr.commit();
        session.close();
      
        String html="<html>";
        html+="<head>";
        html+="<script src=\"https://unpkg.com/sweetalert/dist/sweetalert.min.js\"></script>";
        html+="</head>";
        html+="<body>";
        html+="<script>";
        html+="swal({\n" +
"  title: \"Good job!\",\n" +
"  text: \"notes added successfully\",\n" +
"  icon: \"success\",\n" +
"  button: \"ok\",\n" +
"})";
        html+="</script>";
        html+="</body>";
        html+="</html>";
        out.print(html);
       RequestDispatcher req=request.getRequestDispatcher("index.jsp");
   req.include(request, response);
       
    }

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
       
    }

    

}
