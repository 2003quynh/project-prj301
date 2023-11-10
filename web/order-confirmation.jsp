<%-- 
    Document   : order-information
    Created on : Nov 7, 2023, 11:36:02 AM
    Author     : user
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="component/header.jsp"></jsp:include>
    <nav aria-label="breadcrumb" class="w-100 float-left">
        <ol class="breadcrumb parallax justify-content-center" data-source-url="img/banner/parallax.jpg" style="background-image: url(&quot;img/banner/parallax.jpg&quot;); background-position: 50% 0.809717%;">
            <li class="breadcrumb-item active"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">order-confirmation</li>

        </ol>
    </nav>
    <div class="order-inner float-left w-100">     
        <div class="container">
            <div class="row">
                <div id="order-confirmation" class="card float-left w-100 mb-10">
                    <div class="card-block p-20">
                        <h3 class="card-title text-success">Thanh toán thành công</h3>
                        <p>An email has been sent to your mail address admin7890@gmail.com.</p>
                    </div>
                </div>

                <div id="order-itens" class="card float-left w-100 mb-10">
                    <div class="card-block p-20">
                        <h3 class="card-title">Sản phẩm</h3>
                        <div class="order-confirmation-table float-left w-100">
                        <c:forEach items="${listCart}" var="o" varStatus="loop">
                            <div class="order-line float-left w-100">
                                <div class="row">
                                    <div class="col-sm-1 col-xs-3 float-left">
                                        <img src="${o.image}" alt="">
                                    </div>
                                    <div class="col-sm-3 col-xs-9 details float-left">
                                        <span>${o.name}</span>
                                    </div>
                                    <div class="col-sm-8 col-xs-12 qty float-left d-flex">
                                        <div class="col-xs-5 col-sm-5 text-sm-right text-xs-left">${o.price}</div>
                                        <div class="col-xs-2 col-sm-2">${o.quantity}</div>
                                        <div class="col-xs-5 col-sm-5 text-sm-right bold">${o.price*o.quantity}</div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>


                        <hr class="float-left w-100">
                        <table class="float-left w-100 mb-30">
                            <tbody><tr class="mb-10">
                                    <td>Thành tiền</td>
                                    <td class="text-right">${subtotal}</td>
                                </tr>
                                <tr class="mb-10">
                                    <td>Phí ship</td>
                                    <td class="text-right">$7.00</td>
                                </tr>
                                <tr class="font-weight-bold">
                                    <td><span class="text-uppercase">Tổng thanh toán</span></td>
                                    <td class="text-right">${subtotal}</td>
                                </tr>
                            </tbody></table>
                        <div id="order-details" class="float-left w-100">
                            <h3 class="h3 card-title">Chi tiết thanh toán:</h3>
                            <ul>
                                <li>Mã đơn: ZSMQIPYEH</li>
                                <li>Phương thức thanh toán: Bank transfer</li>
                                <li>
                                    Thông tin shipping: 
                                    <em>Pick up in-store</em>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
            <div id="content-hook_payment_return" class="card definition-list float-left w-100">
                <div class="card-block p-20">
                    <div class="row">
                        <div class="col-md-12">

                            <p>
                                Your order on Demo Store is complete.<br>
                                Please send us a bank wire with:
                            </p>


                            <div class="order-content-main">
                                <div class="order-content mb-10">
                                    <div>Amount</div>
                                    <div>$107.00</div>
                                </div>
                                <div class="order-content mb-10">
                                    <div>Name of account owner</div>
                                    <div>___________</div>
                                </div>
                                <div class="order-content mb-10">
                                    <div>Địa chỉ</div>
                                    <div>___________</div>
                                </div>
                                <div class="order-content mb-10">
                                    <div>SĐT</div>
                                    <div>___________</div>
                                </div>
                                <div class="order-content mb-10">
                                    <div>Bank name</div>
                                    <div>___________</div>
                                </div>
                            </div>
                            <a href="checkout" class="btn btn-primary btn-lg btn-primary">Đặt hàng</a>
                            <a href="checkout" class="btn btn-primary btn-lg btn-primary">Thay đổi thông tin nhận hàng</a>


                            <p>
                                Please specify your order reference ZSMQIPYEH in the bankwire description.<br>
                                We've also sent you this information by e-mail.
                            </p>
                            <strong>Your order will be sent as soon as we receive payment.</strong>
                            <p>
                                If you have questions, comments or concerns, please contact our <strong><a href="contact-us.html">expert customer support team</a></strong>
                            </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="component/footer.jsp"></jsp:include>

