<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
	String[] name = new String[5];
	String[] email = new String[5];
	
	String madeName(String name) {
		return name + "님";
	}
	
	String madeEmail(String email){
		return email + "@goole.com";
	}
%>
<%
	name[0] = "김재현";
	email[0] = "gsr0920";
	name[1] = "김재현1";
	email[1] = "gsr0921";
	name[2] = "김재현2";
	email[2] = "gsr0922";
	name[3] = "김재현3";
	email[3] = "gsr0923";
	name[4] = "김재현4";
	email[4] = "gsr0924";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="name" items="${name}" varStatus="status">
			<tr>
				<td>${status.index +1}</td>
				<td>${madeName(name[status.index]) }</td>
				<td>${madeEmail(name[status.index]) }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>