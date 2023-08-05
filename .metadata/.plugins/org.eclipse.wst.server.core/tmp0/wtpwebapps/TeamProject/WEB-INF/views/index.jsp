<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
<link rel="stylesheet" href="resources/css/index.css">
<link rel="stylesheet" href="resources/css/join.css">
<link rel="stylesheet" href="resources/css/info.css">
<link rel="stylesheet" href="resources/css/board.css">
<link rel="stylesheet" href="resources/css/login.css">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="resources/js/jQuery.js"></script>
<script type="text/javascript" src="resources/js/projectjQuery.js"></script>
<script type="text/javascript" src="resources/js/go.js"></script>
<script type="text/javascript" src="resources/js/teamValidChecker.js"></script>
<script type="text/javascript" src="resources/js/check.js"></script>
<script type="text/javascript" src="resources/js/replyUpdate.js"></script>
</head>
<body>
	<%-- 타이틀 및 메뉴 --%>
	<table id="indexTitleTbl">
		<tr>
			<td id="indexTitle">
				<a href = "home.go">Team Project</a>
			</td>
		</tr>
	</table>
	<table id="indexMenuTbl">
		<tr>
			<td class="indexMenu"><a href="board.go">BOARD1</a></td>
			<td class="indexMenu"><a href="#">BOARD2</a></td>
			<td class="indexMenu"><a href="#">BOARD3</a></td>
			<td class="indexMenu"><a href="member.go">MEMBER</a></td>
		</tr>
	</table>
	<input id="result" value="${r }" type="hidden">
	
	<%-- 로그인 페이지 --%>
	<table id="indexLoginTbl">
		<tr>
			<td>
				<jsp:include page="${lp }" />
			</td>
		</tr>
	</table>
	
	<%-- 메인 컨텐츠 --%>
	<table id="indexContentTbl">
		<tr>
			<td align="center">
				<jsp:include page="${cp }"/>
			</td>
		</tr>
	</table>
</body>
</html>