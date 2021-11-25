<%-- 
    Document   : home
    Created on : Jun 22, 2021, 10:58:28 AM
    Author     : Quang Huy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/price-range.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        <link rel="icon" href="images/home/favicon.ico" type="image/icon type">
    </head><!--/head-->

    <body>
        <header id="header"><!--header-->
            <div class="header_top"><!--header_top-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="contactinfo">
                                <ul class="nav nav-pills">
                                    <li><a href="#"><i class="fa fa-phone"></i> 0862424010</a></li>
                                    <li><a href="#"><i class="fa fa-envelope"></i> nquanghuy162001@gmail.com</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="social-icons pull-right">
                                <ul class="nav navbar-nav">
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header_top-->

            <div class="header-middle"><!--header-middle-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="logo pull-left">
                                <a href="home"><img src="images/home/logo2.png" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="shop-menu pull-right">
                                <ul class="nav navbar-nav">
                                    
                                    <c:if test="${sessionScope.acc != null}">
                                        <li><a href="login.jsp"><i class="fa fa-user-md"></i>Hello ${sessionScope.acc.username}</a></li>
                                        </c:if>

                                    <li><a href="#"><i class="fa fa-user"></i>Tài khoản</a></li>
                                    <li><a href="favourite"><i class="fa fa-star"></i>Yêu thích</a></li>
                                    <li><a href="checkout"><i class="fa fa-crosshairs"></i>Thanh toán</a></li>
                                    <li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i>Giỏ hàng (${sessionScope.size})</a></li>

                                    <c:if test="${sessionScope.acc != null}">
                                        <li><a href="logout"><i class="fa fa-unlock-alt"></i>Đăng xuất</a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.acc == null}">
                                        <li><a href="login"><i class="fa fa-lock"></i>Đăng nhập</a></li>
                                        </c:if>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--/header-middle-->

            <div class="header-bottom"><!--header-bottom-->
                <div class="container">
                    <div class="row">
                        <div class="col-sm-9">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="mainmenu pull-left">
                                <ul class="nav navbar-nav collapse navbar-collapse">
                                    <li><a href="home" class="active">Trang chủ</a></li>
                                    <li class="dropdown"><a href="#">Sản phẩm<i class="fa fa-angle-down"></i></a>
                                        <ul role="menu" class="sub-menu">
                                            <li><a href="category?cid=1">Giá đỗ</a></li>
                                            <li><a href="category?cid=2">Bánh đa nem</a></li>
                                            <li><a href="category?cid=4">Miến</a></li>
                                            <li><a href="category?cid=5">Nấm</a></li>
                                            <li><a href="category?cid=6">Gia vị</a></li>
                                        </ul>
                                    </li> 
                                    <!--<li><a href="404.html">404</a></li>-->
                                    <li><a href="contact.jsp">Liên hệ</a></li>
                                        <c:if test="${sessionScope.acc.isAdmin == true}">
                                        <li class="dropdown"><a href="#">Quản lý<i class="fa fa-angle-down"></i></a>
                                            <ul role="menu" class="sub-menu">
                                                <li><a href="manageproduct">Quản lý sản phẩm</a></li>
                                                <li><a href="manageraccount">Quản lý tài khoản</a></li>
                                            </ul>
                                        </li>
                                    </c:if>
                                </ul>
                            </div>
                        </div>
                        <form action = "search" method = "get">
                            <div class="col-sm-3">
                                <div class="search_box pull-right">
                                    <input value="${txtS}" name="txt" type="text" placeholder="Tìm kiếm"/>

                                    <button type="submit" class="btn btn-secondary btn-number">
                                        <i class="fa fa-search"></i>
                                    </button>

                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div><!--/header-bottom-->
        </header><!--/header-->


        <script src="js/jquery.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
