<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>고객명단</title>
</head>
<body>
<ul>
	<li>신규교객등록</li>
	<li>고객리스트</li>
</ul>
<h2>고객리스트</h2>

<%
String url ="jdbc:oracle:thin:@localhost:1521:xe";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn = DriverManager.getConnection(url,"shop","1234");
ResultSet rs = conn.prepareStatement("select CUSTNO,CUSTNAME,PHONE from member_tbl_02").executeQuery();
out.print("<table border='1'>");
while( rs.next()) {
	out.print("<tr>");
	out.print("<td>");
	out.print(rs.getInt("custno"));
	out.print("</td>");
	out.print("<td>");
	out.print(rs.getString("custname"));
	out.print("</td>");
	out.print("<td>");
	out.print(rs.getString("phone"));
	out.print("</td>");
	//10002</td><td>김행복</td><td>010-ㅣㅣㅣㅣ</td>");
	//out.print("<td>10001</td><td>김행복</td><td>010-1111-2222</td>
	out.print("</tr>");
}
%>
</table>

<td>고객번호</td><td>고객명</td><td>전화번호</td>
<td>10001</td><td>김행복</td><td>010-1111-2222</td>
<td>10002</td><td>이축복</td><td>010-1111-3333</td>



</body>
</html>
