<%-- 
    Document   : showNotes
    Created on : Jun 5, 2020, 6:52:56 PM
    Author     : shivani chauhan
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.org.SessionInfo"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.org.HibersnateFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Notes</title>
    </head>
    <body>
        
        <div class="container n "> 
             <%@include file="navbar.jsp" %> 
            <h2><b>All Notes:</b></h2>
               <%
               Session s=HibersnateFactory.getSessionFactory().openSession();
               Query query=s.createQuery("from data_table");
               List<SessionInfo> list=query.list();
               for(SessionInfo in:list){
              %>
               
              <div class="card c">
                  <center><img class="card-img-top" src="image/note.png" style="max-width:100px;" alt="Card image cap">
                  </center> 
                      <div class="card-body">
      <center>
          <h5 class="card-title"><b><%=in.getTittle()  %></b></h5>
      </center>
      <p class="card-text"><%=in.getDescription()  %></p>
      <p class="card-text"><span class="fa fa-calendar">  : </span><b> <%=in.getDate()  %></b></p>
    
    <div class="container text-center">
    <a href="delete_servlet?id=<%=in.getId() %>" class="btn btn-danger">Delete</a>
        <a href="update.jsp?id=<%=in.getId()%>" class="btn btn-success">Update</a>
    </div></div>
</div>
    <%
 }
 s.close();
   %>
       
        </div>
    </body>
</html>
