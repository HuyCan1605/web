<%-- 
    Document   : login
    Created on : Jun 22, 2021, 11:21:23 PM
    Author     : Quang Huy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Đăng nhập | QuangHaiGia</title>
        <link rel="icon" href="images/home/favicon.ico" type="image/icon type">
    </head>
    <jsp:include page="header.jsp"></jsp:include>
	
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Đăng nhập</h2>
						<form action="login" method="post">
                                                        <p class="text-warning">${mess}</p>
							<input type="text" value="${userJSP}" name="user" placeholder="Tên tài khoản" />
                                                        <input type="password" value="${passJSP}" name="pass" placeholder="Mật khẩu" />
							<span>
								<input type="checkbox" name="remember" class="checkbox"> 
								Giữ đăng nhập lần sau
							</span>
							<button type="submit" class="btn btn-default">Đăng nhập</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or1">Hoặc</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Đăng ký tài khoản mới!</h2>
						<form action="signup" method="post">
							<input name="user" type="text" placeholder="Tên tài khoản" value="${user1}"/>
                                                        <input name="pass" type="password" placeholder="Mật khẩu"/>
							<input name="repass" type="password" placeholder="Nhập lại mật khẩu"/>
                                                        <p class="text-warning">${mess1}</p> 
                                                        <p class="text-success">${mess2}</p>
							<button type="submit" class="btn btn-default">Đăng kí</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
	
	<jsp:include page="footer.jsp"></jsp:include>
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>