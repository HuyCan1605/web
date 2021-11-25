<%-- 
    Document   : ManageProduct
    Created on : Jun 30, 2021, 12:50:02 PM
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
        <title>Manage Product | QuangHaiGia</title>
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

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="images/home/favicon.ico" type="image/icon type">
        <link rel="icon" href="images/home/favicon.ico" type="image/icon type">

    <body>

        <jsp:include page="header.jsp"></jsp:include>

            <div class="container">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <h2>Quản lý <b>tài khoản</b></h2>
                            </div>   
                            
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Tên tài khoản</th>
                                <th>Là admin</th>
                                <th>Là khách</th>
                                <th>Chặn/Mở</th>

                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listA}" var="o">
                            <tr>
                                <td>${o.username}</td>
                                <td><input type="checkbox" readonly ${o.isAdmin == true ? "checked":""}></td>
                                <td><input type="checkbox" readonly ${o.isCustomer == true ? "checked":""}></td>
                                <td>
                                <c:if test="${o.isAdmin == true || o.isCustomer == true}">
                                    <a href="blockopen?block_aid=${o.userId}"  class="edit" data-toggle="modal"><i style="color: red" class="fa fa-lock" data-toggle="tooltip" title="Chặn"></i></a>
                                </c:if>
                                <c:if test="${o.isCustomer == false}">
                                        <a href="blockopen?open_aid=${o.userId}"  class="edit" data-toggle="modal"><i style="color: blue" class="fa fa-unlock" data-toggle="tooltip" title="Mở khách"></i></a>
                                </c:if>
                                <c:if test="${o.isAdmin== false}">
                                        <a href="blockopen?open_admin=${o.userId}"  class="edit" data-toggle="modal"><i class="fa fa-unlock" data-toggle="tooltip" title="Mở admin"></i></a>
                                </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                            
                    </tbody>
                </table>

            </div>
            <a href="home"><button type="button" class="btn btn-primary">Quay về trang chủ</button></a>

        </div>
        <!-- Edit Modal HTML -->


        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
