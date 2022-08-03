<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form name="form1" method="post" action="">
							  <table width="93%" border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><strong>Upload Requirement </strong></td>
  </tr>
  <tr>
    <td width="24%">PatientName</td>
    <td width="1%">&nbsp;</td>
    <td width="75%"><input name="t1" type="text" id="t1"></td>
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
</body>
</html>
