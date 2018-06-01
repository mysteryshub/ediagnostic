<%@page import="java.sql.SQLException"%>
<%@page import="com.dbutil.CrudOperation"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"type="text/css" href="/ecollege/css/style.css">
</head>
<body style="background-image: url('/ediagnostic/images/div1.jpg')">
<% HttpSession hs=request.getSession(false);
String userid=(String)hs.getAttribute("userinfo");
/*if(userid==null||hs.isNew())
{
	response.sendRedirect("/ecollege/jsp/login.jsp?msg=unauthorised access");
}
else
{*/
	
	%>

	<div style="background-image: url('/ediagnostic/images/div1.jpg');width:100%;height:260px;border-style:ridge; border-color: white;border-radius:20px">
	<div class="containerdiv" border="0" style="background-image:url('/ecollege/images/div1.jpg')"><img src="/ediagnostic/images/shi.jpg" width=200 height=80/><img src="/ediagnostic/images/logo.jpg" width=400 height=80/> <%-- <h1 style="color:red;display:inline;float: left;margin-left:90px;margin-top:50px"><%=rs.getString("name")%></h1> --%>
    <div class="cornerimage" border="0" style="background-image:url('/ecollege/image/blank.jpg');float:left;margin-left: 10px;margin-top: 100px"></div>
    <div class="b" style="background-color: white;width:150px;height:50px;float:left;margin-left:50px;margin-top:280px"><center><a href="/ecollege/jsp/edit.jsp">EDIT</center></a></div>
     <div class="b" style="background-color: white;width:150px;height:50px;float:left;margin-left:2px;margin-top:280px"><center><a href="/ecollege/jsp/inbox.jsp">INDEX</center></a></div>
      <div class="b" style="background-color: white;width:150px;height:50px;float:left;margin-left:2px;margin-top:280px"><center><a href="/ecollege/jsp/compose.jsp">COMPOSE</center></a></div>
       <div class="b" style="background-color: white;width:150px;height:50px;float:left;margin-left:2px;margin-top:280px"><center><a href="/ecollege/jsp/sent-item.jsp">SENTITEMS</center></a></div>
    </div>
	</div>
	<div style="background-image:url('/ecollege/image/e-dia1.jpg');width:60%;height:300px;float:left;margin-left: 0px;margin-top: 100px"></div>
	
	
<% 
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;

con=CrudOperation.CreateConnection();
String strsql="select * from faculty where userid=?";
try
{
	ps=con.prepareStatement(strsql);
	ps.setString(1,userid);
	rs=ps.executeQuery();
	
	rs.next();
		%>
		<div style="background-color: black;width:300px; height:55px;margin-top: 10%;margin-left:70%" ><center><h1 style="color:white">Profile</h1></center></div>
		<div style="background-color:white;text-decoration:underline; width: 300px;height:200px;margin-top :-200px;margin-left:70%;float:left">
<center><table>

<tr><th>Name</th><th>:<%=rs.getString("name") %></th></tr><br>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Phoneno</th><th>:<%=rs.getLong("phoneno") %></th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Email</th><th>:<%=rs.getString("email") %></th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Address</th><th>:<%=rs.getString("address") %></th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
</table></center></div>
<% 
}
	catch(SQLException se)
	{
	System.out.println(se);
	}
finally
{
	try
	{
		if(rs!=null)
		{
			rs.close();
		}
		if(ps!=null)
		{
			ps.close();
		}
	}
	catch(SQLException se)
	{
		System.out.println(se);
	}
}

	%>
</body>
</html>