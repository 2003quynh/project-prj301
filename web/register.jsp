<%-- 
    Document   : register
    Created on : Oct 21, 2023, 5:34:22 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Đăng ký</title>
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
        <!-- Register modal -->
        <jsp:include page="component/header.jsp"></jsp:include>
            <form action="register" method="post">
                <div id="modalRegisterForm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h4 class="modal-title w-100 font-weight-medium text-center">Đăng ký</h4>

                            </div>
                            <div class="modal-body mx-3">
                                <div class="md-form mb-4">
                                    <input type="email" id="RegisterForm-email" class="form-control validate" name="email"
                                           placeholder="Email">
                                </div>
                                <div class="md-form mb-4">
                                    <input type="text" id="RegisterForm-name" class="form-control validate" name="username" placeholder="Tên đăng nhập">
                                </div>

                                <div class="md-form mb-4">
                                    <input type="password" id="RegisterForm-pass" class="form-control validate" name="password"
                                           placeholder="Mật khẩu">
                                </div>
                                 <div class="md-form mb-4">
                                     <input type="password" id="RegisterForm-pass" class="form-control validate" name="confirmPassword"
                                           placeholder="Nhập lại mật khẩu">
                                </div>
                                <div class="checkbox-link d-flex justify-content-between">
                                    <div class="left-col">
                                        <input id="remember-me" type="checkbox"><label for="remember_me">Ghi nhớ tài khoản</label>
                                    </div>
                                    
                                </div>
                                <center style="color: red">${errorMessage}</center>
                            </div>

                            <div class="modal-footer d-flex justify-content-center">
                                <button class="btn btn-primary" type="submit" >Đăng ký</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        <jsp:include page="component/footer.jsp"></jsp:include>

    </body>
</html>

