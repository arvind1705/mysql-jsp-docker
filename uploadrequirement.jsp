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
-->
</style>
</head>
<body>
		<table width="920"  border="0" cellspacing="0" cellpadding="0" align="center">
		  <tr>
			<td height="557" valign="top">
			<table width="920"  border="0" align="center" cellpadding="0" cellspacing="0">
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
							<td width="153"><a href="epwh.jsp" id="linktop">Edit Password </a></td>
							<td width="155"><a href="uploadrequirement.jsp" id="linktop">Upload Requirement</a></td>
							<td width="154"><a href="searchh.jsp" id="linktop">Search</a></td>
							<td width="167"><a href="index.html" id="linktop">Sign out </a></td>
						  </tr>
						</table>
				</td>
			  </tr>
			  <tr>
				<td height="26">&nbsp;</td>
			  </tr>
			  <tr>
				<td><form name="form1" method="post" action="">
                <table border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><strong>Upload Requirement </strong></td>
    <td rowspan="8"><img src="images/registrationcomplete.jpg" width="175" height="227"></td>
  </tr>
  <tr>
    <td>PatientName</td>
    <td>&nbsp;</td>
    <td><input name="t1" type="text" id="t1"></td>
    </tr>
  <tr>
    <td>Gender</td>
    <td>&nbsp;</td>
    <td><label>
      <select name="t2" id="t2">
        <option value="Male">Male</option>
        <option value="Female">Female</option>
      </select>
    </label></td>
    </tr>
  <tr>
    <td>Requirement</td>
    <td>&nbsp;</td>
    <td><select name="t3" id="t3">
      <option value="Liver">Liver</option>
      <option value="kidney">kidney</option>
      <option value="Heart">Heart</option>
      <option value="Eyes">Eyes</option>
    </select></td>
    </tr>
  <tr>
    <td>Hospita Name</td>
    <td>&nbsp;</td>
    <td><input name="t4" type="text" id="t4"></td>
    </tr>
  <tr>
    <td>Mobileno</td>
    <td>&nbsp;</td>
    <td><input name="t5" type="text" id="t5" maxlength="10"></td>
    </tr>
  <tr>
    <td>Contact Person </td>
    <td>&nbsp;</td>
    <td><input name="t6" type="text" id="t6"></td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><label>
      <input type="submit" name="Submit" value="Submit">
      <input type="reset" name="Submit2" value="Reset">
    </label></td>
    </tr>
</table>
				</form>
                
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
	     String t5=request.getParameter("t5").trim();
		 String t6=request.getParameter("t6").trim();
		
		   
       
        
	


     
        PreparedStatement pstmt=con.prepareStatement("insert into  uploadreq value(?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
			pstmt.setString(6,t6);
           
			
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
