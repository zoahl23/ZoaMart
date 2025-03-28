<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Thanh toán</title>
                    <link rel="shortcut icon" type="image/x-icon" href="/images2/fav.png">
                    <link rel="stylesheet preload" href="/css2/plugins.css" as="style">
                    <link rel="stylesheet preload" href="/css2/style.css" as="style">
                    <link rel="stylesheet preload" href="/css2/custom.css" as="style">
                </head>

                <body>
                    <!-- rts header area start -->
                    <!-- header style two start -->
                    <jsp:include page="../layout/header.jsp" />
                    <!-- header style two end -->
                    <!-- rts header area end -->

                    <div class="rts-navigation-area-breadcrumb" style="margin-top: 114px">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="navigator-breadcrumb-wrapper">
                                        <a href="/">Trang chủ</a>
                                        <i class="fa-regular fa-chevron-right"></i>
                                        <a class="#" href="/cart">Giỏ hàng</a>
                                        <i class="fa-regular fa-chevron-right"></i>
                                        <a class="current" href="/checkout">Thanh toán</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="section-seperator">
                        <div class="container">
                            <hr class="section-seperator">
                        </div>
                    </div>



                    <c:choose>
                        <c:when test="${not empty cartDetails}">
                            <div class="checkout-area rts-section-gap">
                                <div class="container">
                                    <div class="row">
                                        <div
                                            class="col-lg-8 pr--40 pr_md--5 pr_sm--5 order-2 order-xl-1 order-lg-2 order-md-2 order-sm-2 mt_md--30 mt_sm--30">

                                            <div class="rts-billing-details-area">
                                                <h3 class="title">Thông tin người nhận</h3>
                                                <form:form id="placeOrderForm" action="/place-order" method="post"
                                                    modelAttribute="cart">
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />
                                                    <div class="single-input">
                                                        <label for="fullName">Tên người nhận <font color="red">*
                                                            </font></label>
                                                        <input id="fullName" name="receiverName" type="text"
                                                            value="${sessionScope.fullName}" required>
                                                    </div>
                                                    <div class="single-input">
                                                        <label for="street">Địa chỉ người nhận <font color="red">*
                                                            </font></label>
                                                        <input id="street" name="receiverAddress" type="text"
                                                            value="${sessionScope.address}" required>
                                                    </div>
                                                    <div class="single-input">
                                                        <label for="phone">Số điện thoại <font color="red">*</font>
                                                        </label>
                                                        <input id="phone" name="receiverPhone" type="text"
                                                            value="${sessionScope.phone}" required>
                                                    </div>
                                                    <div class="single-input">
                                                        <label for="ordernotes">Order Notes*</label>
                                                        <textarea id="ordernotes" name="receiverNote"></textarea>
                                                    </div>
                                                    <div class="single-input" style="display: none;">
                                                        <input id="phone" name="receiverTotalPrice" type="text"
                                                            value="${totalPrice}" required>
                                                    </div>
                                                </form:form>
                                                <a href="/cart" class="rts-btn btn-primary">Quay lại giỏ hàng</a>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 order-1 order-xl-2 order-lg-1 order-md-1 order-sm-1">
                                            <h3 class="title-checkout">Thông tin đơn hàng</h3>
                                            <div class="right-card-sidebar-checkout">
                                                <div class="top-wrapper">
                                                    <div class="product">
                                                        Danh sách sản phẩm
                                                    </div>
                                                    <div class="price">
                                                        Giá
                                                    </div>
                                                </div>
                                                <c:forEach var="cartDetail" items="${cartDetails}">
                                                    <div class="single-shop-list">
                                                        <div class="left-area">
                                                            <a href="/product/${cartDetail.product.id}"
                                                                class="thumbnail">
                                                                <img src="/img/products/${cartDetail.product.imageUrl}"
                                                                    alt="${cartDetail.product.name}"
                                                                    style="width: 78px; height: 78px; object-fit: contain;">
                                                            </a>
                                                            <a href="/product/${cartDetail.product.id}" class="title">
                                                                ${cartDetail.product.name}
                                                            </a>
                                                        </div>
                                                        <span class="price">
                                                            ${cartDetail.quantity} x
                                                            <fmt:formatNumber value="${cartDetail.price}" type="number"
                                                                groupingUsed="true" /> đ
                                                        </span>
                                                    </div>
                                                </c:forEach>
                                                <div class="single-shop-list">
                                                    <div class="left-area">
                                                        <span>Tạm tính</span>
                                                    </div>
                                                    <span class="price">
                                                        <fmt:formatNumber value="${totalPrice}" type="number"
                                                            groupingUsed="true" /> đ
                                                    </span>
                                                </div>
                                                <div class="single-shop-list">
                                                    <div class="left-area">
                                                        <span>Phí vận chuyển</span>
                                                    </div>
                                                    <span class="price">Miễn phí vận chuyển</span>
                                                </div>
                                                <div class="single-shop-list">
                                                    <div class="left-area">
                                                        <span>Hình thức</span>
                                                    </div>
                                                    <span class="price">Thanh toán khi nhận hàng</span>
                                                </div>
                                                <div class="single-shop-list">
                                                    <div class="left-area">
                                                        <span style="font-weight: 600; color: #2C3C28;">Thành
                                                            tiền:</span>
                                                    </div>
                                                    <span class="price" style="color: #629D23;">
                                                        <fmt:formatNumber value="${totalPrice}" type="number"
                                                            groupingUsed="true" /> đ
                                                    </span>
                                                </div>
                                                <div class="cottom-cart-right-area">
                                                    <button class="rts-btn btn-primary"
                                                        onclick="document.getElementById('placeOrderForm').submit()">Xác
                                                        nhận thanh toán</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="error-area-main-wrapper rts-section-gap2" style="padding-top: 30px;">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="error-main-wrapper">
                                                <div class="thumbnail">
                                                    <img src="/images2/contact/02.png" alt="error"
                                                        style="height: 40vh;">
                                                </div>
                                                <div class="content-main" style="margin-top:30px;">
                                                    <h2 class="title">Giỏ hàng chưa có sản phẩm</h2>
                                                    <a href="/" class="rts-btn btn-primary">Quay về Trang chủ</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:otherwise>
                    </c:choose>

                    <!-- rts shorts service area start -->
                    <jsp:include page="../layout/service.jsp" />
                    <!-- rts shorts service area end -->

                    <!-- rts footer area start -->
                    <!-- rts copyright area start -->
                    <jsp:include page="../layout/footer.jsp" />
                    <!-- rts copyright area end -->
                    <!-- rts footer area end -->

                    <!-- Spinner Start -->
                    <!-- <div id="weiboo-load">
            <div class="preloader-new">
                <svg class="cart_preloader" role="img" aria-label="Shopping cart_preloader line animation"
                    viewBox="0 0 128 128" width="128px" height="128px" xmlns="http://www.w3.org/2000/svg">
                    <g fill="none" stroke-linecap="round" stroke-linejoin="round" stroke-width="8">
                        <g class="cart__track" stroke="hsla(0,10%,10%,0.1)">
                            <polyline points="4,4 21,4 26,22 124,22 112,64 35,64 39,80 106,80" />
                            <circle cx="43" cy="111" r="13" />
                            <circle cx="102" cy="111" r="13" />
                        </g>
                        <g class="cart__lines" stroke="currentColor">
                            <polyline class="cart__top" points="4,4 21,4 26,22 124,22 112,64 35,64 39,80 106,80"
                                stroke-dasharray="338 338" stroke-dashoffset="-338" />
                            <g class="cart__wheel1" transform="rotate(-90,43,111)">
                                <circle class="cart__wheel-stroke" cx="43" cy="111" r="13" stroke-dasharray="81.68 81.68"
                                    stroke-dashoffset="81.68" />
                            </g>
                            <g class="cart__wheel2" transform="rotate(90,102,111)">
                                <circle class="cart__wheel-stroke" cx="102" cy="111" r="13" stroke-dasharray="81.68 81.68"
                                    stroke-dashoffset="81.68" />
                            </g>
                        </g>
                    </g>
                </svg>
            </div>
        </div> -->
                    <!-- Spinner End -->

                    <!-- chưa rõ start -->
                    <div class="search-input-area">
                        <div class="container">
                            <div class="search-input-inner">
                                <div class="input-div">
                                    <input id="searchInput1" class="search-input" type="text"
                                        placeholder="Search by keyword or #">
                                    <button><i class="far fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                        <div id="close" class="search-close-icon"><i class="far fa-times"></i></div>
                    </div>
                    <div id="anywhere-home" class="anywere"></div>
                    <!-- progress area start -->
                    <div class="progress-wrap">
                        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
                            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"
                                style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;">
                            </path>
                        </svg>
                    </div>
                    <!-- progress area end -->
                    <!-- chưa rõ end -->


                    <!-- plugins js -->
                    <script defer src="/js2/plugins.js"></script>

                    <!-- custom js -->
                    <script defer src="/js2/main.js"></script>
                    <!-- header style two End -->


                </body>

                </html>