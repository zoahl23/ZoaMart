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
                        <!-- Latest compiled and minified CSS -->
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
                            rel="stylesheet">

                        <!-- Latest compiled JavaScript -->
                        <script
                            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
                                    <div class="vendor-list-main-wrapper product-wrapper">
                                        <!-- customers  details main wrapper -->
                                        <div class="customers-details-wrapper-one-dashboard">
                                            <h4 class="title">User Details</h4>
                                            <div class="main-customers-details-top">
                                                <div class="left">
                                                    <div class="information-area">
                                                        <b>Role ${user.roleName}</b>
                                                    </div>
                                                </div>
                                                <div class="right-area">
                                                    <div class="short-contact-info">
                                                        <p class="name">ID</p>
                                                        <a href="#">${user.id}</a>
                                                    </div>
                                                    <div class="short-contact-info">
                                                        <p class="name">Full Name</p>
                                                        <a href="#">${user.fullName}</a>
                                                    </div>
                                                    <div class="short-contact-info">
                                                        <p class="name">Email</p>
                                                        <a href="#">${user.email}</a>
                                                    </div>
                                                    <div class="short-contact-info">
                                                        <p class="name">Phone</p>
                                                        <a href="#">${user.phone}</a>
                                                    </div>
                                                    <div class="short-contact-info">
                                                        <p class="name">Created At</p>
                                                        <a href="#">
                                                            <fmt:formatDate value="${user.createdAt}"
                                                                pattern="yyyy-MM-dd HH:mm:ss" />
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- customers  details main wrapper end -->

                                        <div class="billing-address-area-4">
                                            <h4 class="title">Address</h4>
                                            <div class="main-billing-address-wrapper">
                                                <div class="single-billing-address">
                                                    <p><span>Full Name :</span> ${user.fullName}</p>
                                                    <p><span>Phone :</span> ${user.phone}</p>
                                                    <p><span>Address :</span> ${user.address}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- all plugins js here -->
                    <script src="/js/plugins.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/apexcharts@3.27.0/dist/apexcharts.min.js"></script>
                    <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
                    <!-- main js Custom -->
                    <script src="/js/main.js"></script>
                    <!-- rts header area end -->
                </body>

                </html>