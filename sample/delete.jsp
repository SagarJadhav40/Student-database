<%@ page import ="java.sql.*" %>
<%
String rno1= request.getParameter("rno");

Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stud15","root", "root");
Statement st = con.createStatement();

 int i = st.executeUpdate("delete from result where rno='" + rno1 + "'");

%>
<script>
	  alert("Deleted Successfully");
	  </script>