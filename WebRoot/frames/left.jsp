<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<base href="${baseURL }">
		<link style="text/css" rel="stylesheet" href="css/common.css">
		<style type="text/css">
			ul li{
				margin-top:2px;
			}
		</style>
	</head>
	<body>
		<ul style="list-style-type: none;">
			<c:choose>
				<c:when test="${empty currUser.friends}">
					<li>还没有好友</li>
				</c:when>
				<c:otherwise>
					<c:forEach items="${currUser.friends}" var="friend">
					
						<li><a href="topic.do?operate=topics&uid=${friend.id}" target="main">
						<img width="16" height="16" src="${friend.headImg}" style="margin-right:4px;"/>
						${friend.nickName}</a></li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</ul>
	</body>
</html>