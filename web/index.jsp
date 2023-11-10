<%-- 
    Document   : index
    Created on : Oct 21, 2023, 5:33:53 PM
    Author     : user
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="vi">

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

        <!-- Custom styles for this template -->
    </head>

    <body class="index layout1">

        <jsp:include page="component/header.jsp"></jsp:include>
            <div class="main-content">
                <div id="ttcmsbanner" class="ttcmsbanner my-40 my-sm-25">
                    <div class="ttbannerblock container text-center">
                        <div class="row">
                            <div class="ttbanner1 ttbanner col-sm-6 col-xs-6 left-to-right hb-animate-element">
                                <div class="ttbanner-img"><a href="#"><img src="img/banner/cms-01.jpg" alt="cms-01"
                                                                           height="600" width="630"></a></div>
                                <div class="ttbanner-inner d-inline-block align-top float-none">
                                    <div class="ttbanner-desc float-left w-100">
                                        <h2 class="ttbanner-heading text-uppercase float-left w-100">Womens</h2>
                                        <span class="title text-uppercase float-left w-100 pb-3">collection</span>
                                        <span class="subtitle float-left w-100 py-20">Đẹp và đẹp lắm luôn ý heheheh</span>
                                        <span class="shop-now float-left w-100"><a href="#"
                                                                                   class="d-inline-block align-top float-none btn-primary">Shop Now</a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="ttbanner2 ttbanner col-sm-6 col-xs-6 right-to-left hb-animate-element">
                                <div class="ttbanner-img"><a href="#"><img src="img/banner/cms-02.jpg" alt="cms-02"
                                                                           height="600" width="630"></a></div>
                                <div class="ttbanner-inner d-inline-block align-top float-none">
                                    <div class="ttbanner-desc">
                                        <h2 class="ttbanner-heading text-uppercase">Men's</h2>
                                        <span class="title text-uppercase float-left w-100 pb-3">collection</span>
                                        <span class="subtitle float-left w-100 py-20">Đẹp kinh khủng khiếp</span>
                                        <span class="shop-now float-left w-100"><a href="#"
                                                                                   class="d-inline-block align-top float-none btn-primary">Shop Now</a></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="main">
                    <div id="hometab" class="home-tab my-40 my-sm-25 bottom-to-top hb-animate-element">
                        <div class="container">

                            <div class="row">
                                <div class="tt-title d-inline-block float-none w-100 text-center">Trending Products</div>
                                <div class="tabs">
                                    <ul class="nav nav-tabs justify-content-center">
                                        <li class="nav-item"><a class="nav-link active" data-toggle="tab"
                                                                href="#ttfeatured-main" id="featured-tab">
                                                <div class="tab-title">Featured</div>
                                            </a></li>
                                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#ttnew-main"
                                                                id="new-tab">
                                                <div class="tab-title" type="submit">Latest</div>
                                            </a></li>
                                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#ttbestseller-main"
                                                                id="bestseller-tab">
                                                <div class="tab-title">Bestseller</div>
                                            </a></li>
                                    </ul>
                                </div>
                                <div class="tab-content float-left w-100">
                                    <div class="tab-pane active float-left w-100" id="ttfeatured-main" role="tabpanel"
                                         aria-labelledby="featured-tab">
                                        <section id="ttfeatured" class="ttfeatured-products">
                                            <div class="ttfeatured-content products grid owl-carousel" id="owl1">
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.html">
                                                                <img src="img/products/01.jpg" alt="01" height="501"
                                                                     width="385" />
                                                                <img src="img/products/02.jpg" alt="02"
                                                                     class="second_image img-responsive" height="501"
                                                                     width="385" /> </a>
                                                            <ul class="countdown1 countdown">
                                                                <li><span class="days">00</span>
                                                                    <p class="days_text">Days</p>
                                                                </li>
                                                                <li><span class="hours">00</span>
                                                                    <p class="hours_text">Hours</p>
                                                                </li>
                                                                <li><span class="minutes">00</span>
                                                                    <p class="minutes_text">Minutes</p>
                                                                </li>
                                                                <li><span class="seconds">00</span>
                                                                    <p class="seconds_text">Seconds</p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.html">Merino Small Dress</a>
                                                                </h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button" class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"
                                                                            disabled="disabled"><i
                                                                            class="material-icons">shopping_cart</i><span>Add
                                                                            to cart</span></button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span></button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal" data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick
                                                                            View</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.html">
                                                                <img src="img/products/02.jpg" alt="02" height="501"
                                                                     width="385" />
                                                                <img src="img/products/03.jpg" alt="03"
                                                                     class="second_image img-responsive" height="501"
                                                                     width="385" /> </a>
                                                            <div class="flags">
                                                                <div class="sale">sale</div>
                                                                <div class="new">new</div>
                                                            </div>
                                                            <ul class="countdown countdown2">
                                                                <li><span class="days">00</span>
                                                                    <p class="days_text">Days</p>
                                                                </li>
                                                                <li><span class="hours">00</span>
                                                                    <p class="hours_text">Hours</p>
                                                                </li>
                                                                <li><span class="minutes">00</span>
                                                                    <p class="minutes_text">Minutes</p>
                                                                </li>
                                                                <li><span class="seconds">00</span>
                                                                    <p class="seconds_text">Seconds</p>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.html">Tropical Shirt Dress</a>
                                                                </h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button" class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"><i
                                                                            class="material-icons">shopping_cart</i><span>Add
                                                                            to cart</span></button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span></button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal" data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick
                                                                            View</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.html">
                                                                <img src="img/products/03.jpg" alt="03" height="501"
                                                                     width="385" />
                                                                <img src="img/products/04.jpg" alt="04"
                                                                     class="second_image img-responsive" height="501"
                                                                     width="385" /></a>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.html">Shoulder Embroidered
                                                                        Bodysuit</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button" class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"><i
                                                                            class="material-icons">shopping_cart</i><span>Add
                                                                            to cart</span></button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span></button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal" data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick
                                                                            View</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.html">
                                                                <img src="img/products/04.jpg" alt="04" height="501"
                                                                     width="385" />
                                                                <img src="img/products/05.jpg" alt="05"
                                                                     class="second_image img-responsive" height="501"
                                                                     width="385" /> </a>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.html">Checked Polo Collar
                                                                        T-shirt</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button" class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"><i
                                                                            class="material-icons">shopping_cart</i><span>Add
                                                                            to cart</span></button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span></button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal" data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick
                                                                            View</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.html">
                                                                <img src="img/products/05.jpg" alt="05" height="501"
                                                                     width="385" />
                                                                <img src="img/products/06.jpg" alt="06"
                                                                     class="second_image img-responsive" height="501"
                                                                     width="385" /></a>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.html">Crochet Detail
                                                                        Lightweight Top</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button" class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"><i
                                                                            class="material-icons">shopping_cart</i><span>Add
                                                                            to cart</span></button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span></button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal" data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick
                                                                            View</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.html">
                                                                <img src="img/products/06.jpg" alt="06" height="501"
                                                                     width="385" />
                                                                <img src="img/products/07.jpg" alt="07"
                                                                     class="second_image img-responsive" height="501"
                                                                     width="385" /> </a>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.html">Girls Floral Print
                                                                        Jumpsuit</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button" class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"><i
                                                                            class="material-icons">shopping_cart</i><span>Add
                                                                            to cart</span></button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span></button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal" data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick
                                                                            View</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.html">
                                                                <img src="img/products/07.jpg" alt="07" height="501"
                                                                     width="385" />
                                                                <img src="img/products/08.jpg" alt="08"
                                                                     class="second_image img-responsive" height="501"
                                                                     width="385" /> </a>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.html">Girls Striped Fit and
                                                                        Flare Dress</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button" class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"
                                                                            disabled="disabled"><i
                                                                            class="material-icons">shopping_cart</i><span>Add
                                                                            to cart</span></button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span></button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal" data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick
                                                                            View</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-layouts">
                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.html">
                                                                <img src="img/products/08.jpg" alt="03" height="501"
                                                                     width="385" />
                                                                <img src="img/products/09.jpg" alt="09"
                                                                     class="second_image img-responsive" height="501"
                                                                     width="385" /></a>
                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.html">Juventus Henley Neck
                                                                        Jersey</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">$100.00</div>
                                                                <div class="old-price">$150.00</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button" class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"><i
                                                                            class="material-icons">shopping_cart</i><span>Add
                                                                            to cart</span></button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span></button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal" data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick
                                                                            View</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </section>
                                    </div>
                                    <div class="tab-pane float-left w-100" id="ttnew-main" role="tabpanel"
                                         aria-labelledby="new-tab">
                                        <section id="ttnew" class="ttnew-products">
                                            <div class="ttnew-content products grid owl-carousel" id="owl2">
                                            <c:forEach items="${list}" var="o">
                                                <div class="product-layouts">

                                                    <div class="product-thumb">
                                                        <div class="image zoom">
                                                            <a href="product-details.html">
                                                                <img src="${o.image}" alt="01" height="501"
                                                                     width="385" />
                                                                <img src="${o.image}" alt="02"
                                                                     class="second_image img-responsive" height="501"
                                                                     width="385" /> </a>

                                                        </div>
                                                        <div class="thumb-description">
                                                            <div class="caption">
                                                                <h4 class="product-title text-capitalize"><a
                                                                        href="product-details.html">${o.name}</a></h4>
                                                            </div>
                                                            <div class="rating">
                                                                <div class="product-ratings d-inline-block align-middle">
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                    <span class="fa fa-stack"><i
                                                                            class="material-icons off">star</i></span>
                                                                </div>
                                                            </div>
                                                            <div class="price">
                                                                <div class="regular-price">${o.price}</div>
                                                            </div>
                                                            <div class="button-wrapper">
                                                                <div class="button-group text-center">
                                                                    <button type="button" class="btn btn-primary btn-cart"
                                                                            data-target="#cart-pop" data-toggle="modal"
                                                                            ><i
                                                                            class="material-icons">shopping_cart</i><span>Add
                                                                            to cart</span></button>
                                                                    <a href="wishlist.html"
                                                                       class="btn btn-primary btn-wishlist"><i
                                                                            class="material-icons">favorite</i><span>wishlist</span></a>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-compare"><i
                                                                            class="material-icons">equalizer</i><span>Compare</span></button>
                                                                    <button type="button"
                                                                            class="btn btn-primary btn-quickview"
                                                                            data-toggle="modal" data-target="#product_view"><i
                                                                            class="material-icons">visibility</i><span>Quick
                                                                            View</span></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </div>
                                            </c:forEach>
                                        </div>
                                    </section>
                                </div>
                                <div class="tab-pane float-left w-100" id="ttbestseller-main" role="tabpanel"
                                     aria-labelledby="bestseller-tab">
                                    <section id="ttbestseller" class="ttbestseller-products">
                                        <div class="ttbestseller-content products grid owl-carousel" id="owl3">
                                            <div class="product-layouts">
                                                <div class="product-thumb">
                                                    <div class="image zoom">
                                                        <a href="product-details.html">
                                                            <img src="img/products/01.jpg" alt="01" height="501"
                                                                 width="385" />
                                                            <img src="img/products/02.jpg" alt="02"
                                                                 class="second_image img-responsive" height="501"
                                                                 width="385" /> </a>
                                                        <ul class="countdown1 countdown">
                                                            <li><span class="days">00</span>
                                                                <p class="days_text">Days</p>
                                                            </li>
                                                            <li><span class="hours">00</span>
                                                                <p class="hours_text">Hours</p>
                                                            </li>
                                                            <li><span class="minutes">00</span>
                                                                <p class="minutes_text">Minutes</p>
                                                            </li>
                                                            <li><span class="seconds">00</span>
                                                                <p class="seconds_text">Seconds</p>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                    <div class="thumb-description">
                                                        <div class="caption">
                                                            <h4 class="product-title text-capitalize"><a
                                                                    href="product-details.html">Slim-fit Leaf-Print
                                                                    Linen Shirt</a></h4>
                                                        </div>

                                                        <div class="rating">
                                                            <div class="product-ratings d-inline-block align-middle">
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                            </div>
                                                        </div>
                                                        <div class="price">
                                                            <div class="regular-price">$100.00</div>
                                                            <div class="old-price">$150.00</div>
                                                        </div>
                                                        <div class="button-wrapper">
                                                            <div class="button-group text-center">
                                                                <button type="button" class="btn btn-primary btn-cart"
                                                                        data-toggle="modal" data-target="#product_view"
                                                                        disabled="disabled"><i
                                                                        class="material-icons">shopping_cart</i><span>Add
                                                                        to cart</span></button>
                                                                <a href="wishlist.html"
                                                                   class="btn btn-primary btn-wishlist"><i
                                                                        class="material-icons">favorite</i><span>wishlist</span></a>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-compare"><i
                                                                        class="material-icons">equalizer</i><span>Compare</span></button>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-quickview"
                                                                        data-toggle="modal" data-target="#product_view"><i
                                                                        class="material-icons">visibility</i><span>Quick
                                                                        View</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layouts">
                                                <div class="product-thumb">
                                                    <div class="image zoom">
                                                        <a href="product-details.html">
                                                            <img src="img/products/02.jpg" alt="02" height="501"
                                                                 width="385" />
                                                            <img src="img/products/03.jpg" alt="03"
                                                                 class="second_image img-responsive" height="501"
                                                                 width="385" /></a>
                                                    </div>
                                                    <div class="thumb-description">
                                                        <div class="caption">
                                                            <h4 class="product-title text-capitalize"><a
                                                                    href="product-details.html">Women Floral Print
                                                                    Lounge T-Shirt</a></h4>
                                                        </div>
                                                        <div class="rating">
                                                            <div class="product-ratings d-inline-block align-middle">
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                            </div>
                                                        </div>
                                                        <div class="price">
                                                            <div class="regular-price">$100.00</div>
                                                            <div class="old-price">$150.00</div>
                                                        </div>
                                                        <div class="button-wrapper">
                                                            <div class="button-group text-center">
                                                                <button type="button" class="btn btn-primary btn-cart"
                                                                        data-target="#cart-pop" data-toggle="modal"><i
                                                                        class="material-icons">shopping_cart</i><span>Add
                                                                        to cart</span></button>
                                                                <a href="wishlist.html"
                                                                   class="btn btn-primary btn-wishlist"><i
                                                                        class="material-icons">favorite</i><span>wishlist</span></a>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-compare"><i
                                                                        class="material-icons">equalizer</i><span>Compare</span></button>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-quickview"
                                                                        data-toggle="modal" data-target="#product_view"><i
                                                                        class="material-icons">visibility</i><span>Quick
                                                                        View</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layouts">
                                                <div class="product-thumb">
                                                    <div class="image zoom">
                                                        <a href="product-details.html">
                                                            <img src="img/products/03.jpg" alt="03" height="501"
                                                                 width="385" />
                                                            <img src="img/products/04.jpg" alt="04"
                                                                 class="second_image img-responsive" height="501"
                                                                 width="385" /></a>
                                                    </div>
                                                    <div class="thumb-description">
                                                        <div class="caption">
                                                            <h4 class="product-title text-capitalize"><a
                                                                    href="product-details.html">Women Striped Shirt
                                                                    Dress</a></h4>
                                                        </div>
                                                        <div class="rating">
                                                            <div class="product-ratings d-inline-block align-middle">
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                            </div>
                                                        </div>
                                                        <div class="price">
                                                            <div class="regular-price">$100.00</div>
                                                            <div class="old-price">$150.00</div>
                                                        </div>
                                                        <div class="button-wrapper">
                                                            <div class="button-group text-center">
                                                                <button type="button" class="btn btn-primary btn-cart"
                                                                        data-target="#cart-pop" data-toggle="modal"><i
                                                                        class="material-icons">shopping_cart</i><span>Add
                                                                        to cart</span></button>
                                                                <a href="wishlist.html"
                                                                   class="btn btn-primary btn-wishlist"><i
                                                                        class="material-icons">favorite</i><span>wishlist</span></a>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-compare"><i
                                                                        class="material-icons">equalizer</i><span>Compare</span></button>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-quickview"
                                                                        data-toggle="modal" data-target="#product_view"><i
                                                                        class="material-icons">visibility</i><span>Quick
                                                                        View</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layouts">
                                                <div class="product-thumb">
                                                    <div class="image zoom">
                                                        <a href="product-details.html">
                                                            <img src="img/products/04.jpg" alt="03" height="501"
                                                                 width="385" />
                                                            <img src="img/products/05.jpg" alt="05"
                                                                 class="second_image img-responsive" height="501"
                                                                 width="385" /></a>
                                                    </div>
                                                    <div class="thumb-description">
                                                        <div class="caption">
                                                            <h4 class="product-title text-capitalize"><a
                                                                    href="product-details.html">Women Solid Bodycon
                                                                    Dress</a></h4>
                                                        </div>
                                                        <div class="rating">
                                                            <div class="product-ratings d-inline-block align-middle">
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                            </div>
                                                        </div>
                                                        <div class="price">
                                                            <div class="regular-price">$100.00</div>
                                                            <div class="old-price">$150.00</div>
                                                        </div>
                                                        <div class="button-wrapper">
                                                            <div class="button-group text-center">
                                                                <button type="button" class="btn btn-primary btn-cart"
                                                                        data-target="#cart-pop" data-toggle="modal"><i
                                                                        class="material-icons">shopping_cart</i><span>Add
                                                                        to cart</span></button>
                                                                <a href="wishlist.html"
                                                                   class="btn btn-primary btn-wishlist"><i
                                                                        class="material-icons">favorite</i><span>wishlist</span></a>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-compare"><i
                                                                        class="material-icons">equalizer</i><span>Compare</span></button>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-quickview"
                                                                        data-toggle="modal" data-target="#product_view"><i
                                                                        class="material-icons">visibility</i><span>Quick
                                                                        View</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layouts">
                                                <div class="product-thumb">
                                                    <div class="image zoom">
                                                        <a href="product-details.html">
                                                            <img src="img/products/05.jpg" alt="03" height="501"
                                                                 width="385" />
                                                            <img src="img/products/06.jpg" alt="06"
                                                                 class="second_image img-responsive" height="501"
                                                                 width="385" /> </a>
                                                    </div>
                                                    <div class="thumb-description">
                                                        <div class="caption">
                                                            <h4 class="product-title text-capitalize"><a
                                                                    href="product-details.html">Printed V-Neck
                                                                    T-shirt</a></h4>
                                                        </div>
                                                        <div class="rating">
                                                            <div class="product-ratings d-inline-block align-middle">
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                            </div>
                                                        </div>
                                                        <div class="price">
                                                            <div class="regular-price">$100.00</div>
                                                            <div class="old-price">$150.00</div>
                                                        </div>
                                                        <div class="button-wrapper">
                                                            <div class="button-group text-center">
                                                                <button type="button" class="btn btn-primary btn-cart"
                                                                        data-target="#cart-pop" data-toggle="modal"><i
                                                                        class="material-icons">shopping_cart</i><span>Add
                                                                        to cart</span></button>
                                                                <a href="wishlist.html"
                                                                   class="btn btn-primary btn-wishlist"><i
                                                                        class="material-icons">favorite</i><span>wishlist</span></a>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-compare"><i
                                                                        class="material-icons">equalizer</i><span>Compare</span></button>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-quickview"
                                                                        data-toggle="modal" data-target="#product_view"><i
                                                                        class="material-icons">visibility</i><span>Quick
                                                                        View</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layouts">
                                                <div class="product-thumb">
                                                    <div class="image zoom">
                                                        <a href="product-details.html">
                                                            <img src="img/products/06.jpg" alt="03" height="501"
                                                                 width="385" /> </a>
                                                    </div>
                                                    <div class="thumb-description">
                                                        <div class="caption">
                                                            <h4 class="product-title text-capitalize"><a
                                                                    href="product-details.html">Solid Straight Kurta</a>
                                                            </h4>
                                                        </div>
                                                        <div class="rating">
                                                            <div class="product-ratings d-inline-block align-middle">
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                            </div>
                                                        </div>
                                                        <div class="price">
                                                            <div class="regular-price">$100.00</div>
                                                            <div class="old-price">$150.00</div>
                                                        </div>
                                                        <div class="button-wrapper">
                                                            <div class="button-group text-center">
                                                                <button type="button" class="btn btn-primary btn-cart"
                                                                        data-target="#cart-pop" data-toggle="modal"><i
                                                                        class="material-icons">shopping_cart</i><span>Add
                                                                        to cart</span></button>
                                                                <a href="wishlist.html"
                                                                   class="btn btn-primary btn-wishlist"><i
                                                                        class="material-icons">favorite</i><span>wishlist</span></a>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-compare"><i
                                                                        class="material-icons">equalizer</i><span>Compare</span></button>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-quickview"
                                                                        data-toggle="modal" data-target="#product_view"><i
                                                                        class="material-icons">visibility</i><span>Quick
                                                                        View</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layouts">
                                                <div class="product-thumb">
                                                    <div class="image zoom">
                                                        <a href="product-details.html">
                                                            <img src="img/products/07.jpg" alt="03" height="501"
                                                                 width="385" /> </a>
                                                    </div>
                                                    <div class="thumb-description">
                                                        <div class="caption">
                                                            <h4 class="product-title text-capitalize"><a
                                                                    href="product-details.html">Tropical Shirt Dress</a>
                                                            </h4>
                                                        </div>
                                                        <div class="rating">
                                                            <div class="product-ratings d-inline-block align-middle">
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                            </div>
                                                        </div>
                                                        <div class="price">
                                                            <div class="regular-price">$100.00</div>
                                                            <div class="old-price">$150.00</div>
                                                        </div>
                                                        <div class="button-wrapper">
                                                            <div class="button-group text-center">
                                                                <button type="button" class="btn btn-primary btn-cart"
                                                                        data-toggle="modal" data-target="#product_view"
                                                                        disabled="disabled"> <i
                                                                        class="material-icons">shopping_cart</i><span>Add
                                                                        to cart</span></button>
                                                                <a href="wishlist.html"
                                                                   class="btn btn-primary btn-wishlist"><i
                                                                        class="material-icons">favorite</i><span>wishlist</span></a>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-compare"><i
                                                                        class="material-icons">equalizer</i><span>Compare</span></button>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-quickview"
                                                                        data-toggle="modal" data-target="#product_view"><i
                                                                        class="material-icons">visibility</i><span>Quick
                                                                        View</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="product-layouts">
                                                <div class="product-thumb">
                                                    <div class="image zoom">
                                                        <a href="product-details.html">
                                                            <img src="img/products/08.jpg" alt="03" height="501"
                                                                 width="385" /></a>
                                                    </div>
                                                    <div class="thumb-description">
                                                        <div class="caption">
                                                            <h4 class="product-title text-capitalize"><a
                                                                    href="product-details.html">Shoulder Embroidered
                                                                    Bodysuit</a></h4>
                                                        </div>
                                                        <div class="rating">
                                                            <div class="product-ratings d-inline-block align-middle">
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                                <span class="fa fa-stack"><i
                                                                        class="material-icons off">star</i></span>
                                                            </div>
                                                        </div>
                                                        <div class="price">
                                                            <div class="regular-price">$100.00</div>
                                                            <div class="old-price">$150.00</div>
                                                        </div>
                                                        <div class="button-wrapper">
                                                            <div class="button-group text-center">
                                                                <button type="button" class="btn btn-primary btn-cart"
                                                                        data-target="#cart-pop" data-toggle="modal"><i
                                                                        class="material-icons">shopping_cart</i><span>Add
                                                                        to cart</span></button>
                                                                <a href="wishlist.html"
                                                                   class="btn btn-primary btn-wishlist"><i
                                                                        class="material-icons">favorite</i><span>wishlist</span></a>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-compare"><i
                                                                        class="material-icons">equalizer</i><span>Compare</span></button>
                                                                <button type="button"
                                                                        class="btn btn-primary btn-quickview"
                                                                        data-toggle="modal" data-target="#product_view"><i
                                                                        class="material-icons">visibility</i><span>Quick
                                                                        View</span></button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </section>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div id="ttcmstestimonial" class="my-40 my-sm-25 bottom-to-top hb-animate-element">
                    <div class="tttestimonial-content container">
                        <div class="tttestimonial-inner">
                            <div class="tttestimonial owl-carousel">
                                <div>
                                    <div class="testimonial-block">
                                        <div class="testimonial-image"><img alt="" src="img/banner/user1.jpg"
                                                                            height="120" width="120" /></div>
                                        <div class="testimonial-content">
                                            <div class="testimonial-desc">
                                                <p>Duis faucibus enim vitae nunc molestie, nec facilisis arcu pulvinar.
                                                    Nullam mattis arcu convallis, bibendum dui ac, laoreet est.Vivamus
                                                    interdum egastas rutrum. Quisque laoreet ante sed placerat
                                                    imperdiet.
                                                </p>
                                            </div>
                                            <div class="testimonial-user-title">
                                                <h4>John Duff</h4>
                                                <div class="user-designation">CEO</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <div class="testimonial-block">
                                        <div class="testimonial-image"><img alt="" src="img/banner/user2.jpg"
                                                                            height="120" width="120" /></div>
                                        <div class="testimonial-content">
                                            <div class="testimonial-desc">
                                                <p>Duis faucibus enim vitae nunc molestie, nec facilisis arcu pulvinar.
                                                    Nullam mattis arcu convallis, bibendum dui ac, laoreet est.Vivamus
                                                    interdum egastas rutrum. Quisque laoreet ante sed placerat
                                                    imperdiet.
                                                </p>
                                            </div>
                                            <div class="testimonial-user-title">
                                                <h4>Nazli dof</h4>
                                                <div class="user-designation">Marketing Manager</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <div class="testimonial-block">
                                        <div class="testimonial-image"><img alt="" src="img/banner/user3.jpg"
                                                                            height="120" width="120" /></div>
                                        <div class="testimonial-content">
                                            <div class="testimonial-desc">
                                                <p>Duis faucibus enim vitae nunc molestie, nec facilisis arcu pulvinar.
                                                    Nullam mattis arcu convallis, bibendum dui ac, laoreet est.Vivamus
                                                    interdum egastas rutrum. Quisque laoreet ante sed placerat
                                                    imperdiet.
                                                </p>
                                            </div>
                                            <div class="testimonial-user-title">
                                                <h4>Aly Vefa</h4>
                                                <div class="user-designation">Sales Exuctive</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                

                <div id="ttsmartblog" class="my-40 my-sm-25 bottom-to-top hb-animate-element">
                    <div class="tt-title d-inline-block float-none w-100 text-center text-capitalize">latest news</div>
                    <div class="container">
                        <div class="row">
                            <div class="smartblog-content owl-carousel">
                                <div class="ttblog">
                                    <div class="item">
                                        <div class="ttblog_image_holder">
                                            <a href="#">
                                                <img src="img/banner/blog-01.jpg" alt="blog-01" width="415"
                                                     height="269"> </a>
                                            <span class="blogicons">
                                                <a title="Click to view Full Image" href="img/banner/blog-01.jpg"
                                                   data-lightbox="example-set" class="icon zoom"><i
                                                        class="material-icons">search</i></a> </span>
                                        </div>
                                        <div class="blog-content-wrap float-left w-100">
                                            <div class="blog_inner">
                                                <h4 class="blog-title"><span>Share the Love</span></h4>
                                                <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                    adipiscing elit.</div>
                                                <div class="read-more text-capitalize">
                                                    <a title="Click to view Read More" class="readmore">read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ttblog">
                                    <div class="item">
                                        <div class="ttblog_image_holder">
                                            <a href="#">
                                                <img src="img/banner/blog-02.jpg" alt="blog-02" width="415"
                                                     height="269"> </a>
                                            <span class="blogicons">
                                                <a title="Click to view Full Image" href="img/banner/blog-02.jpg"
                                                   data-lightbox="example-set" class="icon zoom"><i
                                                        class="material-icons">search</i></a> </span>
                                        </div>
                                        <div class="blog-content-wrap float-left w-100">
                                            <div class="blog_inner">
                                                <h4 class="blog-title"><span>Upon of seasons earth</span></h4>
                                                <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                    adipiscing elit.</div>
                                                <div class="read-more text-capitalize">
                                                    <a title="Click to view Read More" class="readmore">read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ttblog">
                                    <div class="item">
                                        <div class="ttblog_image_holder">
                                            <a href="#">
                                                <img src="img/banner/blog-03.jpg" alt="blog-03" width="415"
                                                     height="269"> </a>
                                            <span class="blogicons">
                                                <a title="Click to view Full Image" href="img/banner/blog-03.jpg"
                                                   data-lightbox="example-set" class="icon zoom"><i
                                                        class="material-icons">search</i></a> </span>
                                        </div>
                                        <div class="blog-content-wrap float-left w-100">
                                            <div class="blog_inner">
                                                <h4 class="blog-title"><span>From Now we are certified web</span></h4>
                                                <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                    adipiscing elit.</div>
                                                <div class="read-more text-capitalize">
                                                    <a title="Click to view Read More" class="readmore">read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ttblog">
                                    <div class="item">
                                        <div class="ttblog_image_holder">
                                            <a href="#">
                                                <img src="img/banner/blog-04.jpg" alt="blog-04" width="415"
                                                     height="269"> </a>
                                            <span class="blogicons">
                                                <a title="Click to view Full Image" href="img/banner/blog-04.jpg"
                                                   data-lightbox="example-set" class="icon zoom"><i
                                                        class="material-icons">search</i></a> </span>
                                        </div>
                                        <div class="blog-content-wrap float-left w-100">
                                            <div class="blog_inner">
                                                <h4 class="blog-title"><span>Viderer voluptatum te eum</span></h4>
                                                <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                    adipiscing elit.</div>
                                                <div class="read-more text-capitalize">
                                                    <a title="Click to view Read More" class="readmore">read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ttblog">
                                    <div class="item">
                                        <div class="ttblog_image_holder">
                                            <a href="#">
                                                <img src="img/banner/blog-05.jpg" alt="blog-05" width="415"
                                                     height="269"> </a>
                                            <span class="blogicons">
                                                <a title="Click to view Full Image" href="img/banner/blog-05.jpg"
                                                   data-lightbox="example-set" class="icon zoom"><i
                                                        class="material-icons">search</i></a> </span>
                                        </div>
                                        <div class="blog-content-wrap float-left w-100">
                                            <div class="blog_inner">
                                                <h4 class="blog-title"><span>Share the Love</span></h4>
                                                <div class="blog-desc">Lorem ipsum dolor sit amet, consectetur
                                                    adipiscing elit.</div>
                                                <div class="read-more text-capitalize">
                                                    <a title="Click to view Read More" class="readmore">read more</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="ttbrandlogo" class="my-40 my-sm-25 bottom-to-top hb-animate-element">
                    <div class="container">
                        <div class="tt-brand owl-carousel">
                            <div class="item">
                                <a href="#"><img src="img/logos/brand-logo-01.png" alt="brand-logo-01" width="140"
                                                 height="100"></a>
                            </div>
                            <div class="item">
                                <a href="#"><img src="img/logos/brand-logo-02.png" alt="brand-logo-02" width="140"
                                                 height="100"></a>
                            </div>
                            <div class="item">
                                <a href="#"><img src="img/logos/brand-logo-03.png" alt="brand-logo-03" width="140"
                                                 height="100"></a>
                            </div>
                            <div class="item">
                                <a href="#"><img src="img/logos/brand-logo-04.png" alt="brand-logo-04" width="140"
                                                 height="100"></a>
                            </div>
                            <div class="item">
                                <a href="#"><img src="img/logos/brand-logo-05.png" alt="brand-logo-05" width="140"
                                                 height="100"></a>
                            </div>
                            <div class="item">
                                <a href="#"><img src="img/logos/brand-logo-06.png" alt="brand-logo-06" width="140"
                                                 height="100"></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <jsp:include page="component/footer.jsp"></jsp:include>

        

        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->


    </body>

</html>
