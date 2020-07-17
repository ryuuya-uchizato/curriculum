<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
	<%@ include file="header.jsp"%>

	<div class = main>
		<table>
			<tr>
				<th>
					name
				</th>
				<td>
					<input type="text" name="user_name" value="" size="24">
				</td>
			</tr>
			<tr>
				<th>
					id
				</th>
				<td>
					<input type="password" name="id" value="" size="24">
				</td>
			</tr>
		</table>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>