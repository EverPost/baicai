<%@ page language="java"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=8" />
        <title></title>
        <link href="${path }/manage/css/main.css" rel="stylesheet" type="text/css" />
        <!-- 黑色皮肤 -->
        <link href="${path }/manage/css/skin_black.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript" src="${path }/js/jquery.min.js"></script>        
        <script type="text/javascript" src="${path }/manage/js/menu.js"></script>
        <script type="text/javascript" src="${path }/manage/js/function.js"></script>

    </head>
    <body>
        <!-- 头部 开始 -->
        <div class="top_box wrap">
            <div class="top_main wrap clear">
                <div class="fl">
                    <a href="#">
                        <img src="${path }/manage/image/logo.png" alt="" />
                    </a>
                </div>
                <div class="fr">
                    <p class="systime"><span>系统时间：</span><i></i></p>
                    <p>欢迎您，尊敬的<em>${adminUser.jobNum}</em>管理员</p>
                    <p>
                    	<a href="${path}/manage/menu/left_personal.jsp" target="leftMenuFrame">[修改密码]</a>
                    	<a href="${path}/manage/manageLogout.jsp" target="_parent">[安全退出]</a>
                    	<a href="${path}/" target="_blank">[前台首页]</a></p>
                </div>
                <ul class="top_nav clear">
                    <li class="btn"></li>
                     <li class="sel"><a href="${path}/manage/menu/left_borrow.jsp" target="leftMenuFrame">贷款管理</a></li>
                     	<li><a href="${path}/manage/menu/left_account.jsp" target="leftMenuFrame">资金管理</a></li>
                     	<li><a href="${path}/manage/menu/left_customer.jsp" target="leftMenuFrame">客户管理</a></li>
                     	<li><a href="${path}/manage/menu/left_branch.jsp" target="leftMenuFrame">合作管理</a></li>
                     	<li><a href="${path}/manage/menu/left_module.jsp" target="leftMenuFrame">模块管理</a></li>
                     	<li><a href="${path}/manage/menu/left_system.jsp" target="leftMenuFrame">系统管理</a></li>
<%--                    <li><a href="${path}/manage/menu/left_approve.jsp" target="leftMenuFrame">认证管理</a></li>--%>
                    <li><a href="${path}/manage/menu/left_personal.jsp" target="leftMenuFrame">个人中心</a></li>
                </ul>
            </div>
        </div>
        <!-- 头部 结束 -->        
    </body>
</html>