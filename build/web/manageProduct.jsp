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
        <title>Quản lý tài khoản | QuangHaiGia</title>
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
                                <h2>Quản lý <b>sản phẩm</b></h2>
                            </div>
                            
                                
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Thêm sản phẩm</span></a>
                        
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>WebID</th>
                            <th>Tên sản phẩm</th>
                            <th>Định lượng</th>
                            <th>Ảnh</th>
                            <th>Giá</th>
                            <th>Sửa/Xoá</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listP}" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.id}</td>
                                <td>${o.name}</td>
                                <td>${o.quantity}</td>
                                <td>
                                    <img src="${o.imgLink}">
                                </td>
                                <td>${o.price}.000₫</td>
                                <td>
                                    <a href="loadproduct?pid=${o.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="deleteproduct?pid=${o.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Hiển thị <b>6</b> trên <b>${allProduct}</b> sản phẩm</div>
                    <ul class="pagination">
                        <c:if test="${indexPage != 1}">
                            <li class="page-item"><a href="manageproduct?index=${indexPage-1}">Trước</a></li>
                            </c:if>

                        <c:forEach begin="1" end="${numberOfPage}" var="o">
                            <li class="page-item ${indexPage == o?"active":""}"><a href="manageproduct?index=${o}" class="page-link">${o}</a></li>
                            </c:forEach>

                        <c:if test="${indexPage != numberOfPage}">
                            <li class="page-item"><a href="manageproduct?index=${indexPage+1}" class="page-link">Sau</a></li>
                            </c:if>

                    </ul>
                </div>
            </div>
            <a href="home"><button type="button" class="btn btn-primary">Quay về trang chủ</button></a>

        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addproduct" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Thêm sản phẩm</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
      
                            <div class="form-group">
                                <label>Nhập tên sản phẩm</label>
                                <input name="name" type="text" class="form-control" required placeholder="vd: chè đỗ đen">
                            </div>
                            <div class="form-group">
                                <label>Nhập thông tin sản phẩm</label>
                                <textarea name="description" type="text" class="form-control" placeholder="vd: Được nhập nhẩu từ..."></textarea>
                            </div>
                            <div class="form-group">
                                <label>Nhập giá sản phẩm (Nhập phần hệ số trước 1000 vd: 8000 -> nhập 8)</label>
                                <input name="price" class="form-control" required placeholder="vd: 100, 9">
                            </div>
                            <div class="form-group">
                                <label>Nhập đường dẫn ảnh</label>
                                <textarea name="imgLink" class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Nhập định lượng</label>
                                <textarea name="quantity" class="form-control" required placeholder="10.000vnd/100 gram"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Loại sản phẩm</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.idCategory}">${o.title}</option>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Huỷ">
                            <input type="submit" class="btn btn-success" value="Thêm">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
