<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Chi tiết đơn hàng</title>
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
                        <div class="container-2">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="navigator-breadcrumb-wrapper">
                                        <a href="/">Trang chủ</a>
                                        <i class="fa-regular fa-chevron-right"></i>
                                        <a class="#" href="/customer">Tài khoản</a>
                                        <i class="fa-regular fa-chevron-right"></i>
                                        <a class="current" href="/customer/order/${order.id}">Chi tiết đơn hàng</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="account-tab-area-start rts-section-gap">
                        <div class="container-2">
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="nav accout-dashborard-nav flex-column nav-pills me-3" id="v-pills-tab"
                                        role="tablist" aria-orientation="vertical">
                                        <a href="/customer" class="nav-link"><i
                                                class="fa-light fa-chevron-left"></i>Quay
                                            lại trang quản lý</a>
                                        <form method="post" action="/logout">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                            <button class="nav-link">
                                                <i class="fa-light fa-right-from-bracket"></i>Đăng xuất
                                            </button>
                                        </form>
                                    </div>
                                </div>
                                <div class="col-lg-9 pl--50 pl_md--10 pl_sm--10 pt_md--30 pt_sm--30">
                                    <div class="order-details-table-1-table table-responsive">
                                        <h4 class="title">Order Detail</h4>
                                        <table class="table  order-details-table table-responsive">
                                            <thead class="bg-active">
                                                <tr style="border-bottom: 1px solid #E8E9EB;">
                                                    <th style="width: 55%; margin-bottom: 15px;padding-bottom: 15px;">
                                                        Products </th>
                                                    <th style="width: 15%; margin-bottom: 15px;padding-bottom: 15px;"
                                                        class="text-center">Price</th>
                                                    <th style="width: 15%; margin-bottom: 15px;padding-bottom: 15px;"
                                                        class="text-center">Quantity</th>
                                                    <th style="width: 15%; margin-bottom: 15px;padding-bottom: 15px;"
                                                        class="text-center">Sub Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="orderDetail" items="${orderDetails}">
                                                    <tr style="border-bottom: 1px solid #E8E9EB;">
                                                        <td style="padding: 10px;">
                                                            <div style="display: flex; align-items: center; gap: 15px;">
                                                                <div class="thumbnail">
                                                                    <img src="/img/products/${orderDetail.product.imageUrl}"
                                                                        alt="${orderDetail.product.name}"
                                                                        style="width: 38px; height: 38px; object-fit: contain;">
                                                                </div>
                                                                <div class="discription">
                                                                    <h6 class="title" style="margin-bottom: 2px;">
                                                                        ${orderDetail.product.name}
                                                                        (#${orderDetail.product.id})
                                                                    </h6>
                                                                    <span>${orderDetail.product.category.name}</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td style="padding: 10px;" class="text-center">
                                                            <fmt:formatNumber value="${orderDetail.unitPrice}"
                                                                type="number" groupingUsed="true" /> đ
                                                        </td>
                                                        <td style="padding: 10px;" class="text-center">
                                                            ${orderDetail.quantity}
                                                        </td>
                                                        <td style="padding: 10px;" class="text-center">
                                                            <fmt:formatNumber
                                                                value="${orderDetail.unitPrice * orderDetail.quantity}"
                                                                type="number" groupingUsed="true" /> đ
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                <tr class="b-n">
                                                    <td colspan="3" class="text-end f-w-600">SubTotal</td>
                                                    <td class="text-right">
                                                        <fmt:formatNumber value="${order.totalPrice}" type="number"
                                                            groupingUsed="true" /> đ
                                                    </td>
                                                </tr>
                                                <tr class="b-n">
                                                    <td colspan="3" class="text-end f-w-600">Tax</td>
                                                    <td class="text-right">0 đ</td>
                                                </tr>
                                                <tr class="b-n">
                                                    <td colspan="3" class="text-end f-w-600">Grand Total</td>
                                                    <td class="text-right f-w-600">
                                                        <fmt:formatNumber value="${order.totalPrice}" type="number"
                                                            groupingUsed="true" /> đ
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

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