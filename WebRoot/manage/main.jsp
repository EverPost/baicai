<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网站后台管理系统</title>
</head>
<frameset rows="125,*" cols="*" frameborder="no" border="0"	framespacing="0"> 
	<frame src="${path}/manage/top.jsp"	name="topFrame" scrolling="No" 
		noresize="noresize" id="topFrame" title="topFrame" /> 
	<frameset id="center" name="center"
		cols="240,10,*" frameborder="no" border="0" framespacing="0">
		<frame id="leftMenuFrame" src="${path }/manage/menu/left_borrow.jsp"	
		name="leftMenuFrame" scrolling="No" noresize="noresize"	title="leftMenuFrame" /> 
		<frame src="${path }/manage/arrow.html"	name="arrow" scrolling="No" noresize="noresize" title="arrow" /> 
		<frame	id="mainFrame" src="" name="mainFrame" scrolling="" noresize="noresize"
	title="mainFrame" /> 
	</frameset> 
</frameset>
<noframes></noframes>
<body>
</body>
</html>