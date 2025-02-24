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
                    <link rel="shortcut icon" type="image/x-icon" href="images/fav.png">
                    <!-- plugins css -->
                    <link rel="stylesheet preload" href="css/plugins.css" as="style">
                    <link rel="stylesheet preload"
                        href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" as="style">
                    <link rel="stylesheet preload" href="css/style.css" as="style">
                </head>
                <!-- rts header area end -->

            <body>

                <div class="ekomart_dashboard">

                    <!-- rts header area start -->
                    <jsp:include page="../layout/sidebar.jsp" />
                    <!-- rts header area end -->

                    <div class="right-area-body-content">
                        <jsp:include page="../layout/header.jsp" />

                        <div class="body-root-inner">
                            <div class="transection">
                                <div class="title-right-actioin-btn-wrapper-product-list">
                                    <h3 class="title">Overview</h3>
                                    <div class="button-wrapper">
                                        <div class="single-select">
                                            <select style="display: none;">
                                                <option data-display="Export">Export</option>
                                                <option value="1">Some option</option>
                                                <option value="2">Another option</option>
                                                <option value="3" disabled="">A disabled option</option>
                                                <option value="4">Potato</option>
                                            </select>
                                            <div class="nice-select" tabindex="0"><span class="current">30
                                                    Days</span>
                                                <ul class="list">
                                                    <li data-value="Default Sorting" data-display="30 Days"
                                                        class="option selected">
                                                        30 Days</li>
                                                    <li data-value="1" class="option">60 Dayes</li>
                                                    <li data-value="2" class="option">10 Week</li>
                                                    <li data-value="4" class="option">6 Month</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- over view area start -->
                                <div class="row g-5">
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-over-fiew-card">
                                            <span class="top-main">Revenue</span>
                                            <div class="bottom">
                                                <h2 class="title">$1280</h2>
                                                <div class="right-primary">
                                                    <div class="increase">
                                                        <i class="fa-light fa-arrow-up"></i>
                                                        <span>50.8%</span>
                                                    </div>
                                                    <img src="images/avatar/04.png" alt="ekomart">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-over-fiew-card">
                                            <span class="top-main">Revenue</span>
                                            <div class="bottom">
                                                <h2 class="title">158</h2>
                                                <div class="right-primary">
                                                    <div class="increase">
                                                        <i class="fa-light fa-arrow-up"></i>
                                                        <span>50.8%</span>
                                                    </div>
                                                    <img src="images/avatar/05.png" alt="ekomart">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-over-fiew-card">
                                            <span class="top-main">Revenue</span>
                                            <div class="bottom">
                                                <h2 class="title">358</h2>
                                                <div class="right-primary">
                                                    <div class="increase">
                                                        <i class="fa-light fa-arrow-up"></i>
                                                        <span>50.8%</span>
                                                    </div>
                                                    <img src="images/avatar/06.png" alt="ekomart">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12">
                                        <div class="single-over-fiew-card">
                                            <span class="top-main">Revenue</span>
                                            <div class="bottom">
                                                <h2 class="title">$89k</h2>
                                                <div class="right-primary">
                                                    <div class="increase">
                                                        <i class="fa-light fa-arrow-up"></i>
                                                        <span>50.8%</span>
                                                    </div>
                                                    <img src="images/avatar/07.png" alt="ekomart">
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
                                                <div class="right-area sale-statictics-button">
                                                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                        <li class="nav-item" role="presentation">
                                                            <button class="nav-link active" id="home-tab"
                                                                data-bs-toggle="tab" data-bs-target="#home"
                                                                type="button" role="tab" aria-controls="home"
                                                                aria-selected="true">Week</button>
                                                        </li>
                                                        <li class="nav-item" role="presentation">
                                                            <button class="nav-link" id="profile-tab"
                                                                data-bs-toggle="tab" data-bs-target="#profile"
                                                                type="button" role="tab" aria-controls="profile"
                                                                aria-selected="false">Month</button>
                                                        </li>
                                                        <li class="nav-item" role="presentation">
                                                            <button class="nav-link" id="contact-tab"
                                                                data-bs-toggle="tab" data-bs-target="#contact"
                                                                type="button" role="tab" aria-controls="contact"
                                                                aria-selected="false">Year</button>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="tab-content" id="myTabContent">
                                                <div class="tab-pane fade show active" id="home" role="tabpanel"
                                                    aria-labelledby="home-tab">
                                                    <div id="line-chart" class="server-request-chart"></div>
                                                </div>
                                                <div class="tab-pane fade" id="profile" role="tabpanel"
                                                    aria-labelledby="profile-tab">
                                                    <div id="line-chart-2" class="server-request-chart"></div>
                                                </div>
                                                <div class="tab-pane fade" id="contact" role="tabpanel"
                                                    aria-labelledby="contact-tab">
                                                    <div id="line-chart-3" class="server-request-chart"></div>
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
                                                <div class="single-select">
                                                    <div class="nice-select" tabindex="0"><span
                                                            class="current">Week</span>
                                                        <ul class="list">
                                                            <li data-value="Default Sorting" data-display="Week"
                                                                class="option selected">Month</li>
                                                            <li data-value="1" class="option">Year</li>
                                                            <li data-value="2" class="option">6 Month</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="stack-chart"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- top-product area start -->
                                <div class="row mt--10 g-5">
                                    <div class="col-xl-8 col-lg-12">
                                        <div class="top-product-wrapper-scroll">
                                            <div class="top-product-area-start">
                                                <div class="between-area-top">
                                                    <div class="left-area">
                                                        <h4 class="title">Top Products</h4>
                                                        <span>Top Products List</span>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/08.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code flex-direction-column">
                                                        <p>Coupon Code</p>
                                                        <span class="d-block">2415</span>
                                                    </div>
                                                    <div class="logo">
                                                        <img src="images/brand/01.png" alt="ekomart">
                                                    </div>
                                                    <div class="indec">
                                                        <div class="left">
                                                            <p>5.29%</p>
                                                            <span>$79.00</span>
                                                        </div>
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/09.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code flex-direction-column">
                                                        <p>Coupon Code</p>
                                                        <span class="d-block">2415</span>
                                                    </div>
                                                    <div class="logo">
                                                        <img src="images/brand/08.png" alt="ekomart">
                                                    </div>
                                                    <div class="indec">
                                                        <div class="left">
                                                            <p>5.29%</p>
                                                            <span>$79.00</span>
                                                        </div>
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/10.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code flex-direction-column">
                                                        <p>Coupon Code</p>
                                                        <span class="d-block">2415</span>
                                                    </div>
                                                    <div class="logo">
                                                        <img src="images/brand/01.png" alt="ekomart">
                                                    </div>
                                                    <div class="indec">
                                                        <div class="left">
                                                            <p>5.29%</p>
                                                            <span>$79.00</span>
                                                        </div>
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/11.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code flex-direction-column">
                                                        <p>Coupon Code</p>
                                                        <span class="d-block">2415</span>
                                                    </div>
                                                    <div class="logo">
                                                        <img src="images/brand/09.png" alt="ekomart">
                                                    </div>
                                                    <div class="indec">
                                                        <div class="left">
                                                            <p>5.29%</p>
                                                            <span>$79.00</span>
                                                        </div>
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/11.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code flex-direction-column">
                                                        <p>Coupon Code</p>
                                                        <span class="d-block">2415</span>
                                                    </div>
                                                    <div class="logo">
                                                        <img src="images/brand/10.png" alt="ekomart">
                                                    </div>
                                                    <div class="indec">
                                                        <div class="left">
                                                            <p>5.29%</p>
                                                            <span>$79.00</span>
                                                        </div>
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-4 col-lg-12">
                                        <div class="rop-product-right">
                                            <div class="top-product-area-start">
                                                <div class="between-area-top">
                                                    <div class="left-area">
                                                        <h4 class="title">Top Countries Sales</h4>
                                                        <span>Top Products List</span>
                                                    </div>
                                                    <div class="single-select">
                                                        <select style="display: none;">
                                                            <option data-display="View all">View all</option>
                                                            <option value="1">Some option</option>
                                                            <option value="2">Another option</option>
                                                            <option value="3" disabled="">A disabled option</option>
                                                            <option value="4">Potato</option>
                                                        </select>
                                                        <div class="nice-select" tabindex="0"><span class="current">View
                                                                all</span>
                                                            <ul class="list">
                                                                <li data-value="Default Sorting" data-display="View all"
                                                                    class="option selected">
                                                                    Default Sorting</li>
                                                                <li data-value="1" class="option">Some option</li>
                                                                <li data-value="2" class="option">Another option
                                                                </li>
                                                                <li data-value="3" class="option disabled">A
                                                                    disabled
                                                                    option</li>
                                                                <li data-value="4" class="option">Potato</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/brand/02.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--0">USA</p>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                    <div class="coupon-code">
                                                        <p>6,546</p>
                                                    </div>

                                                    <div class="indec mr--0">
                                                        <p>04 Jul 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/brand/02.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--0">Fracnh</p>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                    <div class="coupon-code">
                                                        <p>6,546</p>
                                                    </div>

                                                    <div class="indec mr--0">
                                                        <p>04 Jul 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/brand/03.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--0">India</p>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                    <div class="coupon-code">
                                                        <p>6,546</p>
                                                    </div>

                                                    <div class="indec mr--0">
                                                        <p>04 Jul 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/brand/04.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--0">italy</p>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                    <div class="coupon-code">
                                                        <p>6,546</p>
                                                    </div>

                                                    <div class="indec mr--0">
                                                        <p>04 Jul 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/brand/05.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--0">japan</p>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                    <div class="coupon-code">
                                                        <p>6,546</p>
                                                    </div>

                                                    <div class="indec mr--0">
                                                        <p>04 Jul 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/brand/06.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--0">Koria</p>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                    <div class="coupon-code">
                                                        <p>6,546</p>
                                                    </div>

                                                    <div class="indec mr--0">
                                                        <p>04 Jul 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/brand/07.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--0">Indor</p>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                    <div class="coupon-code">
                                                        <p>6,546</p>
                                                    </div>

                                                    <div class="indec mr--0">
                                                        <p>04 Jul 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/brand/05.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--0">Vutan</p>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <img src="images/brand/arrow-m.png" alt="ekomart">
                                                    </div>
                                                    <div class="coupon-code">
                                                        <p>6,546</p>
                                                    </div>

                                                    <div class="indec mr--0">
                                                        <p>04 Jul 2024</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- top-product area end -->
                                <div class="row g-5 mt--10">
                                    <div class="col-xl-6 col-lg-12">
                                        <div class="best-shop-seller-top-scroll">
                                            <div class="top-product-area-start">
                                                <div class="between-area-top">
                                                    <div class="left-area">
                                                        <h4 class="title">Orders</h4>
                                                    </div>
                                                    <div class="single-select">
                                                        <select style="display: none;">
                                                            <option data-display="This Week">This Week</option>
                                                            <option value="1">Some option</option>
                                                            <option value="2">Another option</option>
                                                            <option value="3" disabled="">A disabled option</option>
                                                            <option value="4">Potato</option>
                                                        </select>
                                                        <div class="nice-select" tabindex="0"><span class="current">This
                                                                Week</span>
                                                            <ul class="list">
                                                                <li data-value="Default Sorting"
                                                                    data-display="This Week" class="option selected">
                                                                    Default Sorting</li>
                                                                <li data-value="1" class="option">Last Week</li>
                                                                <li data-value="2" class="option">3 Month</li>
                                                                <li data-value="4" class="option">6 Month</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/08.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <p>$86.00</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <p>5 June 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/09.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <p>$86.00</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <p>5 June 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/10.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <p>$86.00</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <p>5 June 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/11.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <p>$86.00</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <p>5 June 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/12.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <p>$86.00</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <p>5 June 2024</p>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/13.jpg" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p>Quaker Oats Healthy Meal...</p>
                                                            <span>500 Items</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code">
                                                        <p>$86.00</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <p>5 June 2024</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-lg-12">
                                        <div class="best-shop-seller-top-scroll">
                                            <div class="top-product-area-start">
                                                <div class="between-area-top">
                                                    <div class="left-area">
                                                        <h4 class="title">Best Shop Sellers</h4>
                                                    </div>
                                                    <div class="single-select">
                                                        <select style="display: none;">
                                                            <option data-display="View all">View all</option>
                                                            <option value="1">Some option</option>
                                                            <option value="2">Another option</option>
                                                            <option value="3" disabled="">A disabled option</option>
                                                            <option value="4">Potato</option>
                                                        </select>
                                                        <div class="nice-select" tabindex="0"><span class="current">last
                                                                Week</span>
                                                            <ul class="list">
                                                                <li data-value="Default Sorting"
                                                                    data-display="last Week" class="option selected">
                                                                    Last Week</li>
                                                                <li data-value="1" class="option">1 Month</li>
                                                                <li data-value="2" class="option">3 Month</li>
                                                                <li data-value="4" class="option">6 Month</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/01.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--5">Robert</p>
                                                            <span>75 Purchases</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code justify-content-center">
                                                        <p>Food, Grocery</p>
                                                    </div>
                                                    <div class="coupon-code justify-content-center">
                                                        <p>$1,000</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <img src="images/grocery/02.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/03.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--5">mark Henri</p>
                                                            <span>75 Purchases</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code justify-content-center">
                                                        <p>Juice, Grocery</p>
                                                    </div>
                                                    <div class="coupon-code justify-content-center">
                                                        <p>$1,000</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <img src="images/grocery/02.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/04.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--5">Krisob Kadri</p>
                                                            <span>75 Purchases</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code justify-content-center">
                                                        <p>Food, Grocery</p>
                                                    </div>
                                                    <div class="coupon-code justify-content-center">
                                                        <p>$1,000</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <img src="images/grocery/02.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/05.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--5">Koriana Joo</p>
                                                            <span>75 Purchases</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code justify-content-center">
                                                        <p>Food, Grocery</p>
                                                    </div>
                                                    <div class="coupon-code justify-content-center">
                                                        <p>$1,000</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <img src="images/grocery/02.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/06.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--5">Marlee</p>
                                                            <span>75 Purchases</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code justify-content-center">
                                                        <p>Food, Grocery</p>
                                                    </div>
                                                    <div class="coupon-code justify-content-center">
                                                        <p>$1,000</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <img src="images/grocery/02.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/01.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--5">John Brush</p>
                                                            <span>75 Purchases</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code justify-content-center">
                                                        <p>Food, Grocery</p>
                                                    </div>
                                                    <div class="coupon-code justify-content-center">
                                                        <p>$1,000</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <img src="images/grocery/02.png" alt="ekomart">
                                                    </div>
                                                </div>
                                                <div class="product-top-area-single bottom">
                                                    <div class="image-area">
                                                        <a href="#" class="thumbnail">
                                                            <img src="images/grocery/03.png" alt="grocery">
                                                        </a>
                                                        <div class="information">
                                                            <p class="mb--5">Robert</p>
                                                            <span>75 Purchases</span>
                                                        </div>
                                                    </div>

                                                    <div class="coupon-code justify-content-center">
                                                        <p>Food, Grocery</p>
                                                    </div>
                                                    <div class="coupon-code justify-content-center">
                                                        <p>$1,000</p>
                                                    </div>
                                                    <div class="indec mr--0">
                                                        <img src="images/grocery/02.png" alt="ekomart">
                                                    </div>
                                                </div>
                                            </div>
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