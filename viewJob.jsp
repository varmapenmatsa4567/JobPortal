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
        body {
            background: url(bgs.jpg);
            background-size: cover;
            background-attachment: fixed;
      }
      .container {
          background-color: white;
          padding: 25px 25px 25px 25px;
          border-radius: 10px;
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
                <a class="dropdown-item" href="#">Job Profile</a>
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
        String sql = "select * from post where id=?";
        try{
          Class.forName("com.mysql.jdbc.Driver");
          Connection con = DriverManager.getConnection(url,user,pas);
          PreparedStatement st = con.prepareStatement(sql);
          st.setInt(1,Integer.parseInt(request.getParameter("id")));
          ResultSet rs = st.executeQuery();
          rs.next();
     %>
          <div class="container">
            <table class="table table-bordered table-hover">
                <tbody>
                    <tr>
                        <td><strong>Job Title</strong></td>
                        <td><%= rs.getString(3) %></td>
                    </tr>
                    <tr>
                        <td><strong>Company</strong></td>
                        <td><%= rs.getString(4) %></td>
                    </tr>
                    <tr>
                        <td><strong>Description</strong></td>
                        <td><%= rs.getString(5) %></td>
                    </tr>
                    <tr>
                        <td><strong>Experience</strong></td>
                        <td><%= rs.getString(6) %> year</td>
                    </tr>
                    <tr>
                        <td><strong>Skills Required</strong></td>
                        <td><%= rs.getString(7) %></td>
                    </tr>
                    <tr>
                        <td><strong>Job Type</strong></td>
                        <td><%= rs.getString(8) %></td>
                    </tr>
                    <tr>
                        <td><strong>Location</strong></td>
                        <td><%= rs.getString(9) %></td>
                    </tr>
                    <tr>
                        <td><strong>Post Date</strong></td>
                        <td><%= rs.getString(10) %></td>
                    </tr>
                </tbody>
            </table>
            <p>
            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                Apply for this Job
            </button>
            </p>
            <div class="collapse" id="collapseExample">
                <div class="card card-body">
                    <form action="#" method="post">
                        <input type="date" value="04/10/2001">
                    </form>
                </div>
            </div>
          </div>
        
     <% }
        catch(Exception e){
            out.println(e);
        }
     %>
      
  </body>
</html>