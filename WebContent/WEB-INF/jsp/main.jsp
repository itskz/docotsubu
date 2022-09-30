<%-- リスト10-17の状態 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.User,model.Mutter,java.util.List"%>
<%
// セッションスコープに保存されたユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
// アプリケーションスコープに保存されたつぶやきリストを取得
List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList");
// リクエストスコープに保存されたエラーメッセージを取得
String errorMsg = (String) request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scal=1.0">
<title>どこつぶ</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<h1>どこつぶメイン</h1>

			<ul>
				<li><span><%=loginUser.getName()%>さん、ログイン中</span></li>
			</ul>
			<ul>
				<li><span><a href="/docoTsubuSample/Logout">ログアウト</a></span></li>
			</ul>


			<form action="/docoTsubuSample/Main" method="post">
				<ul>
					<li><span><input type="text" name="text"></span></li>
				</ul>

				<input type="submit" value="つぶやく">
			</form>
			<%
			if (errorMsg != null) {
			%>
			<ul>
				<li><span><%=errorMsg%></span></li>
			</ul>
			<%
			}
			%>
			<%
			for (int i = 0; i < mutterList.size(); i++) {
			%>
			<ul>
				<li><%=mutterList.get(i).getUserName()%>：<%=mutterList.get(i).getText()%></li>
			</ul>
			<ul>
				<li><span><a
							href="/docoTsubuSample/Main?action=like&index=<%=i%>">よいね</a> :<%=mutterList.get(i).getLike()%>人</span></li>
				<li><span><a
							href="/docoTsubuSample/Main?action=dislike&index=<%=i%>">よくないね</a>
						:<%=mutterList.get(i).getDislike()%>人</span></li>
				<li><span><a
							href="/docoTsubuSample/Main?action=delete&index=<%=i%>">削除</a></span></li>
			</ul>
			<%
			}
			%>

		</div>
	</div>
<jsp:include page="/footer.jsp" />
</body>
</html>