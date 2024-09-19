<%@ page import ="java.sql.*" %>
<%
String rno1= request.getParameter("rno");
String sname1= request.getParameter("sname");
String marks1= request.getParameter("marks");

Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stud15","root", "root");
Statement st = con.createStatement();

 int i = st.executeUpdate("insert into result values ('" + rno1 + "','" + sname1 + "','" + marks1 + "')");

%>
<script>
	  alert("Saved Successfully");
	  </script>