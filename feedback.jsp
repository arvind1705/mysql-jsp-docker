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
                                <table width="64%" height="249" border="0" align="center">
                                  <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td><span class="style4">Feedback</span></td>
                                    <td width="83%" rowspan="6"><img src="images/images.jpg" width="275" height="183"></td>
                                  </tr>
                                  <tr>
                                    <td width="16%"><div align="right">Name</div></td>
                                    <td width="1%">&nbsp;</td>
                                    <td width="83%"><label>
                                      <input name="t1" type="text" id="t1">
                                    </label></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Emaild ID </div></td>
                                    <td>&nbsp;</td>
                                    <td><input name="t2" type="text" id="t2"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Mobileno</div></td>
                                    <td>&nbsp;</td>
                                    <td><input name="t3" type="text" id="t3" maxlength="10"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Feedback</div></td>
                                    <td>&nbsp;</td>
                                    <td><textarea name="t4" id="t4"></textarea></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right"></div></td>
                                    <td>&nbsp;</td>
                                    <td><label>
                                      <input type="submit" name="Submit" value="Feedback">
                                      <input type="reset" name="Submit2" value="Reset">
                                    </label></td>
                                  </tr>
                                </table>
					        </form></td>
						  </tr>
						</table>
				</td>
			  </tr>
			</table>
					  <table width="920"  border="0" cellspacing="0" cellpadding="0">
						<tr>
						  <td height="26"><div align="center">
													  <%
   
if(request.getParameter("Submit")!= null)
{
try
{
//String b=request.getParameter("button");
	
       Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection(  "jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
		 Statement stmt=con.createStatement();
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
		 String t3=request.getParameter("t3").trim();
		 String t4=request.getParameter("t4").trim();
	     //String t5=request.getParameter("t5").trim();
		
		   
       
        
	
		 		 int count=0;
	        ResultSet rs,rs1;
			 rs=stmt.executeQuery("select * from feedback where Emailid="+"'"+t2+"'");

      int found=0;
      while(rs.next())
      {
			count++;
		}

				  
	  
	  
	  if(count==0)
	  {
	

     
        PreparedStatement pstmt=con.prepareStatement("insert into feedback values(?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            //pstmt.setString(5,t5);
           
			
 			pstmt.executeUpdate(); 
             pstmt.close();  
            con.close(); 
					  
			  
	out.println("<h2>Feedback Added Successfully </h2>");
           // response.sendRedirect("donerregsaveack.jsp");
	}
		else
		{
		   			out.println("<h2>You Already Submitted your Feedback</h2>");

		   //response.sendRedirect("donerregsaveinvalid.jsp");
		
		}
    }
	
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	}
%>	 
													  
					                                </div></td>
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
