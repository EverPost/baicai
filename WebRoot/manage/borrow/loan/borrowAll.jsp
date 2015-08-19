<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=8" />
        <title></title>
        <link href="${path}/manage/css/main.css" rel="stylesheet" type="text/css" />
        <link href="${path}/manage/js/jPackageCss/jPackage.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="${path}/js/jquery.min.js"></script>
        <script type="text/javascript" src="${path}/manage/js/jPackage-1.4.1.min.js"></script>
        <script type="text/javascript" src="${path}/manage/js/function.js"></script>
        <script type="text/javascript" src="${path}/manage/js/navleft.js"></script>
        <script src="${path }/js/My97DatePicker/WdatePicker.js"></script>
        <script>
        	//清空
        	function resent(){  
        	   	var barNode = $("#searchForm table");
        	   	barNode.each(function(){
        	   		$(this).find("input[type='text']").val("");
        	   	});
        		$("input[type=submit].btn_blue").click();
        	};  
        </script>
    </head>
    <body>
        <div class="admin_main">
            <div class="site">
                <span>贷款管理</span>
                <em></em>
                <span>标的管理</span>
                <em></em>
                <span>所有借款标</span>
            </div>
            <form id="searchForm" method="post" action="${path }/mgr_borrow/borrowList.dql">
            <table class="main_tools_table">
                <tr>
                    <td class="column">用户ID：</td>
                    <td><input type="text" onkeyup="value=value.replace(/[^\d]/g,'')" name="userId" value="${userId }" /></td>
                    <td class="column">用户名：</td>
                    <td><input type="text" name="userName" value="${userName }" /></td>
                    <td class="column">借款人姓名：</td>
                    <td><input type="text" name="borrowName" value="${borrowName }" /></td>
                    <td class="column">手机号码：</td>
                    <td><input type="text" onkeyup="value=value.replace(/[^\d]/g,'')" name="mobilePhone" value="${mobilePhone }" /></td>
                    <td class="column">标ID：</td>
                    <td><input type="text" onkeyup="value=value.replace(/[^\d]/g,'')" name="borrowId" value="${borrowId }" /></td>
                </tr>
                <tr>
                    <td class="column">日期：</td>
                    <td>
                        <input type="text" onclick="WdatePicker();" value="${begin_date }"
                         name="begin_date" class="short" readonly="readonly" />
                        <i>至</i>
                        <input type="text" onclick="WdatePicker();" value="${end_date }"
                         name="end_date" class="short" readonly="readonly" />
                    </td>
                </tr>
                <tr>
                    <th colspan="100" class="btn_td">
                        <input name="submit" type="submit" class="btn_blue large" value="查询"/>
                        <input onclick="resent();" type="button" class="btn_blue large" value="清空"/>
                    </th>
                </tr>
            </table>
            </form>
            <div class="main_data_operate">
                <span>操作</span>
                <ul>
                    <li><input type="button" value="导出报表" /></li>
                    <li><a href="#">添加</a></li>
                    <li><a href="#">添加权限</a></li>
                </ul>
            </div>
            <table class="main_data_table">
                <tr>
                    <th>用户ID</th>
                    <th>用户名称</th>
                    <th>标ID</th>
                    <th>借款人姓名</th>
                    <th>联系手机</th>
                    <th>借款人年龄</th>
                    <th>借款用途</th>
                    <th>借款金额</th>
                    <th>申请时间</th>
                    <th>所在省市</th>
                    <th>标的状态</th>
                    <th>所属公司</th>
                    <th>操作</th>
                </tr>
					<tr>
						<td>${borrow.user_id}</td>
						<td><a class="uid" href="${path}/mgr_user/userCheck.dql?id=${borrow.user_id}">
								${userMap[borrow.user_id]}
							</a>
						</td>
						<td>${borrow.id }</td>
						<td>${borrow.borrow_userName }</td>
						<td>${borrow.borrow_mobilePhone }</td>
						<td>${borrow.borrow_userAge }</td>
						<td>${borrow.use }</td>
						<td>￥${borrow.account}</td>
						<td>2015
						</td>
						<td>城市</td>
						<td>状态</td>
						<td>${branchMap[borrow.user_id] }</td>
						<td>
                        	<input type="button" value="查看" onclick="window.location.href='${path }/mgr_borrow/borrowInfo.dql?borrowId=${borrow.id}'" class="btn_blue"/>
                        </td>
					</tr>
                <tr class="pager"></tr>
            </table>
            <form id="pagerForm" method="post" action="${path }/mgr_borrow/borrowList.dql">
				<input type="hidden" name="currentPage" value="1" /> 
				<input type="hidden" name="pageNum" value="3" /> 
				<input type="hidden" name="totalCount" value="93" /> 
				<input type="hidden" name="totalPage" value="10" /> 
				<%-- 搜索条件 便于分页--%>
				<input type="hidden" name="userId" value="${userId }" />
				<input type="hidden" name="userName" value="${userName }" />
				<input type="hidden" name="borrowName" value="${borrowName }" />
				<input type="hidden" name="mobilePhone" value="${mobilePhone }" />
				<input type="hidden" name="borrowId" value="${borrowId }" />
				<input type="hidden" name="begin_date" value="${begin_date }"  />
				<input type="hidden" name="end_date"  value="${end_date }" />
			</form>
        </div>
    </body>
</html>