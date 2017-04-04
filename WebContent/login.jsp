<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>考试系统登录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<meta name="keywords"
	content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />

<!-- Bootstrap配置引入 -->
<link href="${pageContext.request.contextPath}/bootstrap/css/style.css"
	rel='stylesheet' type='text/css' />
<script src="${pageContext.request.contextPath}/bootstrap/js/jQuery.js"></script>


<script type="text/javascript">
	function checkForm() {
		var id = document.getElementById("id").value;
		var password = document.getElementById("password").value;
		if (id == null || id == "") {
			alert("准考证号不能为空！");
			return false;
		}
		if (password == null || password == "") {
			alert("登录密码不能为空！");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<script>
		$(document).ready(function(c) {
			$('.close').on('click', function(c) {
				$('.login-form').fadeOut('slow', function(c) {
					$('.login-form').remove();
				});
			});
		});
	</script>
	<!--SIGN UP-->
	<h1>考试登陆界面</h1>
	<div class="login-form">
		<div class="close"></div>
		<div class="head-info">
			<label class="lbl-1"> </label> <label class="lbl-2"> </label> <label
				class="lbl-3"> </label>
		</div>
		<div class="clear"></div>
		<div class="avtar">
			<img src="/Exam/avtar.png" />
		</div>
		<form action="student!login" method="post"
			onsubmit="return checkForm()">
			<input type="text" class="text" value="${student.id}" id="id"
				name="student.id">
			<div class="key">
				<input type="password" value="${student.password}" id="password"
					name="student.password">
			</div>
			<div class="signin">
				<input type="submit" value="登陆">
			</div>
		</form>

	</div>
	<div class="copy-rights">
		<p>Copyright &copy; 2017 Mark</p>
	</div>
</body>
</html>
<script>
	if ('${error}' != ''){
		alert('${error}');
	}
</script>