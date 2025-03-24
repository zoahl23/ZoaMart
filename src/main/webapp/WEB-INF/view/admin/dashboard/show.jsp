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
                        <link rel="stylesheet preload" href="css/plugins.css" as="style">
                        <link rel="stylesheet preload"
                            href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" as="style">
                        <link rel="stylesheet preload" href="css/style.css" as="style">
                        <link rel="stylesheet preload" href="css/custom.css" as="style">
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
                                        <h3 class="title">Overview</h3>
                                    </div>
                                    <!-- over view area start -->
                                    <div class="row g-5">
                                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="single-over-fiew-card">
                                                <span class="top-main">Revenue</span>
                                                <div class="bottom">
                                                    <h2 class="title">
                                                        <fmt:formatNumber value="${revenue}" type="number"
                                                            groupingUsed="true" /> đ
                                                    </h2>
                                                    <div class="right-primary">
                                                        <div class="increase">
                                                            <i class="fa-light fa-arrow-up"></i>
                                                        </div>
                                                        <img src="images/avatar/04.png" alt="ekomart">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="single-over-fiew-card">
                                                <span class="top-main">Customers</span>
                                                <div class="bottom">
                                                    <h2 class="title">${customers}</h2>
                                                    <div class="right-primary">
                                                        <div class="increase">
                                                            <i class="fa-light fa-arrow-up"></i>
                                                        </div>
                                                        <img src="images/avatar/04.png" alt="ekomart">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="single-over-fiew-card">
                                                <span class="top-main">Products</span>
                                                <div class="bottom">
                                                    <h2 class="title">${products}</h2>
                                                    <div class="right-primary">
                                                        <div class="increase">
                                                            <i class="fa-light fa-arrow-up"></i>
                                                        </div>
                                                        <img src="images/avatar/04.png" alt="ekomart">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                            <div class="single-over-fiew-card">
                                                <span class="top-main">Orders</span>
                                                <div class="bottom">
                                                    <h2 class="title">${orders}</h2>
                                                    <div class="right-primary">
                                                        <div class="increase">
                                                            <i class="fa-light fa-arrow-up"></i>
                                                        </div>
                                                        <img src="images/avatar/04.png" alt="ekomart">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- over view area end -->
                                    <div class="row mt--10 g-5">
                                        <div class="col-xl-7 col-lg-12">
                                            <div class="apex-xhart-area-one">
                                                <div class="apex-chart-top-area-banner mb--20">
                                                    <div class="left-area">
                                                        <h1 class="title-top mb--10">Sale Statistics</h1>
                                                        <span>Top traffic channels metrics.</span>
                                                    </div>
                                                </div>
                                                <div class="tab-content" id="myTabContent">
                                                    <div class="tab-pane fade show active" id="home" role="tabpanel"
                                                        aria-labelledby="home-tab">
                                                        <div id="line-chart" class="server-request-chart"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xl-5 col-lg-12">
                                            <div class="apex-xhart-area-one">
                                                <div class="apex-chart-top-area-banner mb--20">
                                                    <div class="left-area">
                                                        <h1 class="title-top mb--10">Earnings</h1>
                                                        <span>Top traffic channels metrics.</span>
                                                    </div>
                                                </div>
                                                <div id="stack-chart"></div>
                                            </div>
                                        </div>
                                    </div>
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