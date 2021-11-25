<%-- 
    Document   : cart
    Created on : Jul 11, 2021, 9:02:29 PM
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
        <title>Giỏ hàng | QuangHài-giá</title>
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
                            <li class="active">Giỏ hàng</li>
                        </ol>
                    </div>
                    <div class="table-responsive cart_info">
                        <table class="table table-condensed">
                            <thead>
                                <tr class="cart_menu">
                                    <td class="image">Sản phẩm</td>
                                    <td class="description"></td>
                                    <td class="price">Giá</td>
                                    <td class="quantity">Số lượng</td>
                                    <td class="total">Tổng</td>
                                    <td></td>
                                </tr>
                            </thead>
                            <tbody>
                                <c:set var="o" value="${sessionScope.cart}"/>
                                <c:forEach items="${o.items}" var="i">
                                    <tr>
                                    <td class="cart_product">
                                        <a href=""><img src="${i.product.imgLink}" alt=""></a>
                                    </td>
                                    <td class="cart_description">
                                        <h4><a href="">${i.product.name} ${i.product.quantity}</a></h4>
                                        <p>Web ID: ${i.product.id}</p>
                                    </td>
                                    <td class="cart_price">
                                        <p>${i.product.price}.000₫</p>
                                    </td>
                                    <td class="cart_quantity">
                                        <div class="cart_quantity_button">
                                            <a href="cartg?num=-1&id=${i.product.id}" class="cart_quantity_up" >-</a>
                                            <input class="cart_quantity_input" type="text" name="quantity" value="${i.quantity}" readonly="" size="2">
                                            <a href="cartg?num=1&id=${i.product.id}" class="cart_quantity_down" >+</a>
                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">${i.quantity * i.product.price}.000₫</p>
                                    </td>
                                    <td class="cart_delete">
                                        <a class="cart_quantity_delete" href="remove?id=${i.product.id}"><i class="fa fa-times"></i></a>
                                    </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section> <!--/#cart_items-->

            <section id="do_action">
                <div class="container">

                    <div class="row">
                        <!--				<div class="col-sm-6">
                                                                <div class="chose_area">
                                                                        <ul class="user_option">
                                                                                <li>
                                                                                        <input type="checkbox">
                                                                                        <label>Use Coupon Code</label>
                                                                                </li>
                                                                                <li>
                                                                                        <input type="checkbox">
                                                                                        <label>Use Gift Voucher</label>
                                                                                </li>
                                                                                <li>
                                                                                        <input type="checkbox">
                                                                                        <label>Estimate Shipping & Taxes</label>
                                                                                </li>
                                                                        </ul>
                                                                        <ul class="user_info">
                                                                                <li class="single_field">
                                                                                        <label>Country:</label>
                                                                                        <select>
                                                                                                <option>United States</option>
                                                                                                <option>Bangladesh</option>
                                                                                                <option>UK</option>
                                                                                                <option>India</option>
                                                                                                <option>Pakistan</option>
                                                                                                <option>Ucrane</option>
                                                                                                <option>Canada</option>
                                                                                                <option>Dubai</option>
                                                                                        </select>
                                                                                        
                                                                                </li>
                                                                                <li class="single_field">
                                                                                        <label>Region / State:</label>
                                                                                        <select>
                                                                                                <option>Select</option>
                                                                                                <option>Dhaka</option>
                                                                                                <option>London</option>
                                                                                                <option>Dillih</option>
                                                                                                <option>Lahore</option>
                                                                                                <option>Alaska</option>
                                                                                                <option>Canada</option>
                                                                                                <option>Dubai</option>
                                                                                        </select>
                                                                                
                                                                                </li>
                                                                                <li class="single_field zip-field">
                                                                                        <label>Zip Code:</label>
                                                                                        <input type="text">
                                                                                </li>
                                                                        </ul>
                                                                        <a class="btn btn-default update" href="">Get Quotes</a>
                                                                        <a class="btn btn-default check_out" href="">Continue</a>
                                                                </div>
                                                        </div>-->
                        <div class="col-sm-6" style="float: right">
                            <div class="heading">
                                <h3>Thanh toán</h3>
                                <!--<p>Hãy chọn </p>-->
                            </div>
                            <div class="total_area">
                                <ul>
                                    <li>Tổng tiền sản phẩm<span>${sessionScope.cart.getTotalMoney()}00₫</span></li>
                                    <li>Phí vận chuyển <span>Free</span></li>
                                    <li>Tổng thanh toán <span>${sessionScope.cart.getTotalMoney()}00₫</span></li>
                                </ul>
                                
                                    <a class="btn btn-default update" href="home">Mua thêm</a>
                                <a class="btn btn-default check_out" href="checkout.jsp">Chốt đơn</a>
                                </form
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section><!--/#do_action-->

        <jsp:include page="footer.jsp"></jsp:include>



        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
