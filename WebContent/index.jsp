<%-- リスト10-6の状態 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h1>どこつぶへようこそ</h1>



			<form action="/docoTsubuSample/Login" method="post">
				<ul>
					<li><span>ユーザー名：</span></li>
					<li><input type="text" name="name" pattern="^[0-9a-zA-Z]{4}$"
							placeholder="半角英数4文字で入力"></li>
				</ul>
				<ul>
					<li><span>パスワード：</span></li>
					<li><input type="password" name="pass"
							pattern="^[0-9a-zA-Z]{4,8}$" placeholder="半角英数4～8文字で入力">
					</li>
				</ul>
				<input type="submit" value="ログイン">
			</form>

			<jsp:include page="/footer.jsp" />

		</div>
		<!-- container -->
	</div>
	<!-- wrapper -->

</body>
</html>