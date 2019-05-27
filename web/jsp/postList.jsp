<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>帖子列表页面</title>
		<style type="text/css">
			.fi{
				width: 718px;
				margin: 0 auto;
			}
			.heads{
				margin-left: 30px;
				margin-top: 50px;
			}
			.heads>label>input{
				width: 114px;
				height: 24px;
				margin-left: 10px;
			}
			.serch{
				width: 70px;
				height: 28px;
				background-color: white;
				border: solid 1px;
				border-radius: 5px;
				margin-left: 20px;
			}
			.context{
				margin-top: 30px;
				width: 622px;
				margin-left: 30px;
			}
			hr{
				width: 622px;
			}
			.context_div{
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
			
			.anniu{
				margin-top: 10px;
				margin-left: 30px;
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
<script type="text/javascript" src="/js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		var tableHtml = "";
		$.post("/postByList.bbs","",function (data) {
			for(var key in data)
			{
				tableHtml += "<div class=\"context_div\"><div class=\"context_div_div1\" ><label class=\"bt\">标题:<span>"+data[key]["post_title"]+"</span></label>";
				tableHtml +=    "\t<label class=\"user\">用户名:<span>"+data[key]["bbsUser"]["user_name"]+"</span></label>";
				tableHtml +="<label class=\"date\">发表日期:<span>"+data[key]["post_createtime"]+"</span></label>";
				tableHtml += "<div><lable class = \"neirong\">内容:<span>"+data[key]["post_content"]+"</span></lable></div>";
				tableHtml += "<label class=\"options\">\n" +
						"\t\t\t\t\t\t\t\t\t<a href=\"#\">删除</a>\n" +
						"\t\t\t\t\t\t\t\t\t<a href=\"#\">修改</a>\n" +
						"\t\t\t\t\t\t\t\t\t<a href=\"/jsp/postDetails.jsp?post_id="+data[key]["post_id"]+"\">详情</a>\n" +
						"\t\t\t\t\t\t\t\t</label></div></div>";

				/*$.ajax({
                    url:"/item.bbs",
                    data:item,
                    contentType: "application/json;charset=utf-8",
                    type: "post",
                    dataType: "json"
                })*/
			}
			$("#table_data").html(tableHtml);
		})



		function onSerch()
		{
			var tableHtml = "";
			var serch = '{"post_title":"'+$("#post_title").val()+'","post_content":"'+$("#post_content").val()
					+'","post_createtime":"'+$("#post_createtime").val()+'"}'
			console.log(serch)
			$.ajax({
				url:"/getPost.bbs",
				data:serch,
				contentType:"application/json;charset=utf-8",
				type:"post",
				dataType:"json",
				success:function(data)
				{
					console.log(data)
					$.each(data,function (index, item) {
						tableHtml += "<div class=\"context_div\"><div class=\"context_div_div1\" ><label class=\"bt\">标题:<span>"+item.post_title+"</span></label>";
						tableHtml +=    "\t<label class=\"user\">用户名:<span>"+item.bbsUser.user_name+"</span></label>";
						tableHtml +="<label class=\"date\">发表日期:<span>"+item.post_createtime+"</span></label>";
						tableHtml += "<div><lable class = \"neirong\">内容:<span>"+item.post_content+"</span></lable></div>";
						tableHtml += "<label class=\"options\">\n" +
								"\t\t\t\t\t\t\t\t\t<a href=\"#\">删除</a>\n" +
								"\t\t\t\t\t\t\t\t\t<a href=\"#\">修改</a>\n" +
								"\t\t\t\t\t\t\t\t\t<a href=\"/jsp/postDetails.jsp?post_id="+item.post_id+"\">详情</a>\n" +
								"\t\t\t\t\t\t\t\t</label></div></div>";
					})
					$("#table_data").html(tableHtml);
				}
			})
		}

		function btndown() {
			var page = $("#page").text();
			$.ajax({
				url:"/postByList.bbs?page="+page+"",
				contentType:"application/json;charset=utf-8",
				type:"post",
				dataType:"json"
			})
			console.log(page)
			$.ajax({
				url:"/page.bbs",
				data:'{"total":"3","page":"'+page+'"}',
				contentType:"application/json;charset=utf-8",
				type:"post",
				dataType:"json",
				success:function(data)
				{
					// $.each(data,function(index,item)
					// {
					// 	console.log(data)
					// 		$("#page").text(item.page)
					// })
					console.log(data.page)
					$("#page").text(data.page)


				}
			})
			// $.post("/page.bbs","",function(data)
			// {
			// 	$("#page").text()
			// })

		}

	</script>
	<body>
		<%-- <jsp:include page="../jsp/head.jsp"></jsp:include> --%>
		<jsp:include page="/jsp/head.jsp"></jsp:include>
		<div class="fi">
	<%--	<form action="" class="fi">--%>
			<fieldset id="">
				<legend>帖子列表</legend>
				<div class="heads">
					<label>
						标题:<input id="post_title" type="text" />
					</label>
					<label>
						内容:<input id="post_content" type="text" />
					</label>
					<label>
						发表日期:<input id="post_createtime" type="text" />
					</label>
					<input type="button" value="搜索帖子" id="serch" class="serch" onclick="onSerch()"/>
				</div>
				<hr />
				<div class="context" >
					<div id="table_data">

					</div>

				</div>
				<div class="anniu">
						<input type="button" value="上一页" id="up"/>
						<input type="button" value="下一页" id="down" onclick="btndown()" style="margin-left: 10px;"/>
						<label style="margin-left: 20px;">一共<span>xxx</span>页,当前第<span id="page">1</span>页</label>
				</div>
			</fieldset>
		<%--</form>--%>
		</div>
	</body>

</html>