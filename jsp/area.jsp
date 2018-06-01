<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CreateAccount</title>
<link rel="stylesheet"type="text/css" href="/ediagnostic/css/style.css">
</head>
<body style="background-image: url('/ediagnostic/images/div2.jpg')">
<div  style="background-image: url('/ediagnostic/images/div1.jpg');widht:1300px;height:100px"><center><h1 style="font-family:white;color:white;margin-top:20px">Area</h1></center></div>
<div style="background-image: url('/ediagnostic/images/div1.jpg');width:800px;height:400px;float:left;margin-top: 50px;margin-left:250px;align:center ">
<form  method="post" action="/ediagnostic/Area" id="usrform">
<table border="0px" style="width:600px;height:200px;margin-top:80px;margin-left:200px">
<tr><td style="color:white">Area ID</td><td><input type="text" name="txtid" id="txtid"  placeholder="enter title"></td></tr>
<tr><td style="color:white">Area Name</td><td><input type="text" name="txtnm" id="txtnm"></td></tr>
<tr><td style="color:white">Remarks</td><td><textarea name="txtremark" form="usrform">Enter text here...</textarea></td></tr>
<tr><td></td><td colspan="2"><input type="submit" value="submit"></td></tr>
</table></form>
</div>
</body>

</html>