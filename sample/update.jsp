<%@ page import ="java.sql.*" %>
<%
String rno1= request.getParameter("rno");
String sname1= request.getParameter("sname");
String marks1= request.getParameter("marks");
out.print(rno1);
out.print(sname1);
out.print(marks1);
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stud15","root", "root");
Statement st = con.createStatement();

 int i = st.executeUpdate("update result set sname='" + sname1 + "',marks='" + marks1 + "' where rno='" + rno1 + "' ");

%>
<script>
	  alert("Updated Successfully");
	  </script>