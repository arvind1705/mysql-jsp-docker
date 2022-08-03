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
.style4 {font-size: 24px; color: #FF0000; }
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
				<td height="39" class="menu">
						<table width="920"  border="0" cellspacing="0" cellpadding="0">
						  <tr align="center">
							<td width="153"><a href="about.jsp" id="linktop">About Us</a></td>
							<td width="155"><a href="services.jsp" id="linktop">Services</a></td>
							<td width="156"><a href="signup.jsp" id="linktop">Signup</a></td>
							<td width="154"><a href="signin.jsp" id="linktop">SignIn</a></td>
							<td width="154"><a href="dmemorial.jsp" id="linktop">Donar memorial</a></td>
							<td width="154"><a href="transplant.jsp" id="linktop">Transplant centers</a></td>
							<td width="154"><a href="feedback.jsp" id="linktop">Feedback</a></td>
							<td width="167"><a href="contactus.jsp" id="linktop">Contact Us</a></td>
						  </tr>
						</table>
				</td>
			  </tr>
			  <tr>
				<td height="26">&nbsp;</td>
			  </tr>
			  <tr>
				<td>
						<table width="920" height="145"  border="0" cellpadding="0" cellspacing="0">
						  <tr align="left" valign="top">
							<td><a href="http://www.templatesfreelance.com/"></a><a href="http://www.templatesfreelance.com/"></a>
							  <form name="form1" method="post" action="">
                                <p>&nbsp;</p>
                                <p align="center">&nbsp;</p>
                                <table width="684" height="206" border="0" align="center">
                                  <tr>
                                    <td width="241"><img src="images/login.jpg" width="241" height="167" /></td>
                                    <td colspan="4"><table width="100%" border="0" cellspacing="10" cellpadding="0">
                                        <tr>
                                          <td>&nbsp;</td>
                                          <td><span class="style4">SignIn</span></td>
                                        </tr>
                                        <tr>
                                          <td width="22%">Log As </td>
                                          <td width="78%"><label>
                                            <select name="select">
                                              <option value="Admin">Admin</option>
                                              <option value="Donar">Donar</option>
                                              <option value="Hospital">Hospital</option>
                                            </select>
                                          </label></td>
                                        </tr>
                                        <tr>
                                          <td>Email Id </td>
                                          <td><input type="text" name="u" id="u" required="required" /></td>
                                        </tr>
                                        <tr>
                                          <td>Password</td>
                                          <td><input name="p" type="password" id="p" required="required" /></td>
                                        </tr>
                                        <tr>
                                          <td>&nbsp;</td>
                                          <td><input type="submit" name="button" id="button" value="Sign In" />
                                            <input type="reset" name="button2" id="button2" value="reset" /></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td><label></label>
                                        <div align="center"><a href="resetpass.jsp"></a></div></td>
                                    <td width="175">&nbsp;</td>
                                    <td width="137"><a href="resetpass.jsp">Forgotpassword?</a></td>
                                    <td width="55">&nbsp;</td>
                                    <td width="54">&nbsp;</td>
                                  </tr>
                                </table>
                                <p>&nbsp;</p>
							  </form>
						    </td>
						  </tr>
						</table>
				</td>
			  </tr>
			</table>
					  <table width="920"  border="0" cellspacing="0" cellpadding="0">
						<tr>
						  <td height="26"><p align="center"><span class="col-lg-8 col-lg-offset-2">
                           	<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%>
<%
if(request.getParameter("button")!= null)
{
try
{
   Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
      String type=request.getParameter("select").trim();
   
       
      String u=request.getParameter("u").trim();
      String p=request.getParameter("p").trim();
      
	  if(type.equals("Admin"))
	  {
	     rs=stmt.executeQuery("select * from admin where u="+"'"+u+"'"+" and p="+"'"+p+"'");
      //String s="",s1="";
      int found=0;
	  String a="";
      while(rs.next())
      {
			a=rs.getString(2);
			found++;

				  
		}
		  out.println(found);
		 if(found==1)
		 {
		 
		
		 
		 		 session.setAttribute("admin",u);

		                 response.sendRedirect("adminpage.jsp"); 
		}
		  else
		 {
		             out.println("<h1>Invalid User</h1>");
					 
					    //response.sendRedirect("invaliduser.jsp"); 
			}
                  rs.close();
		
			stmt.close();
			con.close();	  
				  
				  
	  }
	  else if(type.equals("Donar"))
	  {
	  
	  rs=stmt.executeQuery("select * from signup where emailid="+"'"+u+"'"+" and pwd="+"'"+p+"'");
     // String s="",s1="";
      int found=0;
	  String donar="";

      while(rs.next())
      {
			donar=rs.getString(2);
			found++;

				  
		}
		  
		 if(found==1)
		 {
				
				 
				 
				 
		 session.setAttribute("donar",u);
		                 response.sendRedirect("donarpage.jsp"); 
		}
		  else
		 {
		               out.println("<h1>Invalid User</h1>");
					   
					     //response.sendRedirect("invaliduser.jsp"); 
			}
                  rs.close();
		
			stmt.close();
			con.close();
		}
else if(type.equals("Hospital"))
	  {
	  
	 rs=stmt.executeQuery("select * from regh where emailid="+"'"+u+"'"+" and pwd="+"'"+p+"'");
     // String s="",s1="";
      int found=0;
	  String hospital="";
      while(rs.next())
      {
	  	
			found++;

				  
		}
		  
		 if(found==1)
		 {
		

		 		 session.setAttribute("hospital",u);

	        response.sendRedirect("hopitalpage.jsp"); 
		}
		  else
		 {
		 
		                 //response.sendRedirect("invaliduser.jsp"); 
			}
                  rs.close();
		
			stmt.close();
			con.close();
		}
}

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }
	}
%>
					      </p></td>
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
