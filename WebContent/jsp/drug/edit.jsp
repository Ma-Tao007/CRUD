<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入bootstrap -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<!-- 引入JQuery  bootstrap.js-->
	<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 顶栏 -->
	<jsp:include page="top.jsp"></jsp:include>
	<!-- 中间主体 -->
		<div class="container" id="content">
		<div class="row">
			<div class="col-md-10">
				<div class="panel panel-default">
				    <div class="panel-heading">
						<div class="row">
					    	<h1 style="text-align: center;">修改药品信息</h1>
						</div>
				    </div>
				    <div class="panel-body">
						<form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/drug?method=edit" id="editfrom" method="post" onsubmit="return submit()">
							  <div class="form-group">
							    <label class="col-sm-2 control-label">药品id</label>
							    <div class="col-sm-10">
							      <input readonly="readonly" type="number" class="form-control" id="id" name="id" placeholder="" value="${drug.id}">
							    <input hidden name='inputtime' value='${drug.inputtime }'>
							    </div>
							  </div>
							  <div class="form-group">
							    <label  class="col-sm-2 control-label">药品名称</label>
							    <div class="col-sm-10">
							      <input type="text" required="required" class="form-control" id="drugname" name="drugname" placeholder="请输入药品名称" value="${drug.drugname}">
							    </div>
							  </div>
							  <div class="form-group">
							    <label  class="col-sm-2 control-label">价格</label>
							    <div class="col-sm-10">
							      <input type="number" required="required" class="form-control" id="price" name="price" placeholder="请输入价格" value="${drug.price}">
							    </div>
							  </div>
							  <div class="form-group">
							    <label  class="col-sm-2 control-label">数量</label>
							    <div class="col-sm-10">
							      <input type="number" required="required" class="form-control" id="num" name="num" placeholder="请输入数量" value="${drug.num}">
							    </div>
							  </div>
							<div class="form-group" style="text-align: center">
								<button class="btn btn-default" type="submit">提交</button>
								<button class="btn btn-default" type="reset">重置</button>
							  </div>
						</form>
				    </div>
				    
				</div>

			</div>
		</div>
	</div>
</body>
	<script type="text/javascript">

	function submit(){
        if($("#drugname").val()=="" || $("#drugname").val()==null){
            alert("请输入药品名称")
            return false
        }
        if($("#price").val()=="" || $("#price").val()==null){
            alert("请输入价格")
            return false
        }
        if($("#num").val()=="" || $("#num").val()==null){
            alert("请输入数量")
            return false
        }
        return true
    }
	</script>
</html>