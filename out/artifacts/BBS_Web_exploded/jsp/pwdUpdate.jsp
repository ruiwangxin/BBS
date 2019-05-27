<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>密码修改页面</title>
		<style type="text/css">
		.fi {
			width: 718px;
			height: 504px;
			margin: 0 auto;
		}		
		.personal {
			height: 504px;
		}		
		.pwd {
			margin-left: 200px;
		}
		.pwd>input{
			width: 237px;
			height: 24px;
			margin-top: 60px;
			margin-left: 20px;
		}
		.updatePWD {
			width: 91px;
			height: 28px;
			background-color: white;
			border: solid 1px;
			border-radius: 5px;
			margin-top: 50px;
			margin-left: 420px;
		}
	</style>
	</head>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript">

</script>
	<body>
		<%-- <jsp:include page="../jsp/head.jsp"></jsp:include> --%>
		<jsp:include page="/jsp/head.jsp"/>
		<form action="../setLoginByPassword.bbs" method="post" class="fi">
			<fieldset  class="personal">
				<legend>密码修改</legend>
				<label class="pwd">
					原密码:<input type="password" id="oldPwd" name="oldPwd" placeholder="请输入原密码"/>
				</label><br />
				<label class="pwd">
					新密码:<input type="password" id="newPwd" name="newPwd" placeholder="请输入新密码"/>
				</label><br />
				<label class="pwd">
					确认密码:<input type="password" id="checkNewPwd" name="checkNewPwd" placeholder="请确认新密码"/>
				</label><br />
					<input  class="updatePWD" type="submit"  value="修改密码"/>
			</fieldset>
		</form>
	</body>
</html>