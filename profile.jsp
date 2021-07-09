<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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

      
    
      <div class="container">
    <br><br>
    <div class="myform shadow-lg">
    <h2>Job Profile</h2>
    <br>
      <form class="was-validated" action="addProfile.jsp" method="post" enctype="multipart/form-data">
          <div class="form-group">
            <label>Full Name</label>
            <input type="text" name="name" class="form-control" placeholder="Name" required>
          </div>
          <div class="form-group">
            <label>Gender:</label>
            <select class="form-control" id="sel1" name="gender" required>
              <option value="" selected disabled hidden>Select Gender</option>
              <option>Male</option>
              <option>Female</option>
            </select>
          </div>
          <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" class="form-control" placeholder="Email" required>
          </div>
          <div class="form-group">
            <label>Phone No:</label>
            <input type="number" name="phno" class="form-control" placeholder="Phone No" required>
          </div>
          <div class="form-group">
            <label>Experience</label>
            <input type="number" name="exp" class="form-control" placeholder="Experience" required>
          </div>
          <div class="form-group">
            <label>Skills</label>
            <input type="text" name="sk" class="form-control" placeholder="Skills" required>
          </div>
          <div class="form-group">
            <label>Choose Resume</label>
            <input type="file" class="form-control-file border" name="file" required>
          </div>
          <div class="row">
            <div class="form-group col-12">
                <input type="submit" class="btn btn-success" value="Submit">
            </div>
          </div>
      </form>
    </div>
  </div>
      
      
  </body>
</html>