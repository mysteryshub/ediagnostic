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
<link rel="stylesheet"type="text/css" href="/ediagnostic/css/style.css">
<link rel="stylesheet" type="text/css" href="/ediagnostic/css/des.css">
</head>
<body style="background-image: url('/ediagnostic/images/div2.jpg')">
<% HttpSession hs=request.getSession(false);
String userid=(String)hs.getAttribute("userinfo");
String path=request.getContextPath();
String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println(basepath);
String actpath=null;

	
	%>
<div style="background-image: url('/ediagnostic/images/div1.jpg');width:100%;height:260px;border-style:ridge; border-color: white;border-radius:20px">
	<div class="containerdiv b" border="0" style="/* background-image:url('/ediagnostic/images/logo.jpg'); */float:left;margin-left:0px"><img src="/ediagnostic/images/shi.jpg" width=200 height=80><img src="/ediagnostic/images/logo.jpg" width=400 height=80/></div> <%-- <h1 style="color:red;display:inline;float: left;margin-left:90px;margin-top:50px"><%=rs.getString("name")%></h1> --%>
 
   <a href="/ediagnostic/jsp/upload.jsp" style="float: left;margin-left: -10px;margin-top: 270px;margin-right: 100px">Upload picture</a>
    <div class="bm1" style="background-color:cyan;width:100px;height:50px;float:left;margin-left:0px;margin-top:270px"><center><a style="color:black;" href="/ediagnostic/jsp/EditProfile.jsp"><p style="font-size:20px">EDIT</p></center></a></div>
     <!-- <div class="bm1" style="background-color:cyan;width:200px;height:50px;float:left;margin-left:-350px;margin-top:270px"><center><a style="color:black;" href="/ediagnostic/jsp/CreateAccount.jsp"><p style="font-size:20px">Create Account</p></center></a></div> -->
    <div class="bm1" style="background-color:cyan;width:100px;height:50px;float:left;margin-left:0px;margin-top:270px"><center><a style="color:black;" href="/ediagnostic/jsp/inbox.jsp"><p style="font-size:20px">INBOX</p></center></a></div>
    <div class="bm1" style="background-color:cyan;width:100px;height:50px;float:left;margin-left:0px;margin-top:270px"><center><a style="color:black;" href="/ediagnostic/jsp/Compse.jsp"><p style="font-size:20px">COMPOSE</p></center></a></div>
       <div class="bm1" style="background-color:cyan;width:220px;height:50px;float:left;margin-left:0px;margin-top:270px"><center><a style="color:black;" href="/ediagnostic/jsp/Senditem.jsp"><p style="font-size:20px">SENTITEMS</p></center></a></div>
       </div>
       <div style="float:left;margin-left: 300px;margin-top: -70px">
      <h1 style="color=white;"> Hello <%= userid %></h1>
       </div>
	<div style="background-image:url('/ediagnostic/image/e-dia1.jpg');width:0%;height:300px;float:left;margin-left: 0px;margin-top: 100px"></div>
	
<% 
Connection con=null;
PreparedStatement ps=null;
ResultSet rs=null;
con=CrudOperation.CreateConnection();
 String strsql="select * from doctor where userid=?";
try
{
	ps=con.prepareStatement(strsql);
	ps.setString(1,userid);
	rs=ps.executeQuery();
	rs.next();
	String pic=rs.getString("picname");
	
	System.out.println(pic);
	if(pic==null)
	{
 		actpath="/ediagnostic/image/blank.jpg";
	}
	else
	{
		actpath=basepath+userid+"/"+pic;
	}
	System.out.println(actpath);
	
		%> 
 
 <img src="<%=actpath%>" style="width:200px;height:200px;margin-top:-100px;margin-left: -1250px"> 
 
 
 
		<div class="bm2" style="background-color:gray;width:300px; height:55px;margin-top:10px;margin-left:70%" ><div class="bm2" style="background-color:gray;text-decoration:underline;font-size:30px; width:70px;height:30px;float:left;margin-left: 90px;margin-top: 00px">Profile</div></div>
		<div style="background-color:white;text-decoration:underline; width: 300px;height:0px;margin-top :-280px;margin-left:70%;float:left">
<center><table>

<tr><th>Name</th><th>::</th><th><%=rs.getString("Name") %></th></tr><br>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Phone number</th><th>::</th><th><%=rs.getLong("Phonno") %></th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Email</th><th>::</th><th> <%=rs.getString("Email") %></th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Address</th><th>::</th><th><%=rs.getString("Address") %></th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Area Id</th><th>::</th><th><%=rs.getString("areaId") %></th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Registration number</th><th>::</th><th><%=rs.getString("registrationNo") %></th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Skills</th><th>::</th><th><%=rs.getString("skills") %></th></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><th>Higher Qualification</th><th>::</th><th><%=rs.getString("Higherqualification") %></th></tr>
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
<!-- <div class="a" style="background-color:blue; width:100%; height:50px;id:'my';margin-top: 300px">
<center><p style="font-size:15px;margin-bottom:5px">
eDaignostic is eqipped with the State of the Art Spiral CT Scanner,Colour Doppler, High Resolution Ultrasound Scanner, Video Endoscopy, 
Echocardiology, TMT, PFT,EEG, and one of the most modern ICU, NICU, Dialysis, Neuro Sugery, Pathology and Biochemistry Labs with highly trained staff.
</p>  </center> </div>
 -->
	 <img src="/ediagnostic/images/cer.jpg" style="width:250px;height:300px"> 
</body>
</html>