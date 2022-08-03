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
				<td><form action="" method="post"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <caption align="top">
                    Forgot Password ?
                  </caption>
				  <tr>
                    <th scope="col"><label>
                        <div align="center">User Type
                          <select name="select">
                            <option value="Admin">Admin</option>
                            <option value="Hospital">Hospital</option>
                            <option value="Donar">Donar</option>
                                                      </select>
                            <br>
                          Email id :
                          <input type="text" name="textfield" placeholder="Email id">
                          <br>
                          <input type="submit" name="Submit" value="Reset Password">
                        </div>
                      </label></th>
			      </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                </table></form>
				
				 <%@page import="javax.mail.*"%>
      <%@page import="javax.mail.internet.*"%>
      <%@page import="javax.activation.*"%>
      <%@page import="java.util.Random"%>
      <%@page import="javax.swing.JOptionPane"%>
      <%@page import="java.util.Properties"%>
      <%@page import="java.util.*,java.io.*"%>
      <%@page import ="java.sql.*"%>
      <%
  if(request.getParameter("Submit")!= null)
   	{
	try {
	
		String mailid = request.getParameter("textfield");

	String group = request.getParameter("select");


Calendar  calendar = null;
	    calendar = Calendar.getInstance();
	    java.util.Date trialTime = new java.util.Date();
	    calendar.setTime(trialTime);	


	    int year = calendar.get(Calendar.YEAR);
	    int month = 1 + calendar.get(Calendar.MONTH);
	    
	    int dayofmonth = calendar.get(Calendar.DAY_OF_MONTH);

	    String date = month + "/" + dayofmonth + "/" +  year;

 	    int hour = calendar.get(Calendar.HOUR_OF_DAY);
	    int min = calendar.get(Calendar.MINUTE);
	    int sec = calendar.get(Calendar.SECOND);
	    String dot1 = date +" "+ hour + ":" + min  ; 

//	out.println(dot1);
	
	
       Class.forName("com.mysql.cj.jdbc.Driver");
//      Connection con = DriverManager.getConnection("JDBC:ODBC:DON","","");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
		
		Statement stmt=con.createStatement();
	
	  ResultSet rs;			
	  if(group.equals("Admin"))
	  {
		  rs=stmt.executeQuery("select * from admin where u="+"'"+mailid+"'");
		int found=0;
	      while(rs.next())
    	  {
		
				found++;
			}

		if(found==0)
		{
				out.println("Sorry, invalid login");
			
		}
		else
		{	
		
		  String str="Update admin set p=? where u=?";
	//	  out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,dot1);
				psmt.setString(2,mailid);
				psmt.executeUpdate();
				//out.println(s1+","+s3);
				psmt.close();
				rs.close();

						out.println("<h1>done</h1>");

	
		}	
	}
	else  if(group.equals("Hospital"))
	{
	String sql="select * from regh where emailid="+"'"+mailid+"'";
	//out.println(sql);
		  rs=stmt.executeQuery(sql);
		int found=0;
	      while(rs.next())
    	  {
		
				found++;
			}

		if(found==0)
		{
				out.println("Sorry, invalid login");
			
		}
		else
		{	
		
		  String str="Update regh set pwd=? where emailid=?";
	//	  out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,dot1);
				psmt.setString(2,mailid);
				psmt.executeUpdate();
				//out.println(s1+","+s3);
				psmt.close();
				rs.close();

		
						out.println("<h1>done</h1>");
	
		}	
	
	
	
	}
	
	
	
	
	
	else  if(group.equals("Donar"))
	{
	String sql="select * from signup where emailid="+"'"+mailid+"'";
	//out.println(sql);
		  rs=stmt.executeQuery(sql);
		int found=0;
	      while(rs.next())
    	  {
		
				found++;
			}

		if(found==0)
		{
				out.println("Sorry, invalid login");
			
		}
		else
		{	
		
		  String str="Update signup set pwd=? where emailid=?";
	//	  out.println(str);
		  		PreparedStatement psmt =con.prepareStatement(str);
				psmt.setString(1,dot1);
				psmt.setString(2,mailid);
				psmt.executeUpdate();
				//out.println(s1+","+s3);
				psmt.close();
				rs.close();

		
						out.println("<h1>done</h1>");
	
		}	
	
	
	
	}
	/////////////////////////////////
	
	String email = "surendrarao.mba@gmail.com",
		//String email = "sathish@fabsys.in",
//                        String email = "sridharjoshi1603@gmail.com",
//				out.println(RandomStringUtils.random(12));

		password1="",password2="AV73a2#Gio",password3 = "sathish@1234", host = "smtp.gmail.com", port = "465", subject = "Your Password is"+dot1, to = "sridharjoshi1603@gmail.com".trim();//, text = pk.trim();

		Properties props = new Properties();
		props.put("mail.smtp.user", email);
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.port", port);
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");

		SecurityManager security = System.getSecurityManager();

		try {
			class SMTPAuthenticator extends javax.mail.Authenticator {
				public PasswordAuthentication getPasswordAuthentication() {
					//String email = "sathish@fabsys.in", password = "sathish@1234";
                                        String email = "Brijeshb9498@gmail.com", password = "Brijesh@201298";
                                         //String email = "sridharjoshi1603@gmail.com", password = "";
					return new PasswordAuthentication(email, password);
				}
			}
			SMTPAuthenticator auth = new SMTPAuthenticator();
			Session sessions = Session.getInstance(props, auth);
			sessions.setDebug(true);

			MimeMessage msg = new MimeMessage(sessions);
			msg.setText("test");
			msg.setSubject(subject);
			msg.setFrom(new InternetAddress(email));
			msg.addRecipient(Message.RecipientType.TO,
//					new InternetAddress(to));
					new InternetAddress(mailid));

			Transport.send(msg);
			System.out.println("Email sent successfully");

			JOptionPane.showMessageDialog(null,
					"Your Verification Key is send to ur mail");
			response.sendRedirect("forgotpassack.jsp");
		} catch (Exception ex) {
			JOptionPane.showMessageDialog(null, "Send Failed");
//			response.sendRedirect("index.html");
		} 

	}

	catch (Exception ex) {
		out.println(ex);
	}
	}
%>
				</td>
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
