<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/infoCheck.jsp</title>
</head>
<body>
	<table>
	<form action="member.info.go" method="POST">
		<tr>
			<td>
				<input placeholder="ID" maxlength="20" name="tp_m_id" autocomplete="off">
			</td>
		</tr>
		<tr>
			<td>
				<input type="password" placeholder="PW" maxlength="20" name="tp_m_pw">
			</td>
		</tr>
		<tr>
			<td align="center">
				<button>확인</button>&nbsp;&nbsp;&nbsp;
		</form>
				<button onclick="homeGo();">취소</button>
			</td>
		</tr>
	</table>

</body>
</html>