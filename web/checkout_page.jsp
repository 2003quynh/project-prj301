<%-- 
    Document   : checkout_page
    Created on : Nov 7, 2023, 11:07:17 AM
    Author     : user
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="component/header.jsp"></jsp:include>
    <nav aria-label="breadcrumb" class="w-100 float-left">
        <ol class="breadcrumb parallax justify-content-center" data-source-url="img/banner/parallax.jpg" style="background-image: url(&quot;img/banner/parallax.jpg&quot;); background-position: 50% 0.809717%;">
            <li class="breadcrumb-item active"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">checkout</li>

        </ol>
    </nav>
    <form action="checkout" method="post">
        <div class="checkout-inner float-left w-100">
            <div class="container">
                <div class="row">
                    <div class="cart-block-left col-md-4 order-md-2 mb-4">
                        <h4 class="d-flex justify-content-between align-items-center mb-3">
                            <span>Hóa đơn của bạn</span>
                        </h4>
                        <div class="list-group mb-3">
                            <div class="list-group-item d-flex justify-content-between lh-condensed">
                                <div>
                                    <h6 class="my-0">Tổng thanh toán</h6>
                                </div>
                                <span class="text-muted" >${subtotal}</span>
                        </div>
                        <div class="list-group-item d-flex justify-content-between lh-condensed">
                            <div>
                                <h6 class="my-0">Tiền ship</h6>
                            </div>
                            <span class="text-muted">30000</span>
                        </div>
                        <div class="list-group-item d-flex justify-content-between">
                            <strong>Tổng</strong>
                            <strong>${subtotal+30000}</strong>
                        </div>

                        <button type="" class="btn btn-primary btn-lg btn-primary"  value="order">
                            <a href="order-confirmation" style="color: white">Xem lại hóa đơn</a>
                        </button>
                        <button type="submit" class="btn btn-primary btn-lg btn-primary" value="pay">
                            Thanh toán
                        </button>
                        </ul>
                    </div>
                </div>
                <div class="cart-block-right col-md-8 order-md-1">
                    <h4 class="mb-3">Billing address</h4>

                    <div class="row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName" >Tên <span class="required">*</span></label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="" value="${billingAdress.name}" required="">
                            <div class="invalid-feedback">
                                Valid first name is required.
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="username">Tên đăng nhập <span class="required">*</span></label>
                        <div class="input-group">

                            <input type="text" class="form-control" id="username" name="username" placeholder="Username" value="${p.username}" required="" disabled="">
                            <div class="invalid-feedback" style="width: 100%;">
                                Your username is required.
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="sđt">SĐT <span class="text-muted">(Optional)</span></label>
                        <input type="text" class="form-control" id="phone" name="phone" placeholder="0123456789" value="${billingAdress.phone}">
                        <div class="invalid-feedback">
                            Please enter a valid phone for shipping updates.
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-5 mb-3">
                            <label for="country">Tỉnh <span class="required">*</span></label>
                            <input type="text" class="form-control" id="province" name="province" placeholder="Hưng Yên" value="${address[3]}">

                            <div class="invalid-feedback">
                                Please select a valid country.
                            </div>
                        </div>
                        <div class="col-md-4 mb-3">
                            <label for="state">Huyện <span class="required">*</span></label>
                            <input type="text" class="form-control" id="district" name="district" placeholder="Yên Mỹ" value="${address[2]}">

                            <div class="invalid-feedback">
                                Please provide a valid state.
                            </div>
                        </div>
                        <div class="col-md-3 mb-3">
                            <label for="zip">Xã <span class="required">*</span></label>
                            <input type="text" class="form-control" id="wards" placeholder="" required="" name="wards" value="${address[1]}">
                            <div class="invalid-feedback">
                                Zip code required.
                            </div>
                        </div>
                    </div>

                    <div class="mb-3">
                        <label for="address">Địa chỉ cụ thể<span class="required">*</span> </label>
                        <input type="text" class="form-control" id="address" placeholder="1234 Main St" required="" value="${address[0]}" name="addressDetail">
                        <div class="invalid-feedback">
                            Please enter your shipping address.
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="">Note<span class="required">*</span> </label>
                        <input type="text" class="form-control" id="note" name="note" placeholder="" required="">

                    </div>
                </div>
            </div>
        </div>
    </div>

</form>


<jsp:include page="component/footer.jsp"></jsp:include>
