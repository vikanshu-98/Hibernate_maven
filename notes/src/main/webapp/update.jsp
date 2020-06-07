<%-- 
    Document   : update
    Created on : Jun 5, 2020, 11:13:42 PM
    Author     : shivani chauhan
--%>

<%@page import="com.org.SessionInfo"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.org.HibersnateFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update</title>
    </head>
    <body>
       
        <%@include file="navbar.jsp" %>
         
    
    <%
    Session ses=HibersnateFactory.getSessionFactory().openSession();
   int id=Integer.parseInt( request.getParameter("id"));
   SessionInfo sesion=(SessionInfo) ses.get(SessionInfo.class,id);
     
    ses.close();
    %>
    <div class="container  m">
   
            <div class="row">
          <div class="col-8">
               <form action="success_servlet" method="post">
  <div class="form-group">
      <center><h2><b>Update Your Notes Here</b></h2></center>
      <input type="hidden" value="<%=sesion.getId()  %>" name="update" />
      
      
      <label for="Tittle">Tittle</label>
     
    <input type="tittle" 
           name="tittle"
            value="<%=sesion.getTittle()  %>"
           class="form-control" 
           id="exampleInputEmail1"
           aria-describedby="title"
           
           placeholder="Enter tittle">
   </div>
  <div class="form-group">
    <label for="Description">Description</label>
    <textarea
        class="form-control " 
               name="description"
              style="height:40vh;" 
            <%=sesion.getDescription() %>
              placeholder="enter your notes">
    <%=sesion.getDescription() %></textarea>
  </div>
   
                  <div class="container text-center">
  <button type="submit" class="btn btn-outline-success">update</button>
                    </div>
              </form> 
             </div>
        </div>
    </div>
 
      
    </body>
</html>
