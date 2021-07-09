<%@page import="java.sql.*"%>

<% 

    String url = "jdbc:mysql://localhost:3306/jobs";
	String user = "root";
	String pas = "root123";
    String sql1 = "select * from users where email=?";
    String sql2 = "insert into users values(?,?,?,?,?)";
    String email = request.getParameter("email");
    String pass = request.getParameter("pass1");
    String name = request.getParameter("name");
    String phno = request.getParameter("phno");
    String type = request.getParameter("type");

    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,user,pas);
        PreparedStatement st = con.prepareStatement(sql1);
        st.setString(1,email);
        ResultSet rs = st.executeQuery();
        if(rs.next()){
            response.sendRedirect("signup.jsp?m2=email");
        }
        else{
            PreparedStatement st2 = con.prepareStatement(sql2);
            st2.setString(1,name);
            st2.setString(2,email);
            st2.setString(3,pass);
            st2.setString(4,phno);
            st2.setString(5,type);
            int rs2 = st2.executeUpdate();
            if(rs2==1){
                response.sendRedirect("signup.jsp?m1=success");
            }
            else{
               response.sendRedirect("signup.jsp?m3=error");
            }
        }
    }
    catch(Exception e){
        out.println(e);
    }

 %>