<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${path}/js/jquery.min.js"></script>
<script type="text/javascript" src="${path}/manage/js/navleft.js"></script>
<link href="${path}/manage/css/main.css" rel="stylesheet" type="text/css" />
<link href="${path}/manage/css/nav.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	$(function(){
		var f = document.createElement("form");
	    f.action = "${path }/goManage/goodsList.dql?type=goods&pageSize=30&pageNum=1"; //
	    f.target = "MainFrame";
	    f.method = "get";
	    var p=document.createElement("input");
	    p.name="type";
	    p.value="goods";
	    f.appendChild(p);
	    var p1=document.createElement("input");
	    p1.name="pageSize";
	    p1.value="30";
	    f.appendChild(p1);
	    var p2=document.createElement("input");
	    p2.name="pageNum";
	    p2.value="1";
	    f.appendChild(p2);
	    document.body.appendChild(f);
	    f.submit(); 	
	})
</script>
<title>无标题文档</title>
</head>

<body>
  <div class="leftNav_side">
		<dl class="Nav_lvl Nav_dd_show">
        	<!--一级菜单-->
        	<dt>积分商城</dt>
            <!--二级菜单-->
            <dd><a href="${path }/goManage/goodsClass.dql?pageSize=30&pageNum=1" target="MainFrame">商品类别</a></dd>
            <dd><a href="${path }/goManage/goodsList.dql?type=goods&pageSize=20&pageNum=1" target="MainFrame">商品管理</a></dd>
            <dd><a href="${path }/goManage/ordersList.dql?type=orders&pageSize=20&pageNum=1&status=1" target="MainFrame">订单管理</a></dd>
        </dl>
        <dl class="Nav_lvl">
        	<!--一级菜单-->
        	<dt>积分等级管理</dt>
            <!--二级菜单-->
            <dd><a href="${path }/risk_control/integralManage.dql?type=userIntegral&pageSize=40&pageNum=1" target="MainFrame">用户积分管理</a></dd>
            <!--<dd><a href="${path }/risk_control/integralManage.dql?type=integralLevel" target="MainFrame">积分等级设置</a></dd>-->
        </dl>
	</div>
</body>
</html>