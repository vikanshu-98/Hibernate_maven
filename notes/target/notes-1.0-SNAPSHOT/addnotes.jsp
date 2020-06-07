<%-- 
    Document   : addnotes
    Created on : Jun 3, 2020, 10:54:31 PM
    Author     : shivani chauhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add notes</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
       <div class="container  m">
   
            <div class="row">
          <div class="col-8">
               <form action="myservlet" method="post">
  <div class="form-group">
      <center><h2><b>Add Your Notes Here:</b></h2></center>
    <label for="exampleInputEmail1">Tittle</label>
    <input type="tittle" 
           name="tittle"
           class="form-control" 
           id="exampleInputEmail1"
           aria-describedby="emailHelp"
           placeholder="Enter tittle">
   </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Description</label>
    <textarea class="form-control " name="description" style="height:40vh;"   placeholder="enter your notes"></textarea>
  </div>
   
                  <div class="container text-center">
  <button type="submit" class="btn btn-outline-primary">Submit</button>
                    </div>
              </form> 
             </div>
        </div>
    </div>
 
            </body>
</html>
