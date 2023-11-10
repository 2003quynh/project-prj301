<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Love Beauty</title>
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
        <header class="header-area header-sticky text-center header-default">
            <div class="header-main-sticky">
                <div class="header-nav">

                </div>
                <div class="header-main-head">

                    <div class="header-main">
                        <div class="container">
                            <div class="header-left float-left d-flex d-lg-flex d-md-block d-xs-block">
                                <div class="contact">
                                    <i class="material-icons">phone</i>
                                    <a href="tel:+1234567890">1234567890</a>
                                </div>
                            </div>
                            <div class="header-middle float-lg-left float-md-left float-sm-left float-xs-none">
                                <div class="logo">
                                    <a href="index.jsp"><img src="img/logos/logo.png" alt="logo" style="margin-top: -18px"
                                                             height="50"></a>
                                </div>
                            </div>
                            <div class="header-right d-flex d-xs-flex d-sm-flex justify-content-end float-right">
                                <div class="search-wrapper">
                                    <a>
                                        <i class="material-icons search">search</i>
                                        <i class="material-icons close">close</i> </a>
                                    <form autocomplete="off" action="search" method ="" class="search-form">
                                        <div class="autocomplete">
                                            <input oninput="searchByName(this)" value="${txtS}" id="myInput" type="text" name="txt" placeholder="Search here">
                                            <button type="button" type="submit"><i class="material-icons">search</i></button>
                                        </div>
                                    </form>
                                </div>

                                <div class="cart-wrapper">
                                    <button type="button" class="btn">
                                        <i class="material-icons">shopping_cart</i>
                                        <span class="ttcount">2</span> </button>
                                    <div id="cart-dropdown" class="cart-menu">
                                        <ul class="w-100 float-left">

                                            <li class="buttons w-100 float-left">
                                                <form action="cart">
                                                    <input class="btn pull-left mt_10 btn-primary btn-rounded w-100"
                                                           value="Giỏ hàng" type="submit">

                                                </form>
                                                <form action="checkout">
                                                    <input class="btn pull-right mt_10 btn-primary btn-rounded w-100"
                                                           value="Đơn hàng" type="submit">
                                                </form>
                                                
                                                
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="user-info">
                                    <button type="button" class="btn" style="display: flex; align-items: center">
                                        <i class="material-icons">perm_identity</i> 
                                        <c:if test="${sessionScope.acc != null}">

                                            <span style="font-size: 12px">${sessionScope.acc.username}</span>


                                        </c:if>
                                    </button>
                                    <div id="user-dropdown" class="user-menu">
                                        <ul>

                                            <c:choose>

                                                <c:when test="${(sessionScope.acc != null) && ((sessionScope.acc.role==2))}">
                                                    <li class="nav-item">

                                                    <li><a href="manage_account" class="text-capitalize">Tài khoản của tôi</a></li>
                                                    <li><a href="logout" class="modal-view button" >Đăng xuất</a></li>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li><a href="register" class="modal-view button"
                                                           >Đăng ký</a></li>
                                                    <li><a href="login" class="modal-view button"
                                                           >Đăng nhập</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                        </ul>
                                    </div>
                                </div>
                                            <div  style="width: 100px">
                                    <center style="color: red">${errorMessage}</center>
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="menu">
                        <div class="container">
                            <!-- Navbar -->
                            <nav class="navbar navbar-expand-lg navbar-light d-sm-none d-xs-none d-lg-block navbar-full">

                                <!-- Navbar brand -->
                                <a class="navbar-brand text-uppercase d-none" href="#">Navbar</a>

                                <!-- Collapse button -->
                                <button class="navbar-toggler" type="button" data-toggle="collapse"
                                        data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent2"
                                        aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>

                                <!-- Collapsible content -->
                                <div class="collapse navbar-collapse">

                                    <!-- Links -->
                                    <ul class="navbar-nav m-auto justify-content-center">
                                        <li class="nav-item dropdown active">
                                            <a class="nav-link  text-uppercase" href="home">
                                                Trang chủ
                                                <span class="sr-only">(current)</span> </a>

                                        </li>

                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-uppercase" href="product?index=1&categoryID=0">
                                                Sản phẩm
                                                <span class="sr-only">(current)</span> </a>
                                            <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
                                                <div class="sub-menu mb-xl-0 mb-4">
                                                    <ul class="list-unstyled">
                                                        <li>
                                                            <a class="menu-item pl-0" href="product?index=1&categoryID=2">
                                                                Quần áo</a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="product?index=1&categoryID=1">
                                                                Váy</a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="product?index=1&categoryID=3">
                                                                Giày, dép </a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="product?index=1&categoryID=4">
                                                                Phụ kiện </a>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link  text-uppercase" href="blog-list.html">Blog</a>

                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-uppercase"
                                               href="category.html">Pages</a>
                                            <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3">
                                                <div class="sub-menu">
                                                    <ul class="list-unstyled">
                                                        <li>
                                                            <a class="menu-item pl-0" href="about-us.html">
                                                                About us </a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="accordions.html">
                                                                Accordions </a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="buttons.html">
                                                                Buttons </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="nav-item dropdown">
                                            <a class="nav-link text-uppercase" href="contact-us.html">contact us</a>
                                        </li>
                                    </ul>
                                    <!-- Links -->
                                </div>
                                <!-- Collapsible content -->

                            </nav>
                            <!-- Navbar -->
                            <nav class="navbar navbar-expand-lg navbar-light d-lg-none navbar-responsive">

                                <!-- Navbar brand -->
                                <a class="navbar-brand text-uppercase d-none" href="#">Navbar</a>

                                <!-- Collapse button -->
                                <button class="navbar-toggler" type="button" data-toggle="collapse"
                                        data-target="#navbarSupportedContent2" aria-controls="navbarSupportedContent2"
                                        aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"><i class='material-icons'>sort</i></span>
                                </button>

                                <!-- Collapsible content -->
                                <div class="collapse navbar-collapse" id="navbarSupportedContent2">

                                    <!-- Links -->
                                    <ul class="navbar-nav m-auto justify-content-center">

                                        <!-- Features -->
                                        <li class="nav-item dropdown active">
                                            <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse"
                                               data-target="#menu1" aria-controls="menu1" aria-expanded="false"
                                               aria-label="Toggle navigation" href="#">
                                                Trang chủ
                                                <span class="sr-only">(current)</span> </a>

                                        </li>
                                        <li class="nav-item dropdown mega-dropdown">
                                            <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse"
                                               data-target="#menu3" aria-controls="menu3" aria-expanded="false"
                                               aria-label="Toggle navigation" href="#">Phân loại</a>
                                            <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3"
                                                 id="menu3">
                                                <div class="row">
                                                    <div class="col-md-12 col-xl-4 sub-menu mb-xl-0 mb-4">
                                                        <h6 class="sub-title text-uppercase font-weight-bold white-text">
                                                            Variation 1</h6>
                                                        <!--Featured image-->
                                                        <ul class="list-unstyled">
                                                            <li>
                                                                <a class="menu-item pl-0" href="filter-toggle.html">
                                                                    filter toggle </a>
                                                            </li>
                                                            <li>
                                                                <a class="menu-item pl-0" href="off-canvas-left.html">
                                                                    off canvas left </a>
                                                            </li>
                                                            <li>
                                                                <a class="menu-item pl-0" href="off-canvas-right.html">
                                                                    off canvas right </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="col-md-6 col-xl-4 sub-menu mb-md-0 mb-4">
                                                        <h6 class="sub-title text-uppercase font-weight-bold white-text">
                                                            Variation 2</h6>
                                                        <ul class="list-unstyled">

                                                            <li>
                                                                <a class="menu-item pl-0" href="category-6-col.html">
                                                                    grid 6 column </a>
                                                            </li>

                                                        </ul>
                                                    </div>
                                                    <div class="col-md-6 col-xl-4 sub-menu mb-0">

                                                        <ul class="list-unstyled">
                                                            <li>
                                                                <span class="menu-banner"><img
                                                                        src="img/banner/menu-banner.jpg" alt="menu-banner"
                                                                        width="210" height="300" /></span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse"
                                               data-target="#menu2" aria-controls="menu2" aria-expanded="false"
                                               aria-label="Toggle navigation" href="#">
                                                Sản phẩm
                                                <span class="sr-only">(current)</span> </a>
                                            <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3"
                                                 id="menu2">
                                                <div class="sub-menu mb-xl-0 mb-4">
                                                    <h6 class="sub-title text-uppercase font-weight-bold white-text">
                                                        Featured</h6>
                                                    <ul class="list-unstyled">
                                                        <li>
                                                            <a class="menu-item pl-0" href="product-grid.html">
                                                                product grid </a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="product-sticky-right.html">
                                                                sticky right </a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="product-extended-layout.html">
                                                                Extended layout </a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="product-details.html">
                                                                Default layout </a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="product-compact.html">
                                                                compact layout </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                        <!-- Technology -->



                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse"
                                               data-target="#menu4" aria-controls="menu4" aria-expanded="false"
                                               aria-label="Toggle navigation" href="#">Blog</a>
                                            <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3"
                                                 id="menu4">
                                                <div class="sub-menu">
                                                    <h6 class="sub-title text-uppercase font-weight-bold white-text d-none">
                                                        Featured</h6>
                                                    <ul class="list-unstyled">

                                                        <li>
                                                            <a class="menu-item pl-0" href="blog-list.html">
                                                                blog list </a>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </li>

                                        <li class="nav-item dropdown">
                                            <a class="nav-link text-uppercase" href="contact-us.html">contact us</a>
                                        </li>

                                        <li class="nav-item dropdown">
                                            <a class="nav-link dropdown-toggle text-uppercase" data-toggle="collapse"
                                               data-target="#menu5" aria-controls="menu5" aria-expanded="false"
                                               aria-label="Toggle navigation" href="#">Pages</a>
                                            <div class="dropdown-menu mega-menu v-2 z-depth-1 special-color py-3 px-3"
                                                 id="menu5">
                                                <div class="sub-menu">
                                                    <h6 class="sub-title text-uppercase font-weight-bold white-text d-none">
                                                        Featured</h6>
                                                    <ul class="list-unstyled">
                                                        <li>
                                                            <a class="menu-item pl-0" href="about-us.html">
                                                                About us </a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="accordions.html">
                                                                Accordions </a>
                                                        </li>
                                                        <li>
                                                            <a class="menu-item pl-0" href="buttons.html">
                                                                Buttons </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <!-- Links -->
                                </div>
                                <!-- Collapsible content -->

                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>

    </body>
</html>