<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<html>
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>
      .col-4 {
          background-color: rgb(238, 31, 111)
      }
      .container {
          border-radius: 5px;
          display: flex;
      }
      body {
        background: url(bgs.jpg);
        background-size: cover;
        background-attachment: fixed;
      }
      .col-8:hover {
        background-color: lightyellow;
      }
      h3 {
          color: white;
      }
      h4 {
          color: white;
      }
      h6 {
        color: white;
        opacity: .6;
      }
      .btn {
        display: None;
      }
      .container:hover .btn {
         display: inline-block;
      }
  </style>
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
            <a class="nav-link active" href="#"><strong>Browse Jobs</strong></a>
          </li>
          <li class="nav-item"  style="padding-right:30px">
            <a class="nav-link" href="#"><strong>My Jobs</strong></a>
          </li>
          <li class="nav-item dropdown" style="padding-right:30px">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                Profile
            </a>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="profile.jsp">Job Profile</a>
                <a class="dropdown-item" href="#">Change Password</a>
            </div>
          </li>
          <li class="nav-item" style="padding-right:150px">
            <a class="nav-link" href="logout.jsp"><strong>Logout</strong></a>
          </li>
        </ul>
      </nav>
      <%

        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
    
        if(session.getAttribute("user")==null || session.getAttribute("type")=="Employer"){
            response.sendRedirect("login.jsp");
        }

     %>
     <br>
     <%
        String url = "jdbc:mysql://localhost:3306/jobs";
	      String user = "root";
	      String pas = "root123";
        String sql = "select * from post order by dt desc";
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url,user,pas);
          Statement st = con.createStatement();
          ResultSet rs = st.executeQuery(sql);
          
          while(rs.next()){   
      %>

            <div class="container">
              <div class="card mb-3 shadow">
                <div class="row no-gutters">
                  <div class="col-4" style="padding: 25px">
                    <h6><strong>JOB TITLE</strong></h6>
                    <h3><strong><%= rs.getString(3) %></strong></h3>
                    <h6><strong>By</strong></h6>
                    <h4><strong><%= rs.getString(4) %></strong></h3>
                  </div>
                  <div class="col-8">
                    <div class="card-body">
                      <h5 class="card-title"><strong>Description</strong></h5>
                      <p class="card-text"><%= rs.getString(5) %></p>
                      <div class="row">
                      <div class="col-9" style="align: bottom">
                        <p class="card-text"><small class="text-muted"><%= rs.getString(10) %></small></p>
                      </div>
                      <div class="col-3">
                        <a class="btn btn-primary" href="viewJob.jsp?id=<%= rs.getInt(1) %>"> View Details </a>
                      </div>
                      
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>



          <% }
          
        }
        catch(Exception e){
            out.println(e);
        }
     %>
      
  </body>
</html>