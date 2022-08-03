<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>EndolesLine</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style2 {font-size: 24px}
.style3 {color: #FF0000}
.style4 {color: #FF0000; font-size: 24px; }

input[type=button],input[type=submit],input[type=Reset] {
  background-color:#FF940A; /* Green */
  border: none;
  color: white;
  padding: 5px 22px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  
  font-size: 16px;
  -webkit-border-radius:20px;
  -moz-border-radius:20px;
   border-radius:5px;
   
}
-->
</style>
</head>
<body>
		<table width="920"  border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
			<td height="557" valign="top">
			<table width="920"  border="0" cellspacing="0" cellpadding="0">
			  <tr>
				<td>
						<table width="920"  border="0" cellspacing="0" cellpadding="0">
						  <tr>
							<td width="256"><a href="http://www.templatesfreelance.com/" class="style2">OrganDonation.com</a></td>
							<td width="664"><a href="http://www.templatesfreelance.com/"><img src="images/h2.jpg" alt="" width="664" height="74" border="0"></a></td>
						  </tr>
						</table>
				</td>
			  </tr>
			  <tr>
				<td height="39" class="menu"><table width="920"  border="0" cellspacing="0" cellpadding="0">
                  <tr align="center">
                    <td width="153"><a href="regh.jsp" id="linktop">Register Hospital </a></td>
                    <td width="155"><a href="epwa.jsp" id="linktop">Editpassword</a></td>
                    <td width="156"><a href="regdonar.jsp" id="linktop">Register Donar </a></td>
                    <td width="154"><a href="search.jsp" id="linktop">Search</a></td>
                    <td width="154"><a href="uploadearlycases.jsp" id="linktop">Upload Earlier Cases</a></td>
                    <td width="167"><a href="index.html" id="linktop">Sign out </a></td>
                  </tr>
                </table></td>
			  </tr>
			  <tr>
				<td height="26">&nbsp;</td>
			  </tr>
			  <tr>
				<td>
						<table width="920" height="145"  border="0" cellpadding="0" cellspacing="0">
						  <tr align="left" valign="top">
							<td><a href="http://www.templatesfreelance.com/"></a><a href="http://www.templatesfreelance.com/"></a>
							<form id="form1" name="form1" method="post" action="#">
      <table width="75%" border="0" align="center" cellpadding="0" cellspacing="5">
        <tr>
          <td><h1 class="style3">&nbsp;</h1></td>
          <td>&nbsp;</td>
          <td colspan="2"><span class="style4">Reset PassWord </span></td>
          </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td width="20%">Old Password :</td>
          <td width="2%">&nbsp;</td>
          <td width="40%"><input type="text" name="textfield" id="textfield" required="required" /></td>
          <td width="38%" rowspan="4"><div align="center"><img src="images/reset-password.jpg" width="256" height="140"></div></td>
        </tr>
        <tr>
          <td>New Password :</td>
          <td>&nbsp;</td>
          <td><input type="text" name="textfield2" id="textfield2" required="required" /></td>
        </tr>
        <tr>
          <td>Confirm Password :</td>
          <td>&nbsp;</td>
          <td><input type="text" name="textfield3" id="textfield3"  required="required"/></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td valign="top"><input type="submit" name="Login" id="Login" value="Submit" />
              <input type="reset" name="Login2" id="Login2" value="Reset" /></td>
        </tr>
      </table>
    </form>
                            <div align="center">
                              <%@page import ="java.sql.*"%>
                              <%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
                              <%
	 	 try
	  
	  	{
				String b=request.getParameter("Login");
				if(request.getParameter("Login")!= null)
				{
	      Class.forName("com.mysql.cj.jdbc.Driver");
		  Connection con=DriverManager.getConnection("jdbc:mysql://mysql:3306/organdonar","root","mysql");
		  Statement stmt=con.createStatement();
		  ResultSet rs,rs1,rs2;
		  
		  String s=request.getParameter("textfield").trim();//old
		  String s1=request.getParameter("textfield2").trim();//new
		  String s3=request.getParameter("textfield3").trim();//confirm
		  String email =(String)session.getAttribute("admin");
		   
			

		rs=stmt.executeQuery("select * from admin where u="+"'"+email+"'");
		//String v1="",v2="";
		int found=0;
		while (rs.next())
		{ 
			found=1;
			break;
			}
			
		  if(found==1)
		  {
		  String str="Update admin set p=? where u=?";
		 // out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,s1);
				psmt.setString(2,email);
				psmt.executeUpdate();
		//out.println(s1+","+s3);
				psmt.close();
				rs.close();
				//response.sendRedirect("adepwsaveack.jsp");
		   
				con.close();
				
		out.println("<h1 align=center ><b>Updated successfully</b></h1>");
         //   response.sendRedirect("donerregsaveack.jsp");
		 }
	
	else
		{
		
				out.println("<h1 align=center >Some thing has gone wrong ...Pls chk</h1>");
		
		}
		}
    }
    	catch(Exception e)
    	{
    	 out.println("Exception occured" +e);
    
	}
		
%>
                            </div></td>
						  </tr>
						</table>
				</td>
			  </tr>
			</table>
					  <table width="920"  border="0" cellspacing="0" cellpadding="0">
						<tr>
						  <td height="26">&nbsp;</td>
						</tr>
						<tr>
						  <td><table width="100%"  border="0" cellspacing="0" cellpadding="0">
							  <tr>
								<td>&nbsp;</td>
							  </tr>
							</table></td>
						</tr>
					  </table>
			  </td>
		  </tr>
		</table>
</body>
</html>
