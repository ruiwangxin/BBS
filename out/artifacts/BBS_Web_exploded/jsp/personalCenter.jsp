<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>个人中心页面</title>
		<style type="text/css">
			.fi{
				width: 718px;
				height: 504px;
				margin: 0 auto;
			}
			.personal{
				height: 504px;
			}
			.updatePWD{
				width: 95px;
				height: 28px;
				border: solid 1px;
				background-color: white;
				border-radius: 5px;
				margin-left: 550px;
			}
			.user{
				position:absolute;
				margin-top: 90px;
				margin-left: 100px;				
			}
			.user>span{
				margin-left: 50px;
			}
			.updateUser{
				width: 87px;
				height: 28px;
				background-color: white;
				border: solid 1px;
				border-radius: 5px;
				margin-left: 50px;
			}
			.date{
				position:absolute;
				margin-top: 200px;
				margin-left: 100px;				
			}
			.date>span{
				margin-left: 50px;
			}
			.postNum{
				position:absolute;
				margin-top: 300px;
				margin-left: 100px;				
			}
			.postNum>span{
				margin-left: 50px;
			}
			.postList{
				width: 202px;
				height: 28px;
				background-color: white;
				border: solid 1px;
				border-radius: 5px;
				margin-left: 50px;
			}
		</style>
	</head>

	<body>
		<%-- <jsp:include page="../jsp/head.jsp"></jsp:include> --%>
		<jsp:include page="/jsp/head.jsp"></jsp:include>
		<form action="" class="fi">
			<fieldset id="" class="personal">
				<legend>个人中心</legend>
				<label>
					<input class="updatePWD" type="button" value="修改登录密码" onclick="window.location.href='/jsp/pwdUpdate.jsp'"/>
				</label><br />
				<label class="user">
					用户名:<span>xxx</span>
					<input class="updateUser" type="button" value="修改用户名" onclick="window.location.href='/jsp/userUpdate.jsp'"/>
					<span>一个月之内只允许修改一次</span>
				</label><br />
				<label class="date">
					注册日期:<span>yyyy-MM-dd	HH:mm:ss</span>
				</label><br />
				<label class="postNum">
					发表帖子数量:<span>xxx</span>
					<input class="postList" type="button" value="查看所有发表的帖子" onclick="window.location.href='postList.jsp'"/>
				</label>
			</fieldset>
		</form>
		
	</body>

</html>