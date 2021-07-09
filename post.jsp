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

    <style>
    body {
      background: url(bgs.jpg);
      background-size: cover;
      background-attachment: fixed;
    }

    h2 {
      style: bold;
      font-weight: 400;
      text-align: center;
    }

    .myform {
      background: white;
      width: 75%;
      padding: 25px 25px 25px 25px;
      border-radius: 10px;
      margin: auto;
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
            <a class="nav-link active" href="post.jsp"><strong>Post Job</strong></a>
          </li>
          <li class="nav-item"  style="padding-right:30px">
            <a class="nav-link" href="#"><strong>My Jobs</strong></a>
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

      <div class="container">
    <br><br>
    <div class="myform shadow-lg">
    <h2>Post Job</h2>
    <br>
      <form class="was-validated" action="postJob.jsp" method="post" name="" id=""
        oninput='pass2.setCustomValidity(pass2.value != pass1.value ? "Passwords do not match." : "")'>
        <div class="row">
          <div class="form-group col-6">
            <label>Title</label>
            <input type="text" name="title" class="form-control" placeholder="Title" required>
          </div>
          <div class="form-group col-6">
            <label>Company</label>
            <input type="text" name="company" class="form-control" placeholder="Company" required>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-12">
            <label>Description</label>
            <textarea type="text" name="des" class="form-control" placeholder="Description" required></textarea>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-6">
            <label>Experience</label>
            <input type="number" name="exp" class="form-control" placeholder="Experience" required>
          </div>
          <div class="form-group col-6">
            <label>Skills</label>
            <input type="text" name="sk" class="form-control" placeholder="Skills Required" required>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-6">
            <label>Job Type:</label>
            <select class="form-control" id="sel1" name="type" required>
              <option value="" selected disabled hidden>Select Type</option>
              <option>Full Time</option>
              <option>Part Time</option>
            </select>
          </div>
          <div class="form-group col-6">
            <label>Location</label>
            <input type="text" name="loc" class="form-control" placeholder="Location" required>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-12">
            <input type="submit" class="btn btn-success" value="Post">
          </div>
        </div>
      </form>
    </div>
  </div>
      
      
  </body>
</html>