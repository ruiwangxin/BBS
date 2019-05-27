<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>帖子详情页面</title>
		<style type="text/css">
			a{
				text-decoration: none;
				color: black;
			}
			.fi{
				width: 720px;
				height: 665px;
				margin: 0 auto;
			}
			.fi>fieldset{
				height: 665px;
			}
			.context{
				margin-top: 30px;
				width: 624px;
				margin-left: 30px;
			}
			.context>.context_div{
				border: solid 1px;
				height: 80px;
				margin-top: 10px;
			}
			.context_div_div1>.bt,.context_div_div2>.neirong{
				margin-left: 10px;
			}
			.context_div_div1>.user{
				margin-left: 20px;
			}
			.context_div_div1>.date{
				margin-left: 30px;
			}			
			.context_div_div1>.options{
				margin-left: 140px;				
			}
			.context_div_div1>.options>a{
				margin-left: 10px;				
			}
			.context_div_div2{
				margin-top: 30px; 
			}
			.context_div_div2>.liulan{
				margin-left: 140px;	
			}
			.context_div_div2>.gentie{
				margin-left: 40px;	
			}
			.context_div_div2>.huifu{
				margin-left: 70px;	
			}
			hr{
				margin-top: -500px;
			}
			.huifu_div{
				margin-left: 50px;
				width: 559px;
				height: 80px;
				border: solid 1px;
			}
			.huifu_div>label{
				margin-left: 20px;
			}
			.huifu_div_span1{
				margin-left: 20px;
			}
			.huifu_div>.neirong{
				position: absolute;
				margin-top: 30px;
			}
			.huifu_div>.neirong>span{
				margin-left: 10px;
			}
			.anniu{
				margin-top: 10px;
				margin-left: 50px;
			}
			.anniu>input{
				width: 70px;
				height: 28px;
				background-color: white;
				border-radius: 5px;
				border: solid 1px;
			}
		</style>
	</head>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		function getUrlParam(name) {
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
			var r = window.location.search.substr(1).match(reg);  //匹配目标参数
			if (r != null) return unescape(r[2]); return null; //返回参数值
		}
		var url = getUrlParam("post_id")
		console.log(url)
		var tr = "";
		$.ajax({
			url:"/getComment.bbs?post_id="+url+"",
			contentType: "application/json;charset=utf-8",
			type: "post",
			dataType: "json",
			success:function(data){
				$.each(data,function (index,item) {
					console.log(item.comment_content)
					console.log(item.bbsUser.user_name)
					tr += "<div class=\"huifu_div\"><label class=\"user\">用户名:<span class=\"huifu_div_span1\">"+item.bbsUser.user_name+"</span></label>";
					tr += "\t<label>回复日期:<span class=\"huifu_div_span1\">"+item.comment_createtime+"</span></label>";
					tr += "<label style=\"margin-left: 180px;\">";
					tr += "\t<a href=\"#\" style=\"margin: 10px;\">删除</a>";
					tr += "\t<a href=\"#\">修改</a>\t</label><br />";
					tr += "<label class=\"neirong\">回复内容:<span>"+item.comment_content+"</span></label></div>";
				})
				$("#huifu").html(tr)
				console.log(data)
			}

		})
		var td = "";
		$.ajax({
			url:"/postByList_id.bbs?post_id="+url+"",
			contentType: "application/json;charset=utf-8",
			type: "post",
			dataType: "json",
			success:function (data) {
				$.each(data,function(index,item)
				{
					td += "<div class=\"context_div_div1\" ><label class=\"bt\">标题:<span>"+item.post_title+"</span></label>";
					td +="<label class=\"user\">用户名:<span>"+item.bbsUser.user_name+"</span></label>";
					td += "<label class=\"date\">发表日期:<span>"+item.post_createtime+"</span></label>";
					td += "\t<label class=\"options\"> \t<a href=\"#\">删除</a>";
					td += "\t<a href=\"#\">修改</a> ";
					td += "<a href=\"#\">详情</a> \t</label> </div>";
					td += "<div class=\"context_div_div2\">";
					td += "<label class=\"neirong\">内容:<span>"+item.post_content+"</span></label>";
					td += "<label class=\"liulan\">浏览次数:<span>xxxx</span></label>";
					td += "<label class=\"gentie\">跟帖次数:<span>xxxx</span></label>";
					td += "<label class=\"huifu\">回复帖子</label>";
					td += "</div>";
				})
				$("#content_div").html(td)
			}
		})
	</script>
	<body>
		<%-- <jsp:include page="../jsp/head.jsp"></jsp:include> --%>
		<jsp:include page="/jsp/head.jsp"></jsp:include>
		<form action="" class="fi">
			<fieldset id="">
				<legend>帖子详情</legend>
				<div class="context">
					<div class="context_div" style="height: 579px;">
						<div id="content_div">

						</div>
					</div>					
					<hr color="black" size="1"/>
					<div id="huifu" ></div>

					
					
					<div class="anniu">
						<input type="button" value="上一页" id="up"/>
						<input type="button" value="下一页" id="down" style="margin-left: 10px;"/>
						<label style="margin-left: 20px;">一共<span>xxx</span>页,当前第<span>xx</span>页</label>
					</div>
				</div>
				
			</fieldset>
		</form>
	</body>

</html>