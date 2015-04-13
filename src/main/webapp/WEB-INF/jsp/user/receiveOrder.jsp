<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>确认收货</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>

	<table class="" cellpadding="0" cellspacing="0"
		style="width:810px;border: 1px solid #DDD;margin-top: 8px">
		<thead
			style="background-color: #F7F7F7;width: 100%;height: 30px;font-size: 14px;font-family: Microsoft Yahei;font-weight:bold;color: #009379;">
			<tr>
				<th width="80px"></th>
				<th width="80px" style="text-align: left;">图书名称</th>
				<th width="80px">购买数量</th>
				<th width="80px">单价</th>
				<th width="80px">小计</th>
			</tr>
		</thead>
		<tbody>
			<tr
				style="height: 100px;text-align:center;font-family: verdana, arial, sans-serif;font-size:14px; ">
				<td width="80px" style="border-top: 1px solid #DDD;"><img
					alt="" width="60px" height="80px"
					src=" <%= this.getServletContext().getContextPath() %>${order.orde_book.book_picture}"></td>
				<td width="160px"
					style="text-align: left;border-top: 1px solid #DDD;">${order.orde_book.book_name}</td>
				<td width="80px" style="border-top: 1px solid #DDD;">${order.orde_book_amount}</td>
				<td width="80px" style="border-top: 1px solid #DDD;">${order.orde_book.book_price}</td>
				<td width="80px" style="border-top: 1px solid #DDD;">${order.orde_price}</td>
			</tr>
		</tbody>
	</table>
	<p
		style="font-size: 14px;font-family: Microsoft Yahei;font-weight:bold;">确认收货</p>
	<form method="post" action="/BookHouse/order/receiveOrder.htm">
		<input type="hidden" value="${order.orde_id}" name="orde_id" /> <input
			type="submit" value="确认收货" />
	</form>
</body>
</html>
