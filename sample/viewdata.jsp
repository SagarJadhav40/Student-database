<!DOCTYPE html>   
<%@ page import ="java.sql.*" %>
<head>
<script>
function adjust(obj)
{

if(obj.name == "b2")
{
document.test.action = "stud.html";

return true;
}
}
</script>
<link rel="stylesheet" type="text/css" href="jquery-ui-1.10.4.custom/css/custom-theme/jquery-ui-1.10.4.custom.min.css">
<script src="jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<meta charset="utf-8">   
<meta name="description" content="Creating a Employee table with Twitter Bootstrap. Learn with example of a Employee Table with Twitter Bootstrap.">  
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>



</head>  
<body >  
<div class="container">

<!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
	  <div class="col-xs-12">
	    <div class="box">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          
        </section>
        <section class="content">
 <form method="post" action="" name="test">
 <div class="box-body" style="margin-left: 15px; margin-right: 15px;"><br><br><br><br>
  <table >
<tr><td> <h3>
          Student List	  </h3></td></tr>
<tr>

</table>

        <%

     Class.forName("com.mysql.jdbc.Driver");

    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stud15","root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
	%>
	
	<table id="myTable" class="table table-striped"   style='width: 50%; height: 50%;'class='table table-bordered table-striped' >  
        <thead>  
          
		    <th>RNo</th>  
            <th>Name</th>  
            <th>Marks</th>  
           
            
   				  
          </tr>  
        </thead>  
        <tbody>  
	<%
	
	
	
	String query = "select * from result";
Statement st1 = con.createStatement();
ResultSet rs1 = st1.executeQuery(query);
while(rs1.next()){

%>


<td><input type="text"   style="border:none;" value="<%=rs1.getString("rno")%>"  ></td>
<td><input type="text" style="border:none;" value="<%=rs1.getString("sname")%>"></td>
<td><input type="text"  style="border:none;" value="<%=rs1.getString("marks")%>"></td></tr><br>



<%
}

%>
        </tbody>  
      </table>  
	  </div>
<table align="center">
<tr>

<td><input type="submit" value="Cancel" name="b2" id="b2" onClick="return adjust(this);"></td></tr>


</table>
</body>  
<script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script>

</html>  
