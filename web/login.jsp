<%-- 
    Document   : login
    Created on : Oct 21, 2023, 5:34:44 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Đăng nhập</title>
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
            <!-- Login modal -->
            <form action="login" method="post">
                <div id="modalLoginForm" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog" style="margin: 0 auto" role="document">
                        <div class="modal-content">
                            <div class="modal-header text-center">
                                <h4 class="modal-title w-100 font-weight-medium text-center">Đăng nhập</h4>

                            </div>
                            <div class="modal-body mx-3">
                            <c:set var="cookie" value="${pageContext.request.cookies}"/>
                            <div class="md-form mb-4">
                                <input type="text" id="LoginForm-name" class="form-control validate" name="username" placeholder="Tên đăng nhập" value="${cookie.cuser.value}"/>
                            </div>
                            <div class="md-form mb-4">
                                <input type="password" id="LoginForm-pass" class="form-control validate" name="password" placeholder="Mật khẩu" value="${cookie.cpass.value}"/>
                            </div>
                            <div class="checkbox-link d-flex justify-content-between">
                                <div class="left-col">
                                    <input type="checkbox" ${cookie.crem != null ? 'checked':''} value="on" id="remember_me" name="remember"><label for="remember_me">Ghi nhớ đăng nhập</label>
                                </div>
                                <div class="right-col"><a href="#">Quên mật khẩu?</a></div>
                            </div>
                            <center style="color: red">${error}</center>
                        </div>


                        <div class="modal-footer d-flex justify-content-center">
                            <button class="btn btn-primary" type="submit">Đăng nhập</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>

        <jsp:include page="component/footer.jsp"></jsp:include>
    </body>
</html>

