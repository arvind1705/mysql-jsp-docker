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
			<td height="557" valign="top"><table width="920"  border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><table width="920"  border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="256"><a href="http://www.templatesfreelance.com/" class="style2">OrganDonation.com</a></td>
                      <td width="664"><a href="http://www.templatesfreelance.com/"><img src="images/h2.jpg" alt="" width="664" height="74" border="0"></a></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td height="39" class="menu"><table width="920"  border="0" cellspacing="0" cellpadding="0">
                    <tr align="center">
                      <td width="153"><a href="regh.jsp" id="linktop">Register Hospital </a></td>
                      <td width="155"><a href="epwa.jsp" id="linktop">Editpassword</a></td>
                      <td width="156"><a href="keyd.jsp" id="linktop">Register Donar</a></td>
                      <td width="154"><a href="search.jsp" id="linktop">Search</a></td>
                      <td width="167"><a href="index.html" id="linktop">Sign out </a></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td height="26"><table width="100%" border="0">
                  <tr>
                    <td>             <div align="center">
                      <%@page import ="java.sql.*"%>
                      <%@page import="java.util.*,java.io.*"%>
                      <%   
                                          
try
{
   //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     // Connection con = DriverManager.getConnection("JDBC:ODBC:shopping","","");
    Class.forName("com.mysql.cj.jdbc.Driver");
//      Connection con = DriverManager.getConnection("JDBC:ODBC:DON","","");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
	  Statement stmt=con.createStatement();
      ResultSet rs;
      ResultSetMetaData rmd;
	 
      	 
	   String s1="select * from organdonar";
	
     rs = stmt.executeQuery(s1);
      
		//out.println("<body><h1><div align=center><strong><span class=style1>DETAILS</span></strong></div></h1></body>");
      
        out.println("<table border=2 align=center width=50% bordercolor=blue ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n+1;i++)
        {
		    if(i<=n)
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			
        }
        String s="",s5="";
        while (rs.next())
        {
            out.println("<tr>");
            
                for(int x=1;x<=n;x++)
                {
        	         s=rs.getString(x);
					
					                 out.println("<td><b>"+s+"</b></td>");
					
					 
					  
                 }   
                    // out.println("<td><b><a href=addtocart.jsp?d="+s5+"&c=tables>Add to cart</b><a/></td>");
                
            
            
                
            
          out.println("</tr>");
        }
		out.println("</table><br></body></html>");
        rs.close();
		stmt.close();
		con.close();
		
    
}
  catch(Exception e)
    {
        
      out.println(e);
    }
%> 
                    </div></td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td><table width="920" height="145"  border="0" cellpadding="0" cellspacing="0">
                    <tr align="left" valign="top">
                      <td><a href="http://www.templatesfreelance.com/"></a><a href="http://www.templatesfreelance.com/"></a>
                        <form name="form1" method="post" action="">
                          <table width="920" height="145"  border="0" cellpadding="0" cellspacing="0">
                            <tr align="left" valign="top">
                              <td><a href="http://www.templatesfreelance.com/"></a><a href="http://www.templatesfreelance.com/"></a>
                                  <table width="898" border="0" cellpadding="0" cellspacing="12">
                                    <tr>
                                      <td width="233"><img src="images/08cb9c4e7ee7fe194a36d9a9a5079845.jpg" width="330" height="400"></td>
                                      <td width="629"><table width="116%" border="0" cellspacing="12" cellpadding="0">
                                          <tr>
                                            <td colspan="4"><a href="regdonar2.jsp"></a></td>
                                          </tr>
                                          <tr>
                                            <td width="21%">First Name </td>
                                            <td width="25%"><input name="t1" type="text" id="t1" required="required" ></td>
                                            <td width="23%">Donar Status </td>
                                            <td width="31%"><input name="t13" type="text" id="t13"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>Middle Name </td>
                                            <td><label>
                                            <input name="t2" type="text" id="t2" required="required"  >
                                            </label></td>
                                            <td>Photo</td>
                                            <td><input name="t14" type="file" id="t14"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>Last Name </td>
                                            <td><input name="t3" type="text" id="t3" required="required" ></td>
                                            <td>Adhar No </td>
                                            <td><input name="t15" type="text" id="t15"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>Address</td>
                                            <td><input name="t4" type="text" id="t4"  required="required"></td>
                                            <td>Friend First Name </td>
                                            <td><input name="t16" type="text" id="t16"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>DOB</td>
                                            <td><input name="t5" type="date" id="t5"   /></td>
                                            <td>Friend First Mobileno </td>
                                            <td><input name="t17" type="text" id="t17" maxlength="10"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>Gender</td>
                                            <td><label>
                                              <select name="t6" id="t6">
                                                <option value="Male">Male</option>
                                                <option value="Female">Female</option>
                                              </select>
                                            </label></td>
                                            <td>Friend Second Name </td>
                                            <td><input name="t18" type="text" id="t18"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>Age</td>
                                            <td><input name="t7" type="text" id="t7"  required="required"  /></td>
                                            <td>Friend Second Mobile </td>
                                            <td><input name="t19" type="text" id="t19" maxlength="10"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>State</td>
                                            <td><select name="t8" id="t8">
                                              <option value="Karnataka">Karnataka</option>
                                              <option value="Tamilnadu">Tamilnadu</option>
                                              <option value="Kerala">Kerala</option>
                                                                                        </select></td>
                                            <td>Family First Name </td>
                                            <td><input name="t20" type="text" id="t20"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>City</td>
                                            <td><select name="t9" id="t9">
                                              <option value="Bangalore">Bangalore</option>
                                              <option value="Mysore">Mysore</option>
                                              <option value="Mandya">Mandya</option>
                                            </select></td>
                                            <td>Family First Mobile </td>
                                            <td><input name="t21" type="text" id="t21" maxlength="10"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>Pincode</td>
                                            <td><input name="t10" type="text" id="t10" trequired="required" ></td>
                                            <td>Family Second Name </td>
                                            <td><input name="t22" type="text" id="t22"  required="required"  /></td>
                                          </tr>
                                          <tr>
                                            <td>Blood Group </td>
                                            <td><select name="t11" id="t11">
                                                <option value="A">A</option>
                                                <option value="B">B</option>
                                                <option value="AB+">AB+</option>
                                            </select></td>
                                            <td>Family Second Mobile </td>
                                            <td><input name="t23" type="text" id="t23" maxlength="10"  required="required"  /></td>
                                          </tr>
                                          
                                          <tr>
                                            <td>Organ Donate </td>
                                            <td><label>
                                              <select name="t12" id="t12">
                                                <option value="Liver">Liver</option>
                                                <option value="kidney">kidney</option>
                                                <option value="Heart">Heart</option>
                                                <option value="Eyes">Eyes</option>
                                              </select>
                                            </label></td>
                                            <td colspan="2"><div align="center"><a href="selectloc.jsp"><strong>Select Location On Map </strong></a></div></td>
                                          </tr>
                                          
                                      </table></td>
                                    </tr>
                                    <tr>
                                      <td><label> </label>
                                          <div align="center"></div></td>
                                      <td><input type="submit" name="button" id="button" value="Register" /></td>
                                    </tr>
                                </table></td>
                            </tr>
                            <tr align="left" valign="top">
                              <td>&nbsp;</td>
                            </tr>
                          </table>
                      </form>
					    <div align="center">
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
		 String t8=request.getParameter("t8").trim();
		 String t9=request.getParameter("t9").trim();
		 String t10=request.getParameter("t10").trim();
		 String t11=request.getParameter("t11").trim();
	     String t12=request.getParameter("t12").trim();
		 String t13=request.getParameter("t13").trim();
	     String t14=request.getParameter("t14").trim();
		 String t15=request.getParameter("t15").trim();
		 String t16=request.getParameter("t16").trim();
		 String t17=request.getParameter("t17").trim();
		 String t18=request.getParameter("t18").trim();
	     String t19=request.getParameter("t19").trim();
		 String t20=request.getParameter("t20").trim();
	     String t21=request.getParameter("t21").trim();
		 String t22=request.getParameter("t22").trim();
		 String t23=request.getParameter("t23").trim();
		   
       
        
	
		 	int count=0;
	        ResultSet rs,rs1;
			 rs=stmt.executeQuery("select * from organdonar");

     		 int found=0;
     		 while(rs.next())
      		{
			count++;
				}
	  
	  if(count==0)
	  {
	
		
     
  PreparedStatement pstmt=con.prepareStatement("insert into organdonar values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");   
        	pstmt.setString(1,t1);
            pstmt.setString(2,t2);
            pstmt.setString(3,t3);
            pstmt.setString(4,t4);
            pstmt.setString(5,t5);
            pstmt.setString(6,t6);
            pstmt.setString(7,t7);
			pstmt.setString(8,t8);
            pstmt.setString(9,t9);
            pstmt.setString(10,t10);
            pstmt.setString(11,t11);
            pstmt.setString(12,t12);
            pstmt.setString(13,t13);
            pstmt.setString(14,t14);
			pstmt.setString(15,t15);
            pstmt.setString(16,t16);
            pstmt.setString(17,t17);
            pstmt.setString(18,t18);
            pstmt.setString(19,t19);
			pstmt.setString(20,t20);
			pstmt.setString(21,t21);
			pstmt.setString(22,t22);
			pstmt.setString(23,t23);
           
			
 			pstmt.executeUpdate(); 
             pstmt.close();  
            con.close(); 
					  
			  
	out.println("<h2> Registration Done Successfully</h2>");
           // response.sendRedirect("donerregsaveack.jsp");
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
                </table></td>
              </tr>
            </table>
			<table width="920"  border="0" cellspacing="0" cellpadding="0">
						<tr>
						  <td height="26">&nbsp;</td>
						</tr>
						<tr>
						  <td>
								<table width="920"  border="0" cellspacing="0" cellpadding="0">
								<tr>
								  <td><a href="http://www.templatesfreelance.com/"><img src="images/c1.jpg" alt="" width="920" height="9" border="0"></a></td>
								</tr>
								<tr>
								  <td height="262" align="left" valign="top" class="wht">
											  <table width="920"  border="0" cellspacing="0" cellpadding="0">
												<tr>
												  <td width="27" height="267">&nbsp;</td>
												  <td width="293" align="left" valign="top"><a href="http://www.templatesfreelance.com/"><img src="images/welcome.jpg" alt="" width="293" height="64" border="0"><br>
													</a><a href="http://www.templatesfreelance.com/"> <br>
													</a></td>
												  <td width="15" align="left" valign="top">&nbsp;</td>
												  <td width="282" align="left" valign="top"><a href="3"><img src="images/ourservices.jpg" alt="" width="282" height="64" border="0"></a><br>												  <br></td>
												  <td width="15" align="left" valign="top">&nbsp;</td>
												  <td width="288" align="left" valign="top">
														  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
															<tr>
															  <td width="93%" height="281" valign="top"><img src="images/ourcompany.jpg" width="290" height="62"><br>
															  <br>
																<br>																<br></td>
															  <td width="7%">&nbsp;</td>
															</tr>
														  </table>
												  </td>
												</tr>
											  </table>
								  </td>
								</tr>
								<tr>
								  <td><a href="http://www.templatesfreelance.com/"><img src="images/c2.jpg" alt="" width="920" height="9" border="0"></a></td>
								</tr>
							  </table>
						  
							    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
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
