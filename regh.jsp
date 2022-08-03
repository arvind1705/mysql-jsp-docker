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
.style3 {
	color: #FF0000;
	font-size: 24px;
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
							  <form name="form1" method="post" action="">
							    <table width="920" height="145"  border="0" cellpadding="0" cellspacing="0">
                                  <tr align="left" valign="top">
                                    <td><a href="http://www.templatesfreelance.com/"></a><a href="http://www.templatesfreelance.com/"></a>
                                        <table width="545" border="0">
                                          <tr>
                                            <td width="233"><img src="images/registrationcomplete.jpg" width="175" height="227" /></td>
                                            <td><table width="100%" border="0" cellspacing="10" cellpadding="0">
                                            <tr>
                                              <td>&nbsp;</td>
                                              <td><span class="style3">Register Hospital</span></td>
                                            </tr>
                                            <tr>
                                                  <td>Hospital Name</td>
                                                  <td><input name="t1" type="text" id="t1" title="Alphabets  only" pattern="[A-Za-z]+" required></td>
                                                </tr>
                                                <tr>
                                                  <td>Hospital Type </td>
                                                  <td><label>
                                                    <select name="t2" id="t2">
                                                      <option value="Super Speciality">Super Speciality</option>
                                                      <option value="Multi Speciality">Multi Speciality</option>
                                                    </select>
                                                  </label></td>
                                                </tr>
                                                <tr>
                                                  <td>State</td>
                                                  <td><select name="t3" id="t3">
                                                    <option value="Karnataka">Karnataka</option>
                                                    <option value="Maharastra">Maharastra</option>
                                                                                                    </select></td>
                                                </tr>
                                                <tr>
                                                  <td>City</td>
                                                  <td><select name="t4" id="t4">
                                                    <option value="Bangalore">Bangalore</option>
                                                    <option value="Tumkur">Tumkur</option>
                                                    <option value="Mangalore">Mangalore</option>
                                                                                                    </select></td>
                                                </tr>
                                                <tr>
                                                  <td>Mobile No </td>
                                                  <td><input name="t5" type="text" id="t5"  title="Must contain at 10 digits" maxlength="10" pattern="^\d{10}$" required /></td>
                                                </tr>
                                                <tr>
                                                  <td>Email Id </td>
                                                  <td><input type="email" name="t6" id="t6" required="required" /></td>
                                                </tr>
                                                <tr>
                                                  <td>Password</td>
                                                  <td><input name="t7" type="password" id="t7"  required="required"  /></td>
                                                </tr>
                                            </table></td>
                                          </tr>
                                          <tr>
                                            <td><label> </label>
                                              <div align="center"></div></td>
                                            <td><input type="submit" name="button" id="button" value="Register" />
                                              <input type="reset" name="button2" id="button2" value="Reset" /></td>
                                          </tr>
                                    </table></td>
                                  </tr>
                                </table>
							  </form>
						    </td>
						  </tr>
						</table>
				</td>
			  </tr>
			</table>
					  <table width="920"  border="0" cellspacing="0" cellpadding="0">
						<tr>
						  <td height="26"><div align="center">
						    <%
   
if(request.getParameter("button")!= null)
{
try
{
String b=request.getParameter("button");
	
       Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=DriverManager.getConnection(  "jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
		 Statement stmt=con.createStatement();
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
		 String t3=request.getParameter("t3").trim();
		 String t4=request.getParameter("t4").trim();
	     String t5=request.getParameter("t5").trim();
		 String t6=request.getParameter("t6").trim();
	     String t7=request.getParameter("t7").trim();
		
		   
       
        
	
		 		 int count=0;
	        ResultSet rs,rs1;
			 rs=stmt.executeQuery("select * from regh where emailid="+"'"+t6+"'");

      int found=0;
      while(rs.next())
      {
			count++;
		}

				  
	  
	  
	  if(count==0)
	  {
	

     
        PreparedStatement pstmt=con.prepareStatement("insert into regh values(?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
            pstmt.setString(7,t7);
           
			
 pstmt.executeUpdate(); 
             pstmt.close();  
            con.close(); 
					  
			  
	out.println("<h2> Registration Done Successfully</h2>");
           // response.sendRedirect("donerregsaveack.jsp");
	}
	else
		{
		   			out.println("<h2>Emailid Already Registered</h2>");

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
						  <td>
								
						  
							 </td>
						</tr>
					  </table>
			  </td>
		  </tr>
		</table>
</body>
</html>
