<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>摄影工作室后台管理系统</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/style.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/admin/css/amazeui.min.css" />
</head>
<body>
<%@include file="/admin/style.jsp" %>
<div class="main_top">
    <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">添加套餐</strong><small></small></div>
    </div>
    <hr>

    <div class="edit_content">
		<form action="${ctx }/AComboServlet?action=AlterCombo"  id="alter_form" method="post" style="background: none; width: 700px">
	        <div class="item1">
	        	<input type="text" name="id" value="${combo.id }" style="display:none;">
	            <div>
	                <span>套餐名称：</span>
	                <input type="text" class="am-form-field" name="name" value="${combo.name }" >&nbsp;&nbsp;
	            </div>
	            <div>
	                <span>套餐价格：</span>
	                <input type="text" class="am-form-field" name="price" value="${combo.price }"  >
	            </div>
	
	        </div>
	
			<div class="item1">
	         	<span>摄影师：</span>
	            <select id="camerist_select"  name="camerist" > 
	            	<option value="1号摄影师">1号摄影师</option>
	            	<option value="2号摄影师">2号摄影师</option>
	            	<option value="3号摄影师">3号摄影师</option>
	 			</select>
	            &nbsp;
	        </div> 
			<br>
			<div class="item1">
	         	<span>所属分类：</span>
	            <select id="category_select"  name="type" > 
	            	<c:forEach items="${allProducts }" var="product">
	            		<option value="${product.ptype }">${product.ptype }</option>
	            	</c:forEach>
	 			</select>
	            &nbsp;
	        </div> 
			<br>
	        <div class="item1">
	                <span>套餐图片：</span>
	                <input type="file"  name="image"  value="${combo.image }"/>
	        </div>
	        <button class="am-btn am-btn-default" type="button" id="alter">提交</button>
	        &nbsp;&nbsp;&nbsp;&nbsp;
	        <button class="am-btn am-btn-default" type="button" id="reset">重置</button>
        </form>
    </div>


</div>

<script src="${pageContext.request.contextPath }/admin/js/jquery.min.js"></script>

<script> 
	$(function(){
		$("#alter").click(function () {
	        //让表单提交GoodsEditServlet
	        //获取表单
			$("#alter_form").submit(); 
	    });
		//让value的值等于商品is_hot的optioon成为选中状态 
		$("#camerist_select option[value=${combo.camerist}]").prop("selected",true);
		$("#category_select option[value=${combo.type}]").prop("selected",true);
		
		$("#reset").click(function () {
		    $(window).attr('location','CaseAlter.jsp');
		});
	});
</script>
</body>
</html>