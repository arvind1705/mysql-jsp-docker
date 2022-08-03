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
--
-->
</style>
<!-- date-->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
    <script language="javascript" src="images/http://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.js"></script>
    <script language="javascript" src="images/http://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular-animate.js"></script>
    <script language="javascript" src="images/http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.14.3.js"></script>
</script>
     <script language="javascript">
        angular.module('myApp', ['ngAnimate', 'ui.bootstrap']);
        angular.module('myApp').controller('myCntrl', function ($scope) {
            $scope.today = function () {
                $scope.dt = new Date();
            };
   $scope.dateformat="MM/dd/yyyy";
            $scope.today();
   $scope.showcalendar = function ($event) {
                $scope.showdp = true;
            };
   $scope.showdp = false;  
   $scope.dtmax = new Date();
        });
    </script>



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
						</table></td>
              </tr>
              <tr>
                <td height="26">&nbsp;</td>
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
                                      <td width="233"><img src="images/registrationcomplete.jpg" width="175" height="227" /></td>
                                      <td width="629"><table width="116%" border="0" cellspacing="12" cellpadding="0">
                                          
                                          <tr>
                                            <td colspan="4"><div align="center">Donar Id 
                                                <input type="text" id="bookname5" name="textfield" value="<%@page import ="java.sql.*"%>
<%@page import="java.util.*,java.io.*,javax.servlet.http.Cookie"%><%try
{
   Class.forName("com.mysql.cj.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
      Statement stmt=con.createStatement();
      ResultSet rs,rs1;
     
	     rs=stmt.executeQuery("select * from organdonar ");
	      int count=1;
      while(rs.next())
      {
			count++;
				  
		}
		
		String s="";
		s="J-"+s.valueOf(count);
  		out.println(s.trim());
		  }

 catch(Exception e)
    {
     
     out.println("Exception occured" +e);
    }%>"/>
                                            </div></td>
                                          </tr>
                                          <tr>
                                            <td width="21%">First Name </td>
                                            <td width="25%"><input name="t1" type="text" id="t1" required="required" ></td>
                                            <td width="23%">Donar Status </td>
                                            <td width="31%"><select name="t13" id="t13">
                                                <option value="Liviing">Liviing</option>
                                                <option value="Dead">Dead</option>
                                                <option value="BrainDead">BrainDead</option>
                                              </select>                                            </td>
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
                                            <td><div ng-app="myApp" ng-controller="myCntrl">
          <input name="t5" type="text" id="t4" uib-datepicker-popup="{{dateformat}}" ng-model="dt" is-open="showdp" max-date="dtmax" />
          <span>
            <button type="button" class="btn btn-default" ng-click="showcalendar($event)"> <i class="glyphicon glyphicon-calendar"></i> </button>
          </span> </div></td>
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
         String t24=request.getParameter("t22").trim();
		 String t25=request.getParameter("t23").trim();
		  String t26=request.getParameter("textfield").trim();
		   
//        session.setAttribute("l1",t1);
	// session.setAttribute("l2",t2);
      String l1=(String)session.getAttribute("l1");  
       String l2=(String)session.getAttribute("l2");  
	
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
	
		
     
  PreparedStatement pstmt=con.prepareStatement("insert into organdonar values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");   
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
			pstmt.setString(24,l1);
			pstmt.setString(25,l2);
			pstmt.setString(26,t26);
           
			
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
