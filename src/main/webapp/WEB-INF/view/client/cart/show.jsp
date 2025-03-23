<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Giỏ hàng</title>
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

                    <jsp:include page="../cart/breadcrumb.jsp" />



                    <c:choose>
                        <c:when test="${not empty cartDetails}">
                            <!-- rts cart area start -->
                            <div class="rts-cart-area rts-section-gap bg_light-1">
                                <div class="container">
                                    <div class="row g-5">
                                        <div
                                            class="col-xl-9 col-lg-12 col-md-12 col-12 order-2 order-xl-1 order-lg-2 order-md-2 order-sm-2">
                                            <div class="rts-cart-list-area">
                                                <div class="single-cart-area-list head">
                                                    <div class="product-main">
                                                        <P>Danh sách sản phẩm</P>
                                                    </div>
                                                    <div class="price">
                                                        <p>Giá tiền</p>
                                                    </div>
                                                    <div class="quantity">
                                                        <p>Số lượng</p>
                                                    </div>
                                                    <div class="subtotal">
                                                        <p>Tổng tiền</p>
                                                    </div>
                                                </div>
                                                <c:forEach var="cartDetail" items="${cartDetails}" varStatus="status">
                                                    <div class="single-cart-area-list main  item-parent">
                                                        <div class="product-main-cart">
                                                            <form action="/delete-product-in-cart/${cartDetail.id}"
                                                                method="post">
                                                                <input type="hidden" name="${_csrf.parameterName}"
                                                                    value="${_csrf.token}" />
                                                                <button class="close section-activation">
                                                                    <i class="fa-regular fa-x"></i>
                                                                </button>
                                                            </form>
                                                            <div class="thumbnail" style="margin: 0 20px;">
                                                                <a href="/product/${cartDetail.product.id}"
                                                                    style="all: unset; cursor: pointer;">
                                                                    <img src="/img/products/${cartDetail.product.imageUrl}"
                                                                        alt="${cartDetail.product.name}"
                                                                        style="width: 65px; height: 65px; object-fit: contain;">
                                                                </a>
                                                            </div>
                                                            <div class="information">
                                                                <a href="/product/${cartDetail.product.id}"
                                                                    style="all: unset; cursor: pointer;">
                                                                    <h6 class="title">${cartDetail.product.name}</h6>
                                                                    <span>Danh mục:
                                                                        ${cartDetail.product.category.name}</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="price">
                                                            <p>
                                                                <fmt:formatNumber value="${cartDetail.price}"
                                                                    type="number" groupingUsed="true" /> đ
                                                            </p>
                                                        </div>
                                                        <div class="quantity">
                                                            <div class="quantity-edit">
                                                                <input type="text" class="input"
                                                                    value="${cartDetail.quantity}"
                                                                    data-cart-detail-id="${cartDetail.id}"
                                                                    data-cart-detail-price="${cartDetail.price}"
                                                                    data-cart-detail-index="${status.index}">
                                                                <div class="button-wrapper-action">
                                                                    <button class="button"><i
                                                                            class="fa-regular fa-chevron-down"></i></button>
                                                                    <button class="button plus">+<i
                                                                            class="fa-regular fa-chevron-up"></i></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="subtotal">
                                                            <p data-cart-detail-id="${cartDetail.id}">
                                                                <fmt:formatNumber
                                                                    value="${cartDetail.price * cartDetail.quantity}"
                                                                    type="number" groupingUsed="true" /> đ
                                                            </p>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                                <div class="bottom-cupon-code-cart-area">
                                                    <form action="/delete-all-product-in-cart/${cart.id}" method="post">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                        <button class="rts-btn btn-primary mr--50">Xóa giỏ
                                                            hàng</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                        <div
                                            class="col-xl-3 col-lg-12 col-md-12 col-12 order-1 order-xl-2 order-lg-1 order-md-1 order-sm-1">
                                            <div class="cart-total-area-start-right">
                                                <h5 class="title">Tổng giỏ hàng</h5>
                                                <div class="subtotal">
                                                    <span>Tạm tính</span>
                                                    <p class="price" data-cart-total-price="${totalPrice}">
                                                        <fmt:formatNumber value="${totalPrice}" type="number"
                                                            groupingUsed="true" /> đ
                                                    </p>
                                                </div>
                                                <div class="shipping">
                                                    <span>Hình thức vận chuyển</span>
                                                    <ul>
                                                        <li>
                                                            <input type="radio" id="f-option" name="selector" checked>
                                                            <label for="f-option">Giao hàng tận nơi</label>

                                                            <div class="check"></div>
                                                        </li>

                                                        <li>
                                                            <input type="radio" id="t-option" name="selector">
                                                            <label for="t-option">Nhận tại cửa hàng</label>

                                                            <div class="check">
                                                                <div class="inside"></div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="bottom">
                                                    <div class="wrapper">
                                                        <span>Thành tiền</span>
                                                        <p class="price" data-cart-total-price="${totalPrice}">
                                                            <fmt:formatNumber value="${totalPrice}" type="number"
                                                                groupingUsed="true" /> đ
                                                        </p>
                                                    </div>
                                                    <form:form action="/confirm-checkout" method="post"
                                                        modelAttribute="cart">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                        <div style="display: none;">
                                                            <c:forEach var="cartDetail" items="${cart.cartDetails}"
                                                                varStatus="status">
                                                                <div class="mb-3">
                                                                    <div class="form-group">
                                                                        <label>Id:</label>
                                                                        <form:input type="text"
                                                                            path="cartDetails[${status.index}].id"
                                                                            cssClass="form-control" />
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label>Quantity:</label>
                                                                        <form:input class="form-control" type="text"
                                                                            path="cartDetails[${status.index}].quantity" />
                                                                    </div>
                                                                </div>
                                                            </c:forEach>
                                                        </div>
                                                        <div class="button-area">
                                                            <button class="rts-btn btn-primary">Tiến hành thanh
                                                                toán</button>
                                                        </div>
                                                    </form:form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- rts cart area end -->
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