<%-- 
    Document   : product
    Created on : Oct 25, 2023, 4:13:21 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="component/header.jsp"></jsp:include>
    <nav aria-label="breadcrumb" class="w-100 float-left">
        <ol class="breadcrumb parallax justify-content-center" data-source-url="img/banner/parallax.jpg" style="background-image: url(&quot;img/banner/parallax.jpg&quot;); background-position: 50% 0.809717%;">
            <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Sản phẩm</li>
        </ol>
    </nav>
    <div class="main-content w-100 float-left"> 
        <div class="container">
            <div class="row">
                <div class="content-wrapper col-xl-9 col-lg-9 order-lg-2">
                    <div class="block-category mb-30 w-100 float-left">
                        <div class="category-cover">
                            <img src="img/banner/category-banner.png" alt="category-banner"/>
                        </div>
                        <div class="title-category text-capitalize">women</div>
                        <div class="category-description">Phụ nữ có 3 điều không thể quên là xinh đẹp, kiếm tiền và kiến thức. Tuổi tác không phải là rào cản lớn nhất quan trọng là bạn có đủ quyết tâm để vượt qua nó hay không. </div>
                    </div>
                    <header class="product-grid-header d-flex d-xs-block d-sm-flex d-lg-flex w-100 float-left">
                        <div class="hidden-sm-down total-products d-flex d-xs-block d-lg-flex col-md-3 col-sm-3 col-xs-12 align-items-center">
                            <div class="row">
                                <div class="nav" role="tablist">
                                    <a class="grid active" href="#grid" data-toggle="tab" role="tab" aria-selected="true" aria-controls="grid"><i class="material-icons align-middle">grid_on</i></a>
                                    <a class="list" href="#list" data-toggle="tab" role="tab" aria-selected="false" aria-controls="list"><i class="material-icons align-middle">format_list_bulleted</i></a>
                                    <a class="sort" href="#sort-view" data-toggle="tab" role="tab" aria-selected="false" aria-controls="sort-view"><i class="material-icons align-middle">reorder</i></a>
                                </div>
                            </div> 
                        </div>
                        <div class="shop-results-wrapper d-flex d-sm-flex d-xs-block d-lg-flex justify-content-end col-md-9 col-sm-9 col-xs-12">

                            <div class="shop-results d-flex align-items-center"><span>Sort By</span>
                                <div class="shop-select">
                                    <select name="sort" id="sort">
                                        <option value="position">Default sorting</option>
                                        <option value="p-name">Sort Popularity</option>
                                        <option value="p-price">Sort Price</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </header>

                    <div class="tab-content text-center products w-100 float-left">
                        <div class="tab-pane grid fade active" id="grid" role="tabpanel">
                            <div class="row">
                                <form action="cart" method="post" id="form">
                                    <div id="content">
                                    <c:forEach items="${list}" var="o">
                                        <div class="product-layouts col-lg-3 col-md-3 col-sm-6 col-xs-6">
                                            <div class="product-thumb">
                                                <div class="image zoom">
                                                    <a href="product-detail?productID=${o.id}">
                                                        <img src="${o.image}" alt="01"/>
                                                        <img src="${o.image}" alt="02" class="second_image img-responsive"/>							</a>

                                                </div>
                                                <div class="thumb-description">
                                                    <div class="caption">
                                                        <h4 class="product-title text-capitalize"><a href="product-detail?productID=${o.id}">${o.name}</a></h4>
                                                    </div>
                                                    <div class="rating">
                                                        <div class="product-ratings d-inline-block align-middle">
                                                            <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                            <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                            <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                            <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                            <span class="fa fa-stack"><i class="material-icons off">star</i></span>							</div>
                                                    </div>

                                                    <div class="price">
                                                        <div class="regular-price">${o.price}</div>

                                                    </div>
                                                    <div class="button-wrapper">
                                                        <div class="button-group text-center">
                                                            <button type="submit" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal" ><i class="material-icons">shopping_cart</i><span>Out of stock</span></button>
                                                            <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
                                                            <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
                                                            <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                            </form>

                        </div>
                    </div>

                    <div class="tab-pane fade list text-left" id="list" role="tabpanel">
                        <form action="cart" method="post">
                            <c:forEach items="${list}" var="o">
                                <div class="product-layouts">

                                    <div class="product-thumb row">
                                        <div class="image zoom col-xs-12 col-sm-5 col-md-4">
                                            <input type="hidden" value="${o.id}" name="productID"/>
                                            <a href="product-detail?productID=${o.id}" class="d-block position-relative">
                                                <img src="${o.image}" alt="01"/>
                                                <img src="${o.image}" alt="02" class="second_image img-responsive"/>											
                                            </a>

                                        </div>
                                        <div class="thumb-description col-xs-12 col-sm-7 col-md-8 position-static text-left">
                                            <div class="caption">
                                                <h4 class="product-title text-capitalize"><a href="product-detail?productID=${o.id}">${o.name}</a></h4>
                                            </div>
                                            <div class="rating mb-10">
                                                <div class="product-ratings d-inline-block align-middle">
                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                    <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                    <span class="fa fa-stack"><i class="material-icons off">star</i></span>											</div>
                                            </div>

                                            <div class="description"> ${o.description_summary}</div>
                                            <div class="price">
                                                <div class="regular-price">${o.price}</div>                                        
                                            </div>

                                            <div class="button-wrapper">
                                                <div class="button-group text-center">
                                                    <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal"><i class="material-icons">shopping_cart</i><span>out of stock</span></button>
                                                    <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
                                                    <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
                                                    <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>                        
                            </c:forEach>
                        </form>


                    </div>

                    <div class="tab-pane fade sort text-left" id="sort-view" role="tabpanel">

                        <c:forEach items="${list}" var="o">
                            <div class="product-layouts">
                                <div class="product-thumb row">
                                    <div class="image zoom col-xs-12 col-sm-3 col-md-2">
                                        <input type="hidden" value="${o.id}" name="productID"/>
                                        <a href="product-detail?productID=${o.id}" class="d-block position-relative">
                                            <img src="${o.image}" alt="01"/>
                                            <img src="${o.image}" alt="02" class="second_image img-responsive"/>											</a>																						</div>
                                    <div class="thumb-description col-xs-12 col-sm-9 col-md-10 position-static text-left">
                                        <div class="sort-title col-md-5 col-sm-7 float-left">
                                            <div class="caption">
                                                <h4 class="product-title text-capitalize"><a href="product-detail?productID=${o.id}">${o.name}</a></h4>
                                            </div>

                                            <div class="rating mb-10">
                                                <div class="product-ratings d-inline-block align-middle">
                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                    <span class="fa fa-stack"><i class="material-icons">star</i></span>
                                                    <span class="fa fa-stack"><i class="material-icons off">star</i></span>
                                                    <span class="fa fa-stack"><i class="material-icons off">star</i></span>											</div>
                                            </div>
                                            <div class="description mb-10">${o.description_summary}</div>

                                        </div>
                                        <div class="price-main col-md-3 col-sm-5 float-left text-center text-sm-center text-xs-left">
                                            <div class="price">
                                                <div class="regular-price">${o.price}</div>

                                            </div>
                                        </div>
                                        <div class="button-wrapper col-md-4 col-sm-5 float-left text-center text-md-center text-sm-center text-xs-left">
                                            <div class="button-group text-center">
                                                <button type="button" class="btn btn-primary btn-cart" data-target="#cart-pop" data-toggle="modal" > <a href="product-detail?productID=${o.id}" class="d-block position-relative"><i class="material-icons">shopping_cart</i><span>out of stock</span></button>
                                                <a href="wishlist.html" class="btn btn-primary btn-wishlist"><i class="material-icons">favorite</i><span>wishlist</span></a>
                                                <button type="button" class="btn btn-primary btn-compare"><i class="material-icons">equalizer</i><span>Compare</span></button>
                                                <button type="button" class="btn btn-primary btn-quickview"  data-toggle="modal" data-target="#product_view"><i class="material-icons">visibility</i><span>Quick View</span></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>



                    </div>
                </div>
                <div class="pagination-wrapper float-left w-100">
                    <!--                    <p>Showing 1 to 9 of </p>-->
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </li>

                            <c:forEach begin="1" end="${endPage}" var="i">
                                <li class="page-item">
                                    <a class="page-link"  href="product?index=${i}&categoryID=${categoryID}">${i}</a>
                                </li>
                            </c:forEach>

                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="left-column sidebar col-xl-3 col-lg-3 order-lg-1">
                <div class="sidebar-filter left-sidebar w-100 float-left">
                    <div class="title">
                        <a data-toggle="collapse" href="#sidebar-main" aria-expanded="false" aria-controls="sidebar-main" class="d-lg-none block-toggler">Product Categories</a>					</div>
                    <div id="sidebar-main" class="sidebar-main collapse">

                        <div class="sidebar-block ">
                            <div class="sidebar__item" action="product?index=1&categoryID=${categoryID}">
                                <h4>Tìm kiếm</h4>
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for..." name='search' onchange='searchEvent()'>
                                    <span class="input-group-btn">
                                        <button class="btn btn-dark" type="button" >Search</button>
                                    </span>
                                </div>

                            </div>

                        </div>

                        <div class="sidebar-block categories">
                            <h3 class="widget-title"><a data-toggle="collapse" href="#categoriesMenu" role="button" aria-expanded="true" aria-controls="categoriesMenu">Sản phẩm</a></h3>
                            <div id="categoriesMenu" class="expand-lg collapse show">
                                <div class="nav nav-pills flex-column mt-4">
                                    <a href="product?index=1&categoryID=2" class="nav-link d-flex justify-content-between mb-2 "><span>Quần áo</span><span class="sidebar-badge">${countClothes}</span></a>

                                    <a href="product?index=1&categoryID=1" class="nav-link d-flex justify-content-between mb-2 "><span>Váy</span><span class="sidebar-badge">${countDresses}</span></a>

                                    <a href="product?index=1&categoryID=3" class="nav-link d-flex justify-content-between mb-2 active"><span>Giày dép</span><span class="sidebar-badge">${countShoes}</span></a>

                                    <a href="product?index=1&categoryID=4" class="nav-link d-flex justify-content-between mb-2 "><span>Phụ kiện</span><span class="sidebar-badge">${countAccessories}</span></a>

                                </div>
                            </div>
                        </div>
                        <div class="sidebar-block price">
                            <h3 class="widget-title"><a data-toggle="collapse" href="#price" role="button" aria-expanded="true" aria-controls="price">Giá</a></h3>
                            <div id="price" class="collapse show">
                                <div class="price-inner">
                                    <label for="amount">Price range:</label>
                                    <input type="text" id="amount" readonly style="border:0; font-weight:bold; background:none;">
                                    <div id="slider-range"></div>
                                </div>
                            </div>

                        </div>
                        <div class="sidebar-block color">
                            <h3 class="widget-title"><a data-toggle="collapse" href="#color" role="button" aria-expanded="true" aria-controls="color">Màu sắc</a></h3>
                            <div id="color" class="sidebar-widget-option-wrapper collapse show">
                                <div class="color-inner">
                                    <div class="sidebar-widget-option">
                                        <a href="#" style="background-color: #000000;"></a>
                                        Đen <span>(4)</span>
                                    </div>
                                    <div class="sidebar-widget-option">
                                        <a href="#" style="background-color: #11426b;"></a>
                                        Xanh dương <span>(3)</span>
                                    </div>
                                    <div class="sidebar-widget-option">
                                        <a href="#" style="background-color: #7d5a3c;"></a>
                                        Nâu <span>(3)</span>
                                    </div>
                                    <div class="sidebar-widget-option">
                                        <a href="#" style="background-color: #ffffff;"></a>
                                        Trắng <span>(3)</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar-block size">
                            <h3 class="widget-title"><a data-toggle="collapse" href="#size" role="button" aria-expanded="true" aria-controls="size">Size</a></h3>
                            <div id="size" class="sidebar-widget-option-wrapper collapse show">
                                <div class="size-inner">
                                    <div class="sidebar-widget-option">
                                        <input type="checkbox" id="size-1">
                                        <label for="size-1">L <span>(4)</span></label>
                                    </div>
                                    <div class="sidebar-widget-option">
                                        <input type="checkbox" id="size-2">
                                        <label for="size-2">XS <span>(3)</span></label>
                                    </div>
                                    <div class="sidebar-widget-option">
                                        <input type="checkbox" id="size-3">
                                        <label for="size-3">S <span>(3)</span></label>
                                    </div>
                                    <div class="sidebar-widget-option">
                                        <input type="checkbox" id="size-4">
                                        <label for="size-4">Xl <span>(3)</span></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar-left-banner left-sidebar w-100 float-left">
                    <div class="ttleftbanner">
                        <a href="#">
                            <img src="img/banner/left-banner.jpg" alt="left-banner"/>
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
                                            function searchEvent() {
                                                const form = document.getElementById("form");
                                                let formData = new FormData(form);
                                                $.ajax({
                                                    url: '/project/search',
                                                    type: 'GET',
                                                    processData: false,
                                                    contentType: false,
                                                    enctype : "multipart/form-data",
                                                    cache: false,
                                                    data: formData,
                                                    // Các thông số khác...
                                                    success: function (response) {
                                                        // Xử lý phản hồi
                                                        console.log(response);
                                                        document.querySelector("#content").innerHTML=response;
//                                                        var productContent = document.querySelector('#productContent');
//                                                        productContent.innerHTML = response.data;
//                                                        $('.set-bg').each(function () {
//                                                            var bg = $(this).data('setbg');
//                                                            $(this).css('background-image', 'url(' + bg + ')');
//                                                        });
//                                                        document.querySelector("#numberOfPage").value = parseInt(response.page);
//                                                        document.getElementById('current-page-top').value = parseInt(response.noPage);
//                                                        document.getElementById('current-page-bottom').value = parseInt(response.noPage);
//                                                        document.getElementById('total-pages-top').innerHTML = '/' + parseInt(response.page);
//                                                        document.getElementById('total-pages-bottom').innerHTML = '/' + parseInt(response.page);
                                                    },
                                                    error: function (xhr, status, error) {
                                                        // Handle error
                                                        console.error(xhr.responseText);
                                                    }
                                                });
                                            }
</script>

<jsp:include page="component/footer.jsp"></jsp:include>


