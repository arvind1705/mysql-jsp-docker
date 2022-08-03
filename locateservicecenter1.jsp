<html>
<head>
<title>Vehicle Mgmt System</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="include/admin.css" rel="stylesheet" type="text/css">
<link href="include/menu.css" rel="stylesheet" type="text/css">
<link href="include/main.css" rel="stylesheet" type="text/css">
<link rel="STYLESHEET" type="text/css" href="include/calendar.css">

<style type="text/css">
<!--
html,body{
    text-align: center;
    background-image: url(images/pattern.gif);
}
.style1 {
	font-size: 16px;
	font-weight: bold;
	color: #D22929;
}
.white{
color:#FFFFFF;
}
.style3 {font-size: 36px}
.style5 {font-size: 24px}

-->
</style>
</head>
<body>
<div class="">
<table width="1000" border="0" align="center" cellpadding="0" cellspacing="1" class="graybox">
  <tr>
    <td colspan="2">
	  <div align="center">
	    <%@ include file="include/header.jsp" %>
      </div></td>
  </tr>
  <tr>
    <td colspan="2"  bgcolor="#D22929" style="height:30px;"><span class="style1">
      <marquee truespeed="truespeed">
      <div align="center"></div>
      </marquee></span></td>
  </tr>
  <tr>
    <td width="20%" valign="top" bgcolor="#EED9A8" class="navArea"><p>&nbsp;</p>
     
	  <p align="center">&nbsp;</p>
	  <p align="center">&nbsp;</p>
	  <p align="center">&nbsp;</p>
	  <p align="center">&nbsp;</p>
	  <p align="center">&nbsp;</p>
	  <p align="center"><a href="epwg.jsp">EditPassword</a></p>
	  
	  <p align="center"><a href="losc.jsp">Locate Service Center</a></p>
      <p align="center"><a href="index.jsp">Logout</a></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
	  <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
	  
    </td>

    <td width="80%" valign="top" class="contentArea"><table width="100%" border="0" cellspacing="0" cellpadding="20">
        <tr>
          <td><div align="center" class="style3">Breakdownassistance.com with realtime google maps</div></td>
        </tr>
      </table>
      <p>&nbsp;</p>
      <p align="center" class="style5">&nbsp;</p>
      <div align="center">
	  	  <% 
	  
	  
	  		String t1=request.getParameter("s4").trim();
		  		String t2=request.getParameter("s5").trim();
				out.println(t1+","+t2);
			
			
			
	
	  	  
	  %></div>
		               	<p align="center">&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
  </tr>
</table></div>
<p>&nbsp;</p>
<div class="white">
<p align="center">Copyright 2002 - 2009 - <b>Vehicle-Management.com</b> - All Rights Reserved <br>
  <br>
  <strong>Home</strong><strong> | </strong><strong>Profile</strong><strong> | </strong><strong>Site                     Map</strong><strong> | </strong><strong>Services</strong><strong> | </strong><strong>Terms                     &amp; Conditions</strong><strong> | </strong><strong>Disclaimer</strong><strong> | </strong><strong>Partners</strong><strong> | </strong><strong>Contact                     us</strong></p>
 
</body>
</html>
