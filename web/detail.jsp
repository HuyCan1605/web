<%-- 
    Document   : detail
    Created on : Jun 21, 2021, 10:09:54 PM
    Author     : Quang Huy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Chi tiết sản phẩm | QuangHài-giá</title>
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
        <style>
            /* use reverse flexbox to take advantage of flex-direction: reverse */
#star-rating1 {
  display: flex;
  align-items: center;
  width: 160px;
  flex-direction: row-reverse;
  justify-content: space-between;
  margin: 10px auto;
  position: relative;
}
/* hide the inputs */
#star-rating1 input {
  display: none;
}
/* set properties of all labels */
#star-rating1 > label { 
  width: 20px;
  height: 20px;
  font-family: Arial;
  font-size: 20px;
  transition: 0.2s ease;
  color: orange;
}
/* give label a hover state */
#star-rating1 label:hover {
  color: #ff69b4;
  transition: 0.2s ease;
}
#star-rating1 label:active::before {
  transform:scale(1.1);
}

/* set shape of unselected label */
#star-rating1 label::before {
  content: '\2606';
  position: absolute;
  top: 0px;
  line-height: 26px;
}
/* set full star shape for checked label and those that come after it */
#star-rating1 input:checked ~ label:before {
  content:'\2605';
}


#star-rating2 {
  display: flex;
  align-items: center;
  width: 160px;
  flex-direction: row-reverse;
  justify-content: space-between;
  margin: 10px auto;
  position: relative;
}
#star-rating2 input {
  display: none;
}
/* set properties of all labels */
#star-rating2 > label {
  width: 20px;
  height: 20px;
  font-family: Arial;
  font-size: 20px;
  transition: 0.2s ease;
  color: orange;
}
/* give label a hover state */
#star-rating2 label:hover {
  color: #ff69b4;
  transition: 0.2s ease;
}
#star-rating2 label:active::before {
  transform:scale(1.1);
}

/* set shape of unselected label */
#star-rating2 label::before {
  content: '\2606';
  position: absolute;
  top: 0px;
  line-height: 26px;
}
/* set full star shape for checked label and those that come after it */
#star-rating2 input:checked ~ label:before {
  content:'\2605';
}

@-moz-document url-prefix() {
  #star-rating2 input:checked ~ label:before {
  font-size: 36px;
  line-height: 21px;
  }
}
        </style>
    </head><!--/head-->

    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="left-sidebar">
                                <h2>Category</h2>
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
                            <div class="product-details"><!--product-details-->
                                <div class="col-sm-5">
                                    <div class="view-product">
                                        <img src="${detail.imgLink}" alt="" />
                                    <h3>ZOOM</h3>
                                </div>
                                <div id="similar-product" class="carousel slide" data-ride="carousel">

                                    <!-- Wrapper for slides -->


                                    <!-- Controls -->
                                    <a class="left item-control" href="#similar-product" data-slide="prev">
                                        <i class="fa fa-angle-left"></i>
                                    </a>
                                    <a class="right item-control" href="#similar-product" data-slide="next">
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </div>

                            </div>
                            <div class="col-sm-7">
                                <div class="product-information"><!--/product-information-->
                                    <form name="f" action="" method="post">
                                        <img src="images/product-details/new.jpg" class="newarrival" alt="" />
                                        <h2>${detail.name}</h2>
                                        <p>WEB id: ${detail.id}</p>
                                        <div id="star-rating1">
                                                    <input type="radio" name="stars" id="star-a" value="5"/>
                                                    <label for="star-a"></label>

                                                    <input type="radio" name="stars" id="star-b" value="4"/>
                                                    <label for="star-b"></label>

                                                    <input type="radio" name="stars" id="star-c" value="3"/>
                                                    <label for="star-c"></label>

                                                    <input type="radio" name="stars" id="star-d" value="2"/>
                                                    <label for="star-d"></label>

                                                    <input type="radio" name="stars" id="star-e" value="1"/>
                                                    <label for="star-e"></label>
                                        </div>
                                        <span>
                                            <span>${detail.price}.000₫</span>
                                            <label>Số lượng:</label>
                                            <input name="quantity" type="text" value="1" />
                                            <button type="submit" onclick="buy(${detail.id})" class="btn btn-fefault cart" >
                                                <i class="fa fa-shopping-cart"></i>
                                                Đặt hàng
                                            </button>

                                        </span>
                                                <p><b>Có hàng:</b> ${detail.avai == true?"Còn":"Hết"}</p>
                                        <p><b>Định lượng</b> ${detail.quantity}</p>
                                        <p><b>Mô tả:</b> ${detail.description}</p>
                                        <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a>
                                    </form>

                                </div><!--/product-information-->
                            </div>
                        </div><!--/product-details-->

                        <div class="category-tab shop-details-tab"><!--category-tab-->
                            <div class="col-sm-12">
                                <ul class="nav nav-tabs">
                                    <li class="active"><a href="#reviews" data-toggle="tab">Phản hồi (${sessionScope.sizeC})</a></li>
                                </ul>
                            </div>
                            <div class="tab-content">

                                <div class="tab-pane fade active in" id="reviews" >
                                    <div class="col-sm-12">
                                        <c:forEach items="${listC}" var="o">
                                            <div style="border: 1px solid #f2cd7e; margin: 3px">
                                                <ul>
                                                    <li><a href=""><i class="fa fa-user"></i>${o.user}</a></li>
                               
                                                    <li><a href=""><i class="fa fa-calendar-o"></i>${o.date}</a></li>
                                                </ul>
                                                <p>${o.content}</p>
                                            </div>
                                        </c:forEach>
                                        <p><b>Viết đánh giá</b></p>

                                        <form action="comment" method="get">
                                            <textarea name="txt" required></textarea>
                                            <b>Đánh giá: </b> 
                                            
                                                <div id="star-rating2">
                                                    <input type="radio" name="stars" id="star-a" value="5"/>
                                                    <label for="star-a"></label>

                                                    <input type="radio" name="stars" id="star-b" value="4"/>
                                                    <label for="star-b"></label>

                                                    <input type="radio" name="stars" id="star-c" value="3"/>
                                                    <label for="star-c"></label>

                                                    <input type="radio" name="stars" id="star-d" value="2"/>
                                                    <label for="star-d"></label>

                                                    <input type="radio" name="stars" id="star-e" value="1"/>
                                                    <label for="star-e"></label>
                                                </div>
                                            
                                            <input type="submit" class="btn btn-default pull-right" value="Đăng"> 


                                        </form>
                                    </div>
                                </div>

                            </div>
                        </div><!--/category-tab-->

                        <div class="recommended_items"><!--recommended_items-->
                            <h2 class="title text-center">Đề xuất sản phẩm</h2>

                            <div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <c:forEach items="${listR}" var="o" begin="1" end="3">
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
                                        <c:forEach items="${listP2}" var="o" begin="3" end="5">
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

        <script type="text/javascript">
            function buy(id) {
                document.f.action = "buy?id=" + id;
                document.f.submit();
            }
        </script>
    </body>
</html>
