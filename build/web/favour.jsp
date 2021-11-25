<%-- 
    Document   : favor
    Created on : Jul 17, 2021, 8:38:34 PM
    Author     : Quang Huy
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Yêu thích | QuangHài-giá</title>
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
        <jsp:include page="header.jsp"></jsp:include>
            <section id="cart_items">
                <div class="container">
                    <div class="breadcrumbs">
                        <ol class="breadcrumb">
                            <li><a href="home">Home</a></li>
                            <li class="active">Yêu thích</li>
                        </ol>
                    </div>
                </div>

            <c:forEach items="${listF}" var="o">
                <div class="col-sm-3">
                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <img src="${o.imgLink}" alt="" />
                                <h2>${o.price}.000₫</h2>
                                <p>${o.name} ${o.quantity}</p>
                                <a href="detail?pid=${o.id}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Mua ngay</a>
                            </div>
                            <div class="product-overlay">
                                <div class="overlay-content">
                                    <h2>${o.price}.000₫</h2>
                                    <p>${o.description}</p>
                                    <a href="detail?pid=${o.id}" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Mua ngay</a>
                                </div>
                            </div>
                        </div>
                        <div class="choose" style="text-align: center">
                            <a href="removefavour?pid=${o.id}" style="background-color: white; border: none ; padding: 0; margin: 8px; color: #03A66A"><i class="fa fa-minus-square"></i>Bỏ yêu thích</a>
                        </div>
                    </div>
                </div> 
            </c:forEach>
        </section>


        <div style="clear: both">
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        

    </body>






</html>
