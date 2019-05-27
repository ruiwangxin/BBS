<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>帖子发表页面</title>
		<style type="text/css">
		.fi {
			width: 717px;
			height: 504px;
			margin: 0 auto;
		}
		
		.personal {
			height: 504px;
		}
		.bt,.neirong{
			
			margin-left: 100px;
		}
		.neirong{
			position: absolute;
			margin-top: 50px;
			margin-left: 100px;
		}
		.biaoti{
			margin-top: 50px;			
			margin-left: 50px;
			width: 432px;
			height: 24px;
		}
		.context{
			margin-top: 50px;			
			margin-left: 190px;
			width: 432px;
			height: 258px;
		}	
		.updatePost {
			width: 129px;
			height: 40px;
			background-color: white;
			border: solid 1px;
			border-radius: 5px;
			margin-top: 50px;
			margin-left: 492px;
		}
		
		textarea{
			resize: none;
		}
	</style>
	</head>

	<body>
		<%-- <jsp:include page="../jsp/head.jsp"></jsp:include> --%>
		<jsp:include page="/jsp/head.jsp"/>
		<%--<form action="../addPost.bbs" class="fi">--%>
		<div class="fi">
			<fieldset id="" class="personal">
				<legend>发表帖子</legend>
					<span class="bt">标题:</span>
					<input class="biaoti" type="text" id="biaoti" name="biaoti"/><br />
					<span class="neirong">内容:</span>
					<textarea class="context" id="context" name="context" ></textarea><br />
					<input class="updatePost" type="button" value="发表帖子"/>
			</fieldset>
		</div>
	<%--	</form>--%>
	</body>

</html>