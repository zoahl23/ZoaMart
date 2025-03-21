<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <div class="nav accout-dashborard-nav flex-column nav-pills me-3" id="v-pills-tab"
                                    role="tablist" aria-orientation="vertical">
                                    <button class="nav-link" id="v-pills-settingsa-tab" data-bs-toggle="pill"
                                        data-bs-target="#v-pills-settingsa" type="button" role="tab"
                                        aria-controls="v-pills-settingsa" aria-selected="false"><i
                                            class="fa-light fa-user"></i>Thông tin tài khoản</button>
                                    <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill"
                                        data-bs-target="#v-pills-profile" type="button" role="tab"
                                        aria-controls="v-pills-profile" aria-selected="false"><i
                                            class="fa-regular fa-bag-shopping"></i>Đơn hàng</button>
                                    <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill"
                                        data-bs-target="#v-pills-messages" type="button" role="tab"
                                        aria-controls="v-pills-messages" aria-selected="false"><i
                                            class="fa-sharp fa-regular fa-tractor"></i>Theo dõi đơn
                                        hàng</button>
                                    <form method="post" action="/logout">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <button class="nav-link">
                                            <i class="fa-light fa-right-from-bracket"></i>Đăng xuất
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-9 pl--50 pl_md--10 pl_sm--10 pt_md--30 pt_sm--30">
                                <div class="tab-content" id="v-pills-tabContent">
                                    <div class="tab-pane fade" id="v-pills-settingsa" role="tabpanel"
                                        aria-labelledby="v-pills-settingsa-tab" tabindex="0">
                                        <form action="#" class="account-details-area">
                                            <h2 class="title">Thông tin tài khoản</h2>
                                            <div class="input-half-area">
                                                <div class="single-input">
                                                    <input type="text" placeholder="Họ">
                                                </div>
                                                <div class="single-input">
                                                    <input type="text" placeholder="Tên">
                                                </div>
                                            </div>

                                            <input type="text" placeholder="Tên hiển thị" required>
                                            <input type="email" placeholder="Địa chỉ Email *" required>
                                            <input type="email" placeholder="Địa chỉ Email *">
                                            <input type="password" placeholder="Mật khẩu cũ *" required>
                                            <input type="password" placeholder="Mật khẩu mới *">
                                            <input type="password" placeholder="Xác nhận mật khẩu mới *">
                                            <button class="rts-btn btn-primary">Lưu thay đổi</button>
                                        </form>
                                    </div>
                                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
                                        aria-labelledby="v-pills-profile-tab" tabindex="0">
                                        <div class="order-table-account">
                                            <div class="h2 title">Đơn hàng của bạn</div>
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>Mã đơn hàng</th>
                                                            <th>Ngày tạo</th>
                                                            <th>Trạng thái</th>
                                                            <th>Tổng tiền</th>
                                                            <th>Hành động</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>#1357</td>
                                                            <td>March 45, 2020</td>
                                                            <td>Đang giao hàng</td>
                                                            <td>$125.00 for 2 item</td>
                                                            <td><a href="#" class="btn-small d-block">Xem chi tiết</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>#2468</td>
                                                            <td>June 29, 2020</td>
                                                            <td>Đã hoàn thành</td>
                                                            <td>$364.00 for 5 item</td>
                                                            <td><a href="#" class="btn-small d-block">Xem chi tiết</a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>#2366</td>
                                                            <td>August 02, 2020</td>
                                                            <td>Đã hoàn thành</td>
                                                            <td>$280.00 for 3 item</td>
                                                            <td><a href="#" class="btn-small d-block">Xem chi tiết</a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
                                        aria-labelledby="v-pills-messages-tab" tabindex="0">
                                        <div class="tracing-order-account">
                                            <h2 class="title">Theo dõi đơn hàng</h2>
                                            <p>
                                                Để theo dõi trạng thái đơn hàng của bạn, vui lòng nhập Mã Đơn Hàng
                                                (OrderID) vào ô
                                                được chỉ định bên dưới và nhấp vào nút 'Theo dõi'. Mã định danh duy nhất
                                                này có thể
                                                được tìm thấy trên biên nhận của bạn cũng như trong email xác nhận đã
                                                được gửi cho
                                                bạn.
                                            </p>
                                            <form action="#" class="order-tracking">
                                                <div class="single-input">
                                                    <label for="order-id">Mã đơn hàng</label>
                                                    <input type="text"
                                                        placeholder="Được tìm thấy trong email xác nhận đơn hàng của bạn."
                                                        required>
                                                </div>
                                                <div class="single-input">
                                                    <label for="order-id">Email thanh toán</label>
                                                    <input type="text"
                                                        placeholder="Email bạn đã sử dụng khi thanh toán">
                                                </div>
                                                <button class="rts-btn btn-primary">Kiểm tra</button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="v-pills-settingsb" role="tabpanel"
                                        aria-labelledby="v-pills-settingsb-tab" tabindex="0">...</div>
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