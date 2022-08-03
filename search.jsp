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

#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #000;
  padding: 8px;
}

#customers tr:nth-child(even){background-color:#B4E7FA;}

#customers tr:hover {background-color: #F04E00;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: black;
}
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
							    <table width="70%" border="0" align="center">
                                  <tr>
                                    <td colspan="2">&nbsp;</td>
                                    <td width="17%">State</td>
                  <td width="4%"><select name="t1" id="t1">
                    <%@page import ="java.sql.*"%>
                    <%

		 try
{
   Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=DriverManager.getConnection(  "jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
   Statement st=con.createStatement();
   ResultSet rs;
	  String sql="select distinct(state)  from  organdonar";
	  rs=st.executeQuery(sql);
	  int found=0;
	  while(rs.next())
	  {
	     String mfrom=rs.getString("state").trim();
	     //String mto=rs.getString("to").trim();
	 
	     %>
                    <option value="<%out.println(mfrom);%>">
                    <%out.println(mfrom);%>
                    </option>
                    <%  
	  }
	  rs.close();
      }
	  catch(Exception e)
    {
      out.println("Exception occured "+e);
    }
	  %>
                  </select></td>
 <td width="24%"><div align="center">City</div></td>
    <td width="2%"><select name="t2" id="t2">
      <%@page import ="java.sql.*"%>
      <%

		 try
{
   Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=DriverManager.getConnection(  
"jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
   Statement st=con.createStatement();
   ResultSet rs;
	  String sql="select distinct(city)  from  organdonar";
	  rs=st.executeQuery(sql);
	  int found=0;
	  while(rs.next())
	  {
	     String mfrom=rs.getString("city").trim();
	     //String mto=rs.getString("to").trim();
	 
	     %>
      <option value="<%out.println(mfrom);%>">
      <%out.println(mfrom);%>
      </option>
      <%  
	  }
	  rs.close();
      }
	  catch(Exception e)
    {
      out.println("Exception occured "+e);
    }
	  %>
    </select></td>
    <td width="6%">Organ</td>
        <td width="45%"><select name="t3" id="t3">
          <%@page import ="java.sql.*"%>
          <%

		 try
{
   Class.forName("com.mysql.cj.jdbc.Driver");
//      Connection con = DriverManager.getConnection("JDBC:ODBC:DON","","");
Connection con=DriverManager.getConnection(  
"jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
   Statement st=con.createStatement();
   ResultSet rs;
	  String sql="select distinct(orgando)  from  organdonar";
	  rs=st.executeQuery(sql);
	  int found=0;
	  while(rs.next())
	  {
	     String mfrom=rs.getString("orgando").trim();
	     //String mto=rs.getString("to").trim();
	 
	     %>
          <option value="<%out.println(mfrom);%>">
          <%out.println(mfrom);%>
          </option>
          <%  
	  }
	  rs.close();
      }
	  catch(Exception e)
    {
      out.println("Exception occured "+e);
    }
	  %>
        </select>
          <input type="submit" name="Submit" value="Search"></td>
                                  </tr>
                                </table>
							  </form>
							  <div align="center">
							    <% 
							  
							  if(request.getParameter("Submit")!= null)
{
		try
		{
			String b=request.getParameter("submit");
	
       		Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con=DriverManager.getConnection(  "jdbc:mysql://mysql:3306/organdonar","root","mysql"); 
		 Statement stmt=con.createStatement();
       	 String t1=request.getParameter("t1").trim();
		
		 String t2=request.getParameter("t2").trim();
		
		 String t3=request.getParameter("t3").trim();
		
		
       
        

             ResultSet rs,rs1;
			   ResultSetMetaData rmd;
  rs=stmt.executeQuery("select fname as FirstName,addr as Mobile,Age,BloodGroup,orgando as OrganToDonate,DonarStatus,llat,llong,Photo from organdonar where state="+"'"+t1+"'"+" and city="+"'"+t2+"'"+" and orgando="+"'"+t3+"'");

 
 
 
        out.println("<table border=1 align=center width=50% id=customers ><tr>");
        
        rmd =rs.getMetaData();
        int n=rmd.getColumnCount();
        for(int i=1;i<=n+1;i++)
        {
		    if(i<=n)
            out.println("<td><b><font size=5>"+rmd.getColumnName(i)+"</font></b></td>");
			
        }
        String s="",s5="",lat="",lng="";
        while (rs.next())
        {
            out.println("<tr>");
            
                for(int x=1;x<=n;x++)
                {
					if(x==9)
					{
								s5=rs.getString(x);
					
                  out.println("<td><b><img src="images/+s5+" widht=100 height=100></img></b><a href=locateservicecenter2.jsp?lat="+lat+"&lng="+lng+">Locate on Map</a></td>");
					}
					
					
					else if(x==7)
					{
								lat=rs.getString(x);
								out.println("<td><b>"+lat+"</b></td>");
					}
					else if(x==8)
					{
								lng=rs.getString(x);
							out.println("<td><b>"+lng+"</b></td>");
					}
					
              
					
					else
					{
        	         				s=rs.getString(x);
					
					                 out.println("<td><b>"+s+"</b></td>");
					}
					 
					  
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
      out.println("Exception occured" +e);
    }
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
