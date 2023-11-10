<%-- 
    Document   : cart_page
    Created on : Nov 2, 2023, 7:24:46 PM
    Author     : user
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="component/header.jsp"></jsp:include>

    <nav aria-label="breadcrumb" class="w-100 float-left">
        <ol class="breadcrumb parallax justify-content-center" data-source-url="img/banner/parallax.jpg" style="background-image: url(&quot;img/banner/parallax.jpg&quot;); background-position: 50% 0.809717%;">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">cart</li>

        </ol>
    </nav>

    <div class="cart-area table-area pt-110 pb-95 float-left w-100">
        <div class="p-5" >
            <div class="row">

                <div class="col-lg-9 col-md-12 col-sm-12 float-left cart-wrapper">
                    <form action="cart" method="post">
                        <!--<input type="checkbox" name = "choose"> <span style="margin-left: 10px; font-size: 20px">Chọn tất cả</span>-->
                        <div class="table-responsive">
                            <table class="table product-table text-center">
                                <thead>
                                    <tr>
                                        <!--<th class=" text-capitalize" width="10"></th>-->
                                        <th class="table-remove text-capitalize">Xóa</th>
                                        <th class="table-image text-capitalize">Sản phẩm</th>
                                        <th class="table-p-name text-capitalize" width="200">Tên</th>
                                        <th class="table-p-name text-capitalize">Phân loại</th>
                                        <th class="table-p-price text-capitalize">Đơn giá</th>
                                        <th class="table-p-qty text-capitalize">Số lượng</th>
                                        <th class="table-total text-capitalize">Thành tiền</th>
                                    </tr>
                                </thead>

                                <tbody>

                                <c:forEach items="${listCart}" var="o" varStatus="loop">
                                    <tr>
                                       
                                          <td class="table-remove ">
                                            <a href="delete-productCart?cartID=${o.cartID}"><i class="material-icons">delete</i></a>

                                        </td>
                                        <!--<td class="table-remove"><button><i class="material-icons">delete</i></button></td>-->
                                        <td class="table-image"><a href=product-detail?productID=${o.product_id}><img src="${o.image}" alt=""></a></td>
                                        <td class="table-p-name text-capitalize"><a href=product-detail?productID=${o.product_id}>${o.name}</a></td>
                                        <td class="table-p-name text-capitalize">${o.size}, ${o.color}</td>
                                        <td class="table-p-price productSubPrice"><p>${o.price}</p></td>
                                        <td class="table-p-qty"><input class="productQty" value="${o.quantity}" name="cart-qty-${loop.index}" type="number"></td>
                                        <td class="table-total productPrice" ><p>${o.price*o.quantity}</p></td>
                                    </tr>
                                </c:forEach>


                            </tbody>
                        </table>
                    </div>


                    <div class="table-bottom-wrapper">

                        <div class="table-update d-flex d-xs-block d-lg-flex d-sm-flex justify-content-end">
                            <button  class="btn-primary btn" name="button" type="submit" value="save">Lưu</button>
                        </div>
                    </div>
                </form>

            </div>

            <div class="table-total-wrapper d-flex justify-content-end pt-60 col-md-12 col-sm-12 col-lg-3 float-left  align-items-center">
                <div class="table-total-content">
                    <h2 class="pb-20">Hóa đơn</h2>
                    <div class="table-total-amount">
                        <div class="single-total-content d-flex justify-content-between float-left w-100">
                            <strong>Tổng thanh toán</strong>
                            <span class="c-total-price" id="subtotal">${subtotal}</span>
                        </div>
                        <div class="single-total-content d-flex justify-content-between float-left w-100">
                            <strong>Shipping</strong>
                            <span class="c-total-price">0.00</span>
                        </div>
                        <div class="single-total-content d-flex justify-content-end float-left w-100">
                            <a href="#">Calculate shipping</a>
                        </div>
                        <div class="single-total-content tt-total d-flex justify-content-between float-left w-100">
                            <strong>Total</strong>
                            <span class="c-total-price" id="total">${subtotal}</span>
                        </div>

                        <a href="checkout" class="btn btn-primary float-left w-100 text-center">Mua hàng</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<script>
    const productSubPriceInputs = Array.from(document.querySelectorAll(".productSubPrice"));
    const productQtyInputs = Array.from(document.querySelectorAll(".productQty"));
    const productPriceInputs = Array.from(document.querySelectorAll(".productPrice"));

    const subtotal = document.querySelector("#subtotal");
    const total = document.querySelector("#total");
    productQtyInputs.forEach((input, index) => {
        input.onchange = () => {
            productPriceInputs[index].innerHTML = parseFloat(productSubPriceInputs[index].innerText) * parseFloat(input.value);
            subtotal.innerText = calcTotal();
            total.innerText = calcTotal();
        }
    })

    const calcTotal = () => {
        return productPriceInputs.reduce((total, item) => {
            return total + parseFloat(item.innerText);
        }, 0)
    }



</script>




<jsp:include page="component/footer.jsp"></jsp:include>
