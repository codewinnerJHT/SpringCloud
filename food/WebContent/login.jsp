<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>����Ա��¼</title>
</head>
<body>
${error }
<h2>����Ա��¼</h2>
<hr>
	<form action="adminlogin.do" method="post">
		
		<table>	
		<tr><td>�û�����</td><td><input type="text" name="adminid"></td></tr>
		<tr><td>���룺</td><td><input type="text" name="adminpass"></td></tr>
		
		</table>	
		<input type="submit" value="��¼">
	</form>

</body>
</html>