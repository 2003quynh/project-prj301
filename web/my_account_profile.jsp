<%-- 
    Document   : myaccount
    Created on : Oct 25, 2023, 12:11:33 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Tài khoản của tôi</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Demo powered by Templatetrip">
        <meta name="author" content="">
        <link rel="shortcut icon" type="image/x-icon" href="img/logo.png">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,700,900" rel="stylesheet">

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">


        <!-- Bootstrap core CSS -->
        <link href="css/styles.css" rel="stylesheet">
        <link href="css/animate.css" rel="stylesheet">
        <link href="css/owl-carousel.css" rel="stylesheet">
        <link href="css/lightbox.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="component/header.jsp"></jsp:include>
            <div class="main-content w-100 float-left blog-list">
                <div class="container">
                    <div class="row">

                        <div class="products-grid col-xl-9 col-lg-8 order-lg-2">
                            <div class="row">
                                <div class="col-lg-12 order-lg-last account-content">
                                    <h4>Chỉnh sửa thông tin cá nhân</h4>
                                    <form action="manage-profile" class="myacoount-form" method="post">

                                        <div class="form-group required-field">
                                            <label for="acc-email">Email<span class="required">*</span></label>
                                            <input type="text" class="form-control" id="acc-email" value="${sessionScope.acc.email}" name="acc-email" required="">
                                    </div>
                                    <div class="form-group required-field">
                                        <label for="acc-username">Tên đăng nhập<span class="required">*</span></label><br>
                                        <input type="text" class="form-control" id="acc-username" value="${sessionScope.acc.username}"  name="acc-username" required="" disabled="">
                                        <p style="color: red; font-style: italic">*Không thể thay đổi tên đăng nhập</p>
                                    </div>

                                    <div class="form-group required-field">
                                        <label for="acc-tel">SĐT<span class="required">*</span></label>
                                        <input type="text" class="form-control" id="acc-tel" value="${sessionScope.acc.tel}" name="acc-tel" required="">
                                    </div>
                                    <div class="form-group required-field">
                                        <label for="acc-name">Tên<span class="required"></span></label>
                                        <input type="text" class="form-control" id="acc-name" value="${sessionScope.acc.name}"  name="acc-name" required="">
                                    </div>
                                    <div class="form-group required-field">
                                        <label for="acc-birthday">DOB<span class="required"></span></label>
                                        <input type="date" class="form-control" id="acc-birthday" value="${birthday}"   name="acc-birthday" required="">
                                    </div>

                                    <div class="form-group required-field">
                                        <label for="acc-gender">Giới tính<span class="required"></span></label>
                                        <div style="display: flex">
                                            <input type="radio"  label="Male" id="acc-gender" value="Male" name="acc-gender" ${sessionScope.acc.gender ? 'checked': ''}  required=""> <span style="margin-left: 10px"> Male</span>
                                            <input type="radio" style="margin-left: 100px" value="Female" label="Female" id="acc-gender" ${sessionScope.acc.gender ? '': 'checked'} name="acc-gender"  required="">  <span style="margin-left: 10px"> Female</span>
                                        </div>

                                    </div>

                                    <div class="form-group required-field">
                                        <label for="acc-address">Địa chỉ<span class="required"></span></label>
                                        <input type="text" class="form-control" id="acc-address" value="${sessionScope.acc.address}"  name="acc-address" required="">
                                    </div>




                                    <div class="required text-right">* Required Field</div>
                                    <div class="form-footer d-flex justify-content-between align-items-center">
                                        <a href="#"><i class="material-icons">navigate_before</i>Back</a>

                                        <div class="form-footer-right">
                                            <button type="submit"  value="on" class="btn btn-primary btn-primary" name="save">Save</button>
                                        </div>
                                    </div>
                                    <!-- End .form-footer -->
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar col-xl-3 col-lg-3 order-lg-1">
                        <div class="sidebar-product left-sidebar w-100 float-left">
                            <div class="title">
                                <a data-toggle="collapse" href="#sidebar-product" aria-expanded="false" aria-controls="sidebar-product" class="d-lg-none block-toggler">sale products</a>
                            </div>
                            <div id="sidebar-product" class="collapse w-100 float-left">
                                <div class="sidebar-block sale products">
                                    <h3 class="widget-title">Tài khoản của tôi</h3>
                                    <div class="product-layouts">
                                        <div class="product-thumb">

                                            <div class="thumb-description col-sm-12 text-left float-left">
                                                <div class="caption">
                                                    <h4 class="product-title text-capitalize"><a href="manage_account">Thông tin đăng nhập</a></h4>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-layouts">
                                        <div class="product-thumb">

                                            <div class="thumb-description col-sm-12 text-left float-left">
                                                <div class="caption">

                                                    <h4 class="product-title text-capitalize"><a href="manage-profile">Thông tin cá nhân</a></h4>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="component/footer.jsp"></jsp:include>
    </body>
</html>
