<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="scripts/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		//1. 点击 delete 时, 弹出 确定是要删除 xx 的信息吗 ? 若确定, 执行删除, 若不确定, 则取消
		$(".delete").click(function(){
			var lastName = $(this).next(":hidden").val();
			var flag = confirm("确定要删除" + lastName + "的信息吗?");
			if(flag){
				var $tr = $(this).parent().parent();
				//删除, 使用 ajax 的方式
				var url = this.href;
				var args = {"time":new Date()};
				$.post(url, args, function(data){
					//若 data 的返回值为 1, 则提示 删除成功, 且把当前行删除
					if(data == "1"){
						alert("删除成功!");
						$tr.remove();
					}else{
						//若 data 的返回值不是 1, 提示删除失败. 
						alert("删除失败!");
					}
				});	
			}
			
			//取消超链接的默认行为
			return false;
		});		
	})
	
</script>
</head>
<body>
	<center>
	<h4>显示菜品</h4>
	<a href="emp-input">增加菜品</a><br><br>
	
	<s:if test="#request.employees == null || #request.employees.size() == 0">
		没有任何菜品信息
	</s:if>
	<s:else>
		<table border="1" cellpadding="10" cellspacing="0">
			<tr>
				<td>菜品编号</td>
				<td>菜品名称</td>
				<td>菜品描述</td>
				<td>价格</td>
				<td>删除</td>
				<td>修改</td>
			</tr>
			<s:iterator value="#request.employees">
				<tr>
					<td>${id }</td>
					<td>${lastName }</td>
					<td>${email }</td>
					<td>${dishprice }</td>
					<td>
						<a href="emp-delete?id=${id }" class="delete">删除</a>
						<input type="hidden" value="${lastName }"/>
					</td>
					<td>
						<a href="emp-input?id=${id }">修改</a>
					</td>
				</tr>
			</s:iterator>
		</table>
	</s:else>
		</center>
</body>
</html>