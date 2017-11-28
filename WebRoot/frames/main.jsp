<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<base href="${baseURL }">
	
<style type="text/css">
	div{
		position:relative;
		float:left;
	}
	table{
		border-collapse:collapse;
		border-spacing:1;
	}
	a{
		text-decoration: none;
	}
	.tbl{
		margin-left:10%;
	}
	.add_topic_div{
		width:80%;
		margin-left:10%;
		text-align:right;
		border:0px solid red ;
		margin-top:20px;
		margin-bottom:2px;
		
 	}
	.add_topic_div a {
		font-size:12px;
	
	}
</style>
</head>
<body>
	<div class="add_topic_div">
		<c:choose>
			<c:when test="${currUser.id==currFriend.id}">
				<a href="#">添加新日志</a>
			</c:when>
			<c:otherwise>
				欢迎进入${currFriend.nickName}的空间！
				<a href="topic.do?operate=topics&uid=${currUser.id}">返回自己的空间</a>
			</c:otherwise>
		</c:choose>
	</div>
	<table class="tbl" border="1" cellspacing="0" cellpadding="2" width="80%">
		<tr>
			<th>序号</th>
			<th>标题</th>
			<th>日期</th>
			<th>删除</th>
		</tr>
		<c:choose>
			<c:when test="${empty currFriend.topics}">
				<tr>
					<th>还没有任何日志！</th>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${currFriend.topics}" var="topic">
					<tr align="center">
						<td>${topic.id }</td>
						<td><a href="topic.do?operate=detail&id=${topic.id }" >${topic.title }</a></td>
						<td>${topic.topicDate}</td>
						<td>
							&nbsp;
							<c:if test="${currUser.id==currFriend.id}">
								<input type="button" value="删除" />
							</c:if>
							&nbsp;
						</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</table>

</body>
</html>