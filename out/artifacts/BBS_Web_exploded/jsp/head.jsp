<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>头部页面</title>
		<style type="text/css">
			.head{
				width: 715px;
				height: 38px;
				border: solid 1px;
				text-align: center;
				margin: 30px auto;
			}
			.btn{
				width: 70px;
				height: 28px;
				margin-top: 5px;
				border-radius: 5px;
				border: solid 1px;
				background-color: white;
				margin-left: 30px;
			}
			.exit{
				margin-left: 20px;
				border-radius: 5px;
				border: solid 1px;
				background-color: white;
			}
		</style>
	</head>

	<body>
		<div class="head">
			<span>欢迎登录BBS系统</span>
			<button class="btn" onclick="window.location.href='/jsp/main.html'">论坛主页</button>
			<button class="btn" onclick="window.location.href='/jsp/postList.jsp'">浏览帖子</button>
			<button class="btn" onclick="window.location.href='/jsp/post.html'">发布帖子</button>
			<button class="btn" onclick="window.location.href='/jsp/personalCenter.jsp'">个人中心</button>
			<button class="exit" onclick="window.location.href='/index.bbs'">退出系统</button>
		</div>
	</body>

</html>