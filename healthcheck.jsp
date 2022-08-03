
<%@ page import="java.sql.*"%>
<html>
<head>
<title>JDBC Connection example</title>
</head>

<body>
<h1>JDBC Connection example</h1>

<%
  String user = "root";
  System.out.println("Entering try block...");
  try {
    System.out.println("Loading driver...");
    try {
      Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
      System.out.println("Driver not found.");
    }
    System.out.println("Initializing connection...");
    java.sql.Connection conn;
    conn = java.sql.DriverManager.getConnection("jdbc:mysql://mysql:3306/db", user, "mysql");
    System.out.println("Database successfully opened.");
    Statement stmt = conn.createStatement();
    String query = "select Message from TestTable where Id = 1;";
    ResultSet rs = stmt.executeQuery(query);

    while(rs.next()){
      out.println(rs.getString("Message"));
    }
  }
  catch(SQLException e) {
    System.out.println("SQLException caught: " +e.getMessage());
  }
%>

</body>
</html>