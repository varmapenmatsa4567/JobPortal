<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.SimpleDateFormat,java.util.Date" %>
<html>
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark justify-content-end navbar-fixed-top">
        <ul class="navbar-nav nav-pills">
          <li class="nav-item"  style="padding-right:30px">
            <a class="nav-link" href="post.jsp"><strong>Post Job</strong></a>
          </li>
          <li class="nav-item"  style="padding-right:30px">
            <a class="nav-link active" href="#"><strong>My Jobs</strong></a>
          </li>
          <li class="nav-item" style="padding-right:150px">
            <a class="nav-link" href="logout.jsp"><strong>Logout</strong></a>
          </li>
        </ul>
      </nav>
      <%

        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
        if(session.getAttribute("user")==null || session.getAttribute("type")=="Job Seeker"){
            response.sendRedirect("login.jsp");
        }

     %>

      <%
        if(request.getParameter("m1")!=null){%>
            <div class="container">
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <strong>SignUp Successful </strong><a href="login.jsp">Click here to Login</a>
            </div></div>
        <% }
      %>
      <%
        if(request.getParameter("m2")!=null){%>
            <div class="container">
            <div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert">&times;</button>
                <strong>Email Already Exists </strong><a href="login.jsp">Click here to Login</a>
            </div></div>
        <% }
      %>

      <% 

           SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
           Date date = new Date();  
           out.println(formatter.format(date));  

      %>
      
      
  </body>
</html>