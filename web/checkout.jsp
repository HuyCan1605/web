<%-- 
    Document   : checkout
    Created on : Jul 13, 2021, 10:57:00 AM
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
        <title>Thanh toán | QuangHài giá</title>
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
                            <li class="active">Thanh toán</li>
                        </ol>
                    </div><!--/breadcrums-->

                    <div class="step-one">
                        <h2 class="heading">Thông tin</h2>
                    </div>
                    
                        <div>
                            <div  class="checkout-options">
                                <h3>Phương thức thanh toán</h3>
                                <p>Vui lòng chọn 1 trong 2 phương thức thanh toán</p>

                                <ul id="credit" class="nav">

                                    <li>
                                        <input name="option" value="1" type="radio"><label>Chuyển khoản</label>
                                    </li>
                                    <li>
                                        <input name="option" value="2" type="radio"><label>Tiền mặt</label>
                                    </li>
                                    <li>
                                        <button onclick="display()"><i class="fa fa-angle-double-right"></i>Hiển thị</button>
                                    </li>

                                </ul>


                            </div><!--/checkout-options-->

                            <div class="register-req">
                                <p>Vui lòng điền thông tin để chúng tôi có thể giao hàng cho quý khách</p>
                            </div><!--/register-req-->

                            <div class="shopper-informations">
                                <div class="row">
                                <c:if test="${sessionScope.acc == null}">
                                </c:if>
                                <div class="col-sm-5 clearfix">
                                    <div class="bill-to">
                                        <p>Địa chỉ</p>
                                        <div class="form-one">
                                            <form>
                                                <input name="phone" type="text" required placeholder="Số điện thoại">
                                                <input name="email" type="text" placeholder="Email">
                                                <input name="firstN" type="text" required placeholder="Họ*">
                                                <input name="midN" type="text" required placeholder="Đệm*">
                                                <input name="lastN" type="text" required placeholder="Tên*">
                                            </form>
                                                
                                            </div>
                                        <div class="form-two">
                                            
                                            <form>
                                                <input name="address" type="text" required placeholder="Quận/Huyện, Phường/Xã*">
                                                <input name="street" type="text" required placeholder="Tên đường, toà nhà, số nhà*">
                                                <select name="typeAdd">
                                                    <option>-- Loại địa chỉ --</option>
                                                    <option value="1">Văn phòng</option>
                                                    <option value="2">Nhà riêng</option>
                                                </select>
                                                <p class="alert-danger">Chỉ giao hàng trong Hà Nội</p>
                                            
                                            </form>
                                                
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="order-message">
                                        <p>Lưu ý cho người bán</p>
                                        <textarea name="message"  placeholder="Tin nhắn:" rows="16"></textarea>
                                    </div>	
                                </div>					
                            </div>
                        </div>
                    </div>
                
                <div class="review-payment">
                    <h2>Kiểm tra & Thanh toán</h2>
                </div>

                <div class="table-responsive cart_info">
                    <table class="table table-condensed">
                        <thead>
                            <tr class="cart_menu">
                                <td class="image">Sản phẩm</td>
                                <td class="description"></td>
                                <td class="price">Giá</td>
                                <td class="quantity">Số lượng</td>
                                <td class="total">Tổng tiền</td>
                                <td></td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:set var="o" value="${sessionScope.cart}"/>
                            <c:forEach var="i" items="${o.items}">
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

                                            <input class="cart_quantity_input" type="text" name="quantity" value="${i.quantity}" readonly size="2">

                                        </div>
                                    </td>
                                    <td class="cart_total">
                                        <p class="cart_total_price">${i.quantity * i.product.price}.000₫</p>
                                    </td>

                                </tr>
                            </c:forEach>




                            <tr>
                                <td colspan="4">&nbsp;</td>
                                <td colspan="2">
                                    <table class="table table-condensed total-result">
                                        <tr>
                                            <td>Tổng tiền</td>
                                            <td>${sessionScope.cart.getTotalMoney()}00₫</td>
                                        </tr>
                                        <tr class="shipping-cost">
                                            <td>Phí vận chuyển</td>
                                            <td>Miễn phí</td>										
                                        </tr>
                                        <tr>
                                            <td>Tổng thanh toán</td>
                                            <td><span>${sessionScope.cart.getTotalMoney()}00₫</span></td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="payment-options">
                    <form action="checkout" method="post">
                        <a class="btn btn-default update" href="home">Mua thêm</a>
                        <a class="btn btn-default update" href="cart.jsp">Chỉnh sửa</a>
                        <input type="submit" class="btn btn-default check_out" value="Thanh toán">
                    </form>



                </div>

            </div>
        </section> <!--/#cart_items-->



        <jsp:include page="footer.jsp"></jsp:include>



        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
                                            function display() {
                                                $.ajax({
                                                    url: "/Assignment/display", // cái servlet 
                                                    type: "post",
                                                    success: function (response) {
                                                        var credit = document.getElementById("credit");//lấy dữ liệu ban đầu
                                                        credit.innerHTML += response; // + html lúc sau
                                                    }

                                                });
                                            }
        </script>
    </body>
</html>
