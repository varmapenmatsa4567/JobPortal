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

    <script type="text/javascript">
         $('#myModal').modal({
         show: true
         });
    </script>
    <nav class="navbar navbar-fixed-top navbar-expand-sm bg-dark navbar-dark justify-content-end">
        <ul class="navbar-nav nav-pills">
          <li class="nav-item"  style="padding-right:30px">
            <a class="nav-link" href="index.jsp"><strong>Home</strong></a>
          </li>
          <li class="nav-item"  style="padding-right:30px">
            <a class="nav-link" href="login.jsp"><strong>Login</strong></a>
          </li>
          <li class="nav-item" style="padding-right:150px">
            <a class="nav-link active" href="signup.jsp"><strong>SignUp</strong></a>
          </li>
        </ul>
      </nav>

      <div class="modal" id="myModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Success</h4>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
               Sign up Successfull!!!. Click on Login
            </div>
            <div class="modal-footer">
              <a href="login.jsp" class="btn btn-success" >Login</a>
              <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
      </div>

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
    
      <div class="container">
    <br><br>
    <div class="myform shadow-lg">
    <h2>Sign Up</h2>
    <br>
      <form class="was-validated" action="insertUser.jsp" method="post" name="" id=""
        oninput='pass2.setCustomValidity(pass2.value != pass1.value ? "Passwords do not match." : "")'>
        <div class="row">
          <div class="form-group col-6">
            <label>Name</label>
            <input type="text" name="name" class="form-control" placeholder="Name" required>
          </div>
          <div class="form-group col-6">
            <label>Email</label>
            <input type="email" name="email" class="form-control" placeholder="Email" required>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-6">
            <label>Password</label>
            <input type="password" name="pass1" class="form-control" placeholder="Password"
              pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
              title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
              required>
          </div>
          <div class="form-group col-6">
            <label>Confirm Password</label>
            <input type="password" name="pass2" class="form-control" placeholder="Confirm Password" required>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-6">
            <label>Mobile No</label>
            <input type="text" name="phno" class="form-control" placeholder="Phone no" required>
          </div>
          <div class="form-group col-6">
            <label>User Type:</label>
            <select class="form-control" id="sel1" name="type" required>
              <option value="" selected disabled hidden>Select Type</option>
              <option>Job Seeker</option>
              <option>Employer</option>
            </select>
          </div>
        </div>
        <div class="row">
          <div class="form-group col-12">
            <input type="submit" class="btn btn-success" value="Sign Up">
          </div>
        </div>
      </form>
    </div>
  </div>
      
      
  </body>
</html>