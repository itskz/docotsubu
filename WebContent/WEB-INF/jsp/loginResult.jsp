<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
String errorMsg1 = (String) request.getAttribute("errorMsg1");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scal=1.0">
<title>どこつぶ</title>
<link rel="stylesheet" href="css/style.css">
</head>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<h1>どこつぶログイン</h1>
			<%
			if (errorMsg1 != null) {
			%>
			<ul>
				<li><span><%=errorMsg1%></span></li>
			</ul>


			<ul>
				<li><span><a href="/docoTsubuSample/">HOME</a></span></li>
			</ul>

			<%
			}
			if (errorMsg1 == null || errorMsg1.length() == 0) {
			%>
			<ul>
				<li><span>ログインに成功しました</span></li>
			</ul>
			<ul>
				<li><span>ようこそ<%=loginUser.getName()%>さん
				</span></li>
			</ul>
			<ul>
				<li><span><a href="/docoTsubuSample/Main">つぶやき投稿・閲覧へ</a></span></li>
			</ul>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>