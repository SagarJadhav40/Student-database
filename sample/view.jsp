
<html><body>
<form name="test" action="update.jsp" method="POST">
<%@ page import ="java.sql.*" %>  
   <% 
try {
          String connectionURL = "jdbc:mysql://localhost:3306/stud15"; 
String rno1= request.getParameter("rno");

Connection connection = null; 


Class.forName("com.mysql.jdbc.Driver").newInstance(); 


connection = DriverManager.getConnection(connectionURL, "root", "root");
Statement s=connection.createStatement();
            ResultSet resultset = 
                s.executeQuery("select * from result where rno='" + rno1 + "'") ; 
        %>
<br><br><br><br><br><br><br><br><br><br>
        <TABLE BORDER="1" align="center">
<TR>
                <TH><h2>Details</h2></TH>
</tr>
           
            <% while(resultset.next()){ %>
            <TR>
              <td> RNo </td><TD><input type="text" value=" <%= resultset.getString(1) %>" name="rno" id="rno"></td></tr>
        <tr>      <td> Name  </td>  <TD><input type="text" value="  <%= resultset.getString(2) %>" name="sname" id="sname"></TD></tr>
  <tr>         <td> Marks  </td>    <TD> <input type="text" value=" <%= resultset.getString(3) %>" name="marks" id="marks"></TD></tr>
                
            <% } 
}
catch(Exception ex){}

%>
<tr><td><input type="submit" value="Update " ></td></tr>

        </TABLE>
</form>
</body>
</html>