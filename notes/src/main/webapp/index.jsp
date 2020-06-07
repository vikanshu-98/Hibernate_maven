<%-- 
    Document   : index
    Created on : Jun 3, 2020, 8:17:28 PM
    Author     : shivani chauhan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>   
 <div id="carouselExampleSlidesOnly" class="carousel slide pr" data-ride="carousel">
  <div class="carousel-inner clip-path">
    <div class="carousel-item active ">
      <img class="d-block w-100" src="image/ninee.jpg" alt="First slide">
    <div class="carousel-caption d-none d-md-block">
        <h1 class="w3-container w3-center w3-animate-top"><i><b>Welcome Dear for add your notes</b></i></h1>
        <button  onclick="window.location.href='addnotes.jsp'" class="tx"> <span class="fa fa-plus-circle  fa-2x fa-spin">  </span> Add Notes </button>
    
  </div>
    
    
    
    
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="image/eleven.jpg" alt="Second slide">
       <div class="carousel-caption d-none d-md-block">
           <h1><i><b>Welcome Dear for add your notes</b></i></h1>
        <button onclick="window.location.href='addnotes.jsp'" class=" tx"> <span class="fa fa-plus-circle  fa-2x fa-spin">  </span>  Add Notes </button>
    
  </div>
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="image/ten.jpg" alt="Third slide">
       <div class="carousel-caption d-none d-md-block">
           <h1><i><b>Welcome Dear for add your notes</b></i></h1>
           <button onclick="window.location.href='addnotes.jsp'" class="tx"> <span class="fa fa-plus-circle  fa- fa-spin">  </span> Add Notes </button>
    
  </div>
    </div>
  </div>
</div>
            
           
           
            
            
    
        
    
         
                 
    
   
   
        
      
            
        
    </body>
</html>
