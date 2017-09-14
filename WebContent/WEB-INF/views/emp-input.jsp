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
		$(":input[name=lastName]").change(function(){
			var val = $(this).val();
			val = $.trim(val);
			var $this = $(this);
			
			if(val != ""){
				//把当前节点后面的所有 font 兄弟节点删除
				$this.nextAll("font").remove();
				
				var url = "emp-validateLastName";
				var args = {"lastName":val, "time":new Date()};
				$.post(url, args, function(data){
					//表示可用
					if(data == "1"){
						$this.after("<font color='green'>名称可用!</font>");
					}
					//不可用
					else if(data == "0"){
						$this.after("<font color='red'>名称不可用!</font>");						
					}
					//服务器错误
					else{
						alert("服务器错误!");
					}
				});
			}else{
				alert("lastName 不能为空");
				$(this).val("");
				$this.focus();
			}
		});
	})
	
</script>
</head>
<body>
<center>

	

	<h4>编辑菜品</h4>

	<s:form action="emp-save" method="post">
		<s:if test="id != null">
			<s:textfield name="lastName" label="菜品名称" disabled="true"></s:textfield>
			<s:hidden name="id"></s:hidden>
			<%-- 
			<!-- 通过添加隐藏域的方式把未显式提交的字段值提交到服务器 -->
			<s:hidden name="lastName"></s:hidden>
			<s:hidden name="createTime"></s:hidden>
			--%>
		</s:if>
		<s:else>
			<s:textfield name="lastName" label="菜品名称"></s:textfield>
		</s:else>
		
		<s:textfield name="email" label="菜品描述"></s:textfield>
		<s:textfield name="dishprice" label="价格"></s:textfield>
		<s:submit></s:submit>	
	</s:form>
</center>
</body>
</html>