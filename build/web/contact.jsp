<%-- 
    Document   : content
    Created on : Jul 18, 2021, 5:02:49 PM
    Author     : Quang Huy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Liên hệ | QuangHài-giá</title>
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

    <body onload="loadMap()">
        <jsp:include page="header.jsp"></jsp:include>

            <div id="contact-page" class="container">
                <div class="bg">
                    <div class="row">    		
                        <div class="col-sm-12">    			   			
                            <h2 class="title text-center">Liên hệ <strong>với chúng tôi</strong></h2>    			    				    				
                            <div id="map_container"  style="height:385px; width:100%; margin-bottom: 70px;"></div>
                        </div>			 		
                    </div>    	
                    <div class="row">  	
                        <div class="col-sm-8">
                            <div class="contact-form">
                                <h2 class="title text-center">Liên lạc</h2>
                                <div class="status alert alert-success" style="display: none"></div>
                                <form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
                                    <div class="form-group col-md-6">
                                        <input type="text" name="name" class="form-control" required="required" placeholder="Họ và tên">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <input type="email" name="email" class="form-control" required="required" placeholder="Email">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <input type="text" name="subject" class="form-control" required="required" placeholder="Chủ đề">
                                    </div>
                                    <div class="form-group col-md-12">
                                        <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Lời nhắn của bạn"></textarea>
                                    </div>                        
                                    <div class="form-group col-md-12">
                                        <input type="submit" name="submit" class="btn btn-primary pull-right" value="Liên hệ">
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="contact-info">
                                <h2 class="title text-center">Thông tin liên lạc</h2>
                                <address>
                                    <p>Quang Hài giá</p>
                                    <p>Đội 6, thôn Đào Xuyên, xã Đa Tốn, Gia Lâm, Hà Nội</p>
                                    <p>Việt Nam</p>
                                    <p>Số điện thoại: 0862424010</p>
                                    <p>Email: nquanghuy162001@gmail.com</p>
                                </address>
                                <div class="social-networks">
                                    <h2 class="title text-center">Mạng xã hội</h2>
                                    <ul>
                                        <li>
                                            <a href="#"><i class="fa fa-facebook"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-twitter"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-google-plus"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-youtube"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>    			
                    </div>  
                </div>	
            </div><!--/#contact-page-->

        <jsp:include page="footer.jsp"></jsp:include>



        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
        <script type="text/javascript" src="js/gmaps.js"></script>
        <script src="js/contact.js"></script>
        <script src="js/price-range.js"></script>
        <script src="js/jquery.scrollUp.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
        <script
        <script type="text/javascript" 
            src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

            <script type="text/javascript">
                                function loadMap() {
                                    var latlng = new google.maps.LatLng(20.989826, 105.933950);
                                    var myOptions = {
                                        zoom: 15,
                                        center: latlng,
                                        mapTypeId: google.maps.MapTypeId.ROADMAP
                                    };
                                    var map = new google.maps.Map(document.getElementById("map_container"), myOptions);

                                    var marker = new google.maps.Marker({
                                        position: latlng,
                                        map: map,
                                        title: "Quang Hài Giá"
                                    });

                                }
            </script>
        </body>
    </html>
