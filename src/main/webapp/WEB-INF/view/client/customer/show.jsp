<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Tài khoản</title>
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

                    <jsp:include page="breadcrumb.jsp" />

                    <div class="account-tab-area-start rts-section-gap">
                        <div class="container-2">
                            <div class="row">
                                <div class="col-lg-3">
                                    <jsp:include page="sidebar.jsp" />
                                </div>
                                <div class="col-lg-9 pl--50 pl_md--10 pl_sm--10 pt_md--30 pt_sm--30">
                                    <div class="tab-content" id="v-pills-tabContent">
                                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel"
                                            aria-labelledby="v-pills-home-tab" tabindex="0">
                                            <jsp:include page="notification.jsp" />
                                        </div>
                                        <div class="tab-pane fade" id="v-pills-settingsa" role="tabpanel"
                                            aria-labelledby="v-pills-settingsa-tab" tabindex="0">
                                            <form:form method="post" action="/customer"
                                                onsubmit="return validatePasswords()" class="account-details-area">
                                                <h2 class="title">Thông tin tài khoản</h2>
                                                <input type="hidden" name="${_csrf.parameterName}"
                                                    value="${_csrf.token}" />
                                                <input type="text" name="fullName" value="${newUser.fullName}"
                                                    style="color: black;" required />
                                                <input type="email" name="email" value="${newUser.email}"
                                                    style="color: black;" required />
                                                <input type="text" name="phone" value="${newUser.phone}"
                                                    style="color: black;" required />
                                                <input type="text" name="address" value="${newUser.address}"
                                                    style="color: black;" required />
                                                <input type="password" name="oldPass" placeholder="Mật khẩu cũ *"
                                                    required />
                                                <input type="password" id="newPass" name="newPass"
                                                    placeholder="Mật khẩu mới *" />
                                                <input type="password" id="againNewPass" name="againNewPass"
                                                    placeholder="Xác nhận mật khẩu mới *" />
                                                <button type="submit" class="rts-btn btn-primary">Lưu thay đổi</button>
                                            </form:form>
                                        </div>
                                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
                                            aria-labelledby="v-pills-profile-tab" tabindex="0">
                                            <div class="order-table-account">
                                                <div class="h2 title">Đơn hàng của bạn</div>
                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th>Order</th>
                                                                <th>Date</th>
                                                                <th>Status</th>
                                                                <th>Total</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="order" items="${orders}">
                                                                <tr>
                                                                    <td>#${order.id}</td>
                                                                    <td>
                                                                        <fmt:formatDate value="${order.createdAt}"
                                                                            pattern="yyyy-MM-dd HH:mm:ss" />
                                                                    </td>
                                                                    <td>
                                                                        ${order.status}
                                                                    </td>
                                                                    <td>
                                                                        <fmt:formatNumber value="${order.totalPrice}"
                                                                            type="number" groupingUsed="true" /> đ
                                                                    </td>
                                                                    <td><a href="/customer/order/${order.id}"
                                                                            class="btn-small d-block">View</a>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
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

                    <script>
                        function validatePasswords() {
                            const newPass = document.getElementById("newPass").value;
                            const againNewPass = document.getElementById("againNewPass").value;

                            if (newPass !== againNewPass) {
                                alert("Mật khẩu mới và xác nhận không khớp!");
                                return false; // Không cho submit
                            }

                            return true; // Cho phép submit
                        }
                    </script>
                    <!-- plugins js -->
                    <script defer src="/js2/plugins.js"></script>

                    <!-- custom js -->
                    <script defer src="/js2/main.js"></script>
                    <!-- header style two End -->


                </body>

                </html>