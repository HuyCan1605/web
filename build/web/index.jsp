<%-- 
    Document   : index.jsp
    Created on : Jun 14, 2021, 10:32:43 PM
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
        <title>Trang chủ | QuangHaiGia</title>
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

        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Loại sản phẩm</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title"><a href="category?cid=1">Giá đỗ</a></h4>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#mens">
                                                <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                                Đồ khô
                                            </a>
                                        </h4>
                                    </div>
                                    <div id="mens" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <ul>
                                                <li><a href="category?cid=2">Bánh đa nem</a></li>
                                                <li><a href="category?cid=4">Miến</a></li>
                                                <li><a href="category?cid=5">Nấm</a></li>
                                                <li><a href="category?cid=6">Gia vị</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                


                            </div><!--/category-products-->



                            <div class="shipping text-center"><!--shipping-->
                                <img src="images/home/ChooseRight.png" alt="" />
                            </div><!--/shipping-->

                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">Các sản phẩm</h2>

                            <c:forEach items="${listP}" var="o">
                                <div class="col-sm-4">
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
                                        <div class="choose">
                                            <ul class="nav nav-pills nav-justified">
                                                
                                                    <li><button onclick="favourite(${o.id})" style="float: left; background-color: white; border: none ; padding: 0; margin: 8px; color: #03A66A"><i class="fa fa-plus-square"></i>Thêm yêu thích    </button></li>
                                                    <li><button onclick="buy(${o.id})" style="float: right; background-color: white; border: none ; padding: 0; margin: 8px; color: #03A66A"><i class="fa fa-plus-square"></i>Thêm giỏ hàng</button></li>
                                                
                                                
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                        </div><!--features_items-->

                        <div style="text-align: center;">
                            <c:forEach begin="1" end="${endP}" var="o">
                                <a style="margin-bottom:  20px" class="${tag == o ?"active":""} btn btn-default" href="home?index=${o}">${o}</a>
                            </c:forEach>
                        </div>

                        <div class="recommended_items"><!--recommended_items-->
                            <h2 class="title text-center">Đề xuất sản phẩm</h2>

                            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                    <c:forEach items="${listR}" var="o" begin="0" end="2">
                                        <form action="buy" method="get">
                                            <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="${o.imgLink}" alt="" />
                                                        <h2>${o.price}.000₫</h2>
                                                        <p>${o.name} ${o.quantity}</p>
                                                        <a onclick="buy(${o.id})" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Mua ngay</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        </form>
                                    </c:forEach>
                
                                    </div>
                                    <div class="item">	
                                        <c:forEach items="${listP2}" var="o" begin="2" end="4">
                                        <form action="buy" method="get">
                                            <div class="col-sm-4">
                                            <div class="product-image-wrapper">
                                                <div class="single-products">
                                                    <div class="productinfo text-center">
                                                        <img src="${o.imgLink}" alt="" />
                                                        <h2>${o.price}.000₫</h2>
                                                        <p>${o.name} ${o.quantity}</p>
                                                        <a onclick="buy(${o.id})" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Mua ngay</a>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        </form>
                                    </c:forEach>
                                    </div>
                                </div>
                                <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
                                    <i class="fa fa-angle-left"></i>
                                </a>
                                <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
                                    <i class="fa fa-angle-right"></i>
                                </a>			
                            </div>
                        </div><!--/recommended_items-->

                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp"></jsp:include>

        <script src="js/jquery.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            function favourite(id){
                $.ajax({
        url: "/Assignment/favourite",
        type: "post",
        
        data: { pid: id} ,
        success: function (response) {
        }
        
    }); 
            }
            
            
            function buy(id){
                $.ajax({
        url: "/Assignment/buy",
        type: "get",
        
        data: { pid: id} ,
        success: function (response) {
        }
        
    }); 
            }
        </script>
    </body>
</html>