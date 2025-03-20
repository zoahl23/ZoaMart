<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
                                    <div class="single_action__haeader user_avatar__information openuptip" flow="down"
                                        tooltip="Profile">
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
                                            <div class="popup-footer-btn">
                                                <a href="#" class="geex-content__header__popup__footer__link">Logout
                                                    <i class="fa-light fa-arrow-right"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </header>

                        <div class="body-root-inner">
                            <div class="transection">
                                <div class="title-right-actioin-btn-wrapper-product-list">
                                    <h3 class="title">Order #80294</h3>
                                    <div class="button-wrapper">
                                        <div class="single-select">
                                            <div class="nice-select" tabindex="0"><span class="current">This Week</span>
                                                <ul class="list">
                                                    <li data-value="Default Sorting" data-display="This Week"
                                                        class="option selected">This Week</li>
                                                    <li data-value="1" class="option">Last Week</li>
                                                    <li data-value="2" class="option">3 Week</li>
                                                    <li data-value="3" class="option disabled">Last Month</li>
                                                    <li data-value="4" class="option">6 Month</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-top-filter-area-l">
                                    <div class="left-area-button-fiulter">
                                        <p>Dashboard / Order / Order#85421 </p>
                                    </div>
                                </div>
                                <div class="vendor-list-main-wrapper product-wrapper">
                                    <!-- customers  details main wrapper -->
                                    <div class="customers-details-wrapper-one-dashboard">
                                        <h4 class="title">Customer Details</h4>
                                        <div class="main-customers-details-top">
                                            <div class="left">
                                                <img src="assets/images/avatar/03.png" alt="avatar">
                                                <div class="information-area">
                                                    <h4 class="name">Regina Cooper</h4>
                                                    <span class="designation">Customer</span>
                                                </div>
                                            </div>
                                            <div class="right-area">
                                                <div class="short-contact-info">
                                                    <p class="name">Email</p>
                                                    <a href="#">textgood@gmail.com</a>
                                                </div>
                                                <div class="short-contact-info">
                                                    <p class="name">Number</p>
                                                    <a href="#">+880123456678</a>
                                                </div>
                                                <div class="short-contact-info">
                                                    <p class="name">Date</p>
                                                    <a href="#">13/16/2024</a>
                                                </div>
                                                <div class="short-contact-info">
                                                    <p class="name">Country</p>
                                                    <a href="#">USA(America)</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- customers  details main wrapper end -->

                                    <div class="billing-address-area-4">
                                        <h4 class="title">Billing address</h4>
                                        <div class="main-billing-address-wrapper">
                                            <div class="single-billing-address">
                                                <p><span>Fast Name :</span> Maxlins</p>
                                                <p><span>last Name :</span> Maxlins</p>
                                                <p><span>Address :</span> 256 E. Brewer St. Holtsville</p>
                                            </div>
                                            <div class="single-billing-address">
                                                <p><span>Fast Name :</span> Maxlins</p>
                                                <p><span>last Name :</span> Maxlins</p>
                                                <p><span>Address :</span> 256 E. Brewer St. Holtsville</p>
                                            </div>
                                            <div class="single-billing-address">
                                                <p><span>Fast Name :</span> Maxlins</p>
                                                <p><span>last Name :</span> Maxlins</p>
                                                <p><span>Address :</span> 256 E. Brewer St. Holtsville</p>
                                            </div>
                                            <div class="single-billing-address">
                                                <p><span>Fast Name :</span> Maxlins</p>
                                                <p><span>last Name :</span> Maxlins</p>
                                                <p><span>Address :</span> 256 E. Brewer St. Holtsville</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="billing-address-area-4">
                                        <h4 class="title">Shipping Address</h4>
                                        <div class="main-billing-address-wrapper">
                                            <div class="single-billing-address">
                                                <p><span>Fast Name :</span> Maxlins</p>
                                                <p><span>last Name :</span> Maxlins</p>
                                                <p><span>Address :</span> 256 E. Brewer St. Holtsville</p>
                                            </div>
                                            <div class="single-billing-address">
                                                <p><span>Fast Name :</span> Maxlins</p>
                                                <p><span>last Name :</span> Maxlins</p>
                                                <p><span>Address :</span> 256 E. Brewer St. Holtsville</p>
                                            </div>
                                            <div class="single-billing-address">
                                                <p><span>Fast Name :</span> Maxlins</p>
                                                <p><span>last Name :</span> Maxlins</p>
                                                <p><span>Address :</span> 256 E. Brewer St. Holtsville</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="order-details-table-1-table table-responsive">
                                <h4 class="title">Order Summery</h4>
                                <table class="table  order-details-table table-responsive">
                                    <thead class="bg-active">
                                        <tr>
                                            <th style="width: 300px;">Order Item </th>
                                            <th class="text-center">Price</th>
                                            <th class="text-center">Quantity</th>
                                            <th class="text-right">Color</th>
                                            <th class="text-right">Size</th>
                                            <th class="text-right">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="item">
                                                    <div class="thumbnail">
                                                        <img src="assets/images/grocery/15.png" alt="grocery">
                                                    </div>
                                                    <div class="discription">
                                                        <h6 class="title">
                                                            Quaker Oats Healthy Meal...
                                                        </h6>
                                                        <span>Food</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">$10.99</td>
                                            <td class="text-center">1</td>
                                            <td class="text-right">$10.99</td>
                                            <td class="text-right">$10.99</td>
                                            <td class="text-right">$10.99</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="item">
                                                    <div class="thumbnail">
                                                        <img src="assets/images/grocery/15.png" alt="grocery">
                                                    </div>
                                                    <div class="discription">
                                                        <h6 class="title">
                                                            Quaker Oats Healthy Meal...
                                                        </h6>
                                                        <span>Food</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">$10.99</td>
                                            <td class="text-center">1</td>
                                            <td class="text-right">$10.99</td>
                                            <td class="text-right">$10.99</td>
                                            <td class="text-right">$10.99</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div class="item">
                                                    <div class="thumbnail">
                                                        <img src="assets/images/grocery/15.png" alt="grocery">
                                                    </div>
                                                    <div class="discription">
                                                        <h6 class="title">
                                                            Quaker Oats Healthy Meal...
                                                        </h6>
                                                        <span>Food</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="text-center">$10.99</td>
                                            <td class="text-center">1</td>
                                            <td class="text-right">$10.99</td>
                                            <td class="text-right">$10.99</td>
                                            <td class="text-right">$10.99</td>
                                        </tr>
                                        <tr class="b-n">
                                            <td colspan="5" class="text-end f-w-600">SubTotal</td>
                                            <td class="text-right">$1710.99</td>
                                        </tr>
                                        <tr class="b-n">
                                            <td colspan="5" class="text-end f-w-600">Tax</td>
                                            <td class="text-right">$85.99</td>
                                        </tr>
                                        <tr class="b-n">
                                            <td colspan="5" class="text-end f-w-600">Grand Total</td>
                                            <td class="text-right f-w-600">$1795.99</td>
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