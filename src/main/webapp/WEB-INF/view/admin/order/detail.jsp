<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">
                <!-- rts header area start -->

                <head>

                    <head>
                        <meta charset="UTF-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title>ZOA Mart</title>
                        <link rel="shortcut icon" type="image/x-icon" href="/images2/fav.png">
                        <!-- plugins css -->
                        <link rel="stylesheet preload" href="/css/plugins.css" as="style">
                        <link rel="stylesheet preload"
                            href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" as="style">
                        <link rel="stylesheet preload" href="/css/style.css" as="style">
                        <link rel="stylesheet preload" href="/css/custom.css" as="style">
                    </head>
                    <!-- rts header area end -->

                <body>

                    <div class="ekomart_dashboard">

                        <!-- rts header area start -->
                        <jsp:include page="../layout/sidebar.jsp" />
                        <!-- rts header area end -->

                        <div class="right-area-body-content">
                            <header class="header-one">
                                <div class="headerleft">
                                    <div class="collups-show-icon">
                                        <img src="/images/icons/10.svg" alt="icon">
                                        <i class="fa-light fa-arrow-right"></i>
                                    </div>
                                </div>
                                <div class="header-right">
                                    <div class="action-interactive-area__header">
                                        <form
                                            class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                                            <span style="color: black; user-select: none;">Welcome, Admin</span>
                                        </form>
                                        <div class="single_action__haeader user_avatar__information openuptip"
                                            flow="down" tooltip="Profile">
                                            <div class="avatar">
                                                <img src="/images/avatar/01.png" alt="avatar">
                                            </div>
                                            <div class="user_information_main_wrapper slide-down__click">
                                                <div class="user_body_content">
                                                    <ul class="items">
                                                        <li class="single_items">
                                                            <a class="hader_popup_link" href="profile-setting.html">
                                                                <i class="fa-light fa-user"></i>
                                                                Profile Setting
                                                            </a>
                                                        </li>
                                                        <li class="single_items">
                                                            <a class="hader_popup_link" href="#">
                                                                <i class="fa-regular fa-gear"></i>
                                                                Settings
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <form method="post" action="/logout">
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />
                                                    <div class="popup-footer-btn">
                                                        <button class="geex-content__header__popup__footer__link">Đăng
                                                            xuất
                                                            <i class="fa-light fa-arrow-right"></i>
                                                        </button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </header>

                            <div class="body-root-inner">
                                <div class="transection">
                                    <div class="title-right-actioin-btn-wrapper-product-list">
                                        <h3 class="title">Order #${id}</h3>
                                    </div>
                                    <div class="vendor-list-main-wrapper product-wrapper">
                                        <!-- customers  details main wrapper -->
                                        <div class="customers-details-wrapper-one-dashboard">
                                            <h4 class="title">Customer #${order.user.id}</h4>
                                            <div class="main-customers-details-top">
                                                <div class="left">
                                                    <div class="information-area">
                                                        <span class="designation">Customer</span>
                                                    </div>
                                                </div>
                                                <div class="right-area">
                                                    <div class="short-contact-info">
                                                        <p class="name">ID</p>
                                                        <a>${order.user.id}</a>
                                                    </div>
                                                    <div class="short-contact-info">
                                                        <p class="name">FullName</p>
                                                        <a>${order.user.fullName}</a>
                                                    </div>
                                                    <div class="short-contact-info">
                                                        <p class="name">Email</p>
                                                        <a>${order.user.email}</a>
                                                    </div>
                                                    <div class="short-contact-info">
                                                        <p class="name">Number</p>
                                                        <a>${order.user.phone}</a>
                                                    </div>
                                                    <div class="short-contact-info">
                                                        <p class="name">Created At</p>
                                                        <a>
                                                            <fmt:formatDate value="${order.user.createdAt}"
                                                                pattern="yyyy-MM-dd HH:mm:ss" />
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- customers  details main wrapper end -->

                                        <div class="billing-address-area-4">
                                            <h4 class="title">Shipping Address</h4>
                                            <div class="main-billing-address-wrapper">
                                                <div class="single-billing-address">
                                                    <p><span>Full Name :</span> ${order.receiverName}</p>
                                                    <p><span>Phone :</span> ${order.receiverPhone}</p>
                                                    <p><span>Address :</span> ${order.receiverAddress}</p>
                                                    <p><span>Payment Method :</span> ${order.paymentMethod == 1 ? "Thanh
                                                        toán khi nhận hàng" : ""}</p>
                                                    <p><span>Note :</span> ${order.receiverNote}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="order-details-table-1-table table-responsive">
                                    <h4 class="title">Order Detail</h4>
                                    <table class="table  order-details-table table-responsive">
                                        <thead class="bg-active">
                                            <tr>
                                                <th style="width: 55%;">Products </th>
                                                <th style="width: 15%;" class="text-center">Price</th>
                                                <th style="width: 15%;" class="text-center">Quantity</th>
                                                <th style="width: 15%;" class="text-center">Sub Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="orderDetail" items="${orderDetails}">
                                                <tr>
                                                    <td>
                                                        <div class="item">
                                                            <div class="thumbnail">
                                                                <img src="/img/products/${orderDetail.product.imageUrl}"
                                                                    alt="${orderDetail.product.name}"
                                                                    style="width: 38px; height: 38px; object-fit: contain;">
                                                            </div>
                                                            <div class="discription">
                                                                <h6 class="title">
                                                                    ${orderDetail.product.name}
                                                                    (#${orderDetail.product.id})
                                                                </h6>
                                                                <span>${orderDetail.product.category.name}</span>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td class="text-center">
                                                        <fmt:formatNumber value="${orderDetail.unitPrice}" type="number"
                                                            groupingUsed="true" /> đ
                                                    </td>
                                                    <td class="text-center">
                                                        ${orderDetail.quantity}
                                                    </td>
                                                    <td class="text-center">
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
                    <!-- all plugins js here -->
                    <script src="js/plugins.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/apexcharts@3.27.0/dist/apexcharts.min.js"></script>
                    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
                    <!-- main js Custom -->
                    <script src="js/main.js"></script>
                    <!-- rts header area end -->
                </body>

                </html>