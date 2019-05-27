<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>用户修改页面</title>
		<style type="text/css">
		.fi {
			width: 718px;
			height: 504px;
			margin: 0 auto;
		}
		
		.personal {
			height: 504px;
		}
		
		.updatePWD {
			width: 95px;
			height: 28px;
			border: solid 1px;
			background-color: white;
			border-radius: 5px;
			margin-left: 550px;
		}
		
		.user {
			position: absolute;
			margin-top: 150px;
			margin-left: 120px;
		}
		.user>.newUser{
			margin-left: 10px;
			width: 212px;
			height: 24px;
		}
		.user>span {
			margin-left: 20px;
		}
		
		.updateUser {
			width: 91px;
			height: 28px;
			background-color: white;
			border: solid 1px;
			border-radius: 5px;
			margin-top: 50px;
			margin-left: 200px;
		}
	</style>
	</head>

	<body>
		<%-- <jsp:include page="../jsp/head.jsp"></jsp:include> --%>
		<jsp:include page="/jsp/head.jsp"/>
		<form action="" class="fi">
			<fieldset id="" class="personal">
				<legend>用户名修改</legend>
				<label class="user">
					新用户名:<input class="newUser" type="text" id="newUser" name="newUser" placeholder="请输入新用户名"/>
					<span>一个月之内只允许修改一次</span>
					<br />
					<input  class="updateUser" type="button"  value="修改用户名"/>
				</label><br />				
			</fieldset>
		</form>
	</body>

</html>