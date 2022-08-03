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
			<td valign="top">
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
							  <table border="0" align="center">
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><span class="style4">UploadCases</span></td>
                                  <td rowspan="8"><img src="images/registrationcomplete.jpg" width="175" height="227"></td>
                                </tr>
                                <tr>
                                  <td>Name</td>
                                  <td> <input type="text" name="t1"></td>
                                </tr>
                                <tr>
                                  <td>Case Details </td>
                                  <td><input type="text" name="t2"></td>
                                </tr>
                                <tr>
                                  <td>Mobile No</td>
                                  <td><input name="t3" type="text" maxlength="10" ></td>
                                </tr>
                                <tr>
                                  <td>Photo</td>
                                  <td><input type="file" name="t4"></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><input type="submit" name="button" id="button" value="Submit">
                                  <input type="reset" name="button2" id="button2" value="Reset"></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td>&nbsp;</td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td>&nbsp;</td>
                                </tr>
                              </table>
							</form>
                           </td>
						  </tr>
						</table>
				</td>
			  </tr>
			</table>
					  </td>
		  </tr>
		</table>
        <%
   
if(request.getParameter("Submit")!= null)
{
try
{

	
       Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection(  "jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
		 Statement stmt=con.createStatement();
       	 String t1=request.getParameter("t1").trim();
		 String t2=request.getParameter("t2").trim();
		 String t3=request.getParameter("t3").trim();
		 String t4=request.getParameter("t4").trim();
	    // String t5=request.getParameter("t5").trim();
		
		   
       
        
	


     
        PreparedStatement pstmt=con.prepareStatement("insert into  uploadcases value(?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            //pstmt.setString(5,t5);
           
			
 			pstmt.executeUpdate(); 
             pstmt.close();  
            con.close(); 
					  
			  
	out.println("<h2> Uploaded Successfully</h2>");
           // response.sendRedirect("donerregsaveack.jsp");
	}
		
    
	
    catch(Exception e)
    {
      out.println("Exception occured" +e);
    }
	}
%>
</body>
</html>
