<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>ZOA Mart</title>
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

                <!-- banner area two start -->
                <jsp:include page="../layout/banner.jsp" />
                <!-- banner area two end -->

                <!-- weekly best seller area start -->
                <div class="weekly-best-seller-area rts-section-gap bg_light-1">
                    <div class="container-2">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="titlw-area-between-best-seller-anim">
                                    <h2 class="title">
                                        Hàng mới về
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <div class="row g-4 mt--10">
                            <c:forEach var="product" items="${productsLatest}">
                                <div class="col-lg-3 col-md-6 col-sm-6 col-12">
                                    <div class="single-shopping-card-one">
                                        <!-- iamge and sction area start -->
                                        <div class="image-and-action-area-wrapper">
                                            <a href="/product/${product.id}" class="thumbnail-preview">
                                                <div class="badge">
                                                    <span>${product.discountPercent}%<br> OFF
                                                    </span>
                                                    <i class="fa-solid fa-bookmark"></i>
                                                </div>
                                                <img src="/img/products/${product.imageUrl}" alt="${product.name}"
                                                    style="width: 293px; height: 255px; object-fit: contain;">
                                            </a>
                                        </div>
                                        <!-- iamge and sction area start -->
                                        <div class="body-content">
                                            <a href="/product/${product.id}">
                                                <h4 class="title"
                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                    ${product.name}</h4>
                                            </a>
                                            <span class="availability">${product.quantity} Pack</span>
                                            <div class="price-area">
                                                <span class="current">
                                                    <fmt:formatNumber
                                                        value="${(product.price - (product.price * product.discountPercent / 100)) - ((product.price - (product.price * product.discountPercent / 100)) % 1)}"
                                                        type="number" groupingUsed="true" /> đ
                                                </span>
                                                <div class="previous">
                                                    <fmt:formatNumber value="${product.price}" type="number"
                                                        groupingUsed="true" /> đ
                                                </div>
                                            </div>
                                            <div class="cart-counter-action">
                                                <div class="quantity-edit">
                                                    <input type="text" class="input" value="1">
                                                    <div class="button-wrapper-action">
                                                        <button class="button"><i
                                                                class="fa-regular fa-chevron-down"></i></button>
                                                        <button class="button plus">+<i
                                                                class="fa-regular fa-chevron-up"></i></button>
                                                    </div>
                                                </div>
                                                <a href="cart.html" class="rts-btn btn-primary radious-sm with-icon">
                                                    <div class="btn-text">
                                                        Thêm vào giỏ
                                                    </div>
                                                    <div class="arrow-icon">
                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                    </div>
                                                    <div class="arrow-icon">
                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- weekly best seller area end -->

                <!-- rts shorts service area start -->
                <jsp:include page="../layout/service.jsp" />
                <!-- rts shorts service area end -->

                <!-- deal of the day area start -->

                <div class="rts-deal-ofthe-day rts-section-gap">
                    <div class="container-2">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="titlw-area-between-best-seller-anim">
                                    <h2 class="title">
                                        Mua nhiều nhất
                                    </h2>
                                </div>
                            </div>
                        </div>
                        <div class="row g-4 mt--10">
                            <c:forEach var="product" items="${productsSoldOut}">
                                <div class="col-lg-20 col-md-4 col-sm-6 col-12">
                                    <div class="single-shopping-card-one deals-of-day">
                                        <div class="onsale-offer">
                                            <span>Bán chạy</span>
                                        </div>
                                        <div class="image-and-action-area-wrapper">
                                            <a href="/product/${product.id}" class="thumbnail-preview">
                                                <img src="/img/products/${product.imageUrl}" alt="${product.name}"
                                                    style="width: 225px; height: 195px; object-fit: contain;">
                                            </a>
                                        </div>

                                        <div class="body-content">
                                            <div class="start-area-rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                            </div>
                                            <a href="/product/${product.id}">
                                                <h4 class="title"
                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                    ${product.name}</h4>
                                            </a>
                                            <span class="availability">${product.quantity} Pack</span>
                                            <div class="price-area">
                                                <span class="current">
                                                    <fmt:formatNumber
                                                        value="${(product.price - (product.price * product.discountPercent / 100)) - ((product.price - (product.price * product.discountPercent / 100)) % 1)}"
                                                        type="number" groupingUsed="true" /> đ
                                                </span>
                                                <div class="previous">
                                                    <fmt:formatNumber value="${product.price}" type="number"
                                                        groupingUsed="true" /> đ
                                                </div>
                                            </div>
                                            <div class="cart-counter-action">
                                                <a href="cart.html" class="rts-btn btn-primary radious-sm with-icon">
                                                    <div class="btn-text">
                                                        Thêm vào giỏ
                                                    </div>
                                                    <div class="arrow-icon">
                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                    </div>
                                                    <div class="arrow-icon">
                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <!-- deal of the day area end -->

                <!-- rts offer area start -->
                <jsp:include page="../layout/offer.jsp" />
                <!-- rts offer area end -->

                <!-- popular product area start -->
                <div class="popular-product-weekly-seller-item rts-section-gap bg_light-1">
                    <div class="container-2">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="title-area-between mb--15">
                                    <h2 class="title-left">
                                        Giá sốc hôm nay
                                    </h2>
                                    <ul class="nav nav-tabs best-selling-grocery" id="myTab" role="tablist">
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link active" id="home-tabz" data-bs-toggle="tab"
                                                data-bs-target="#home" type="button" role="tab" aria-controls="home"
                                                aria-selected="true">Rau - Củ - Quả</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="profile-tab" data-bs-toggle="tab"
                                                data-bs-target="#profile" type="button" role="tab"
                                                aria-controls="profile" aria-selected="false">Thịt - Hải -
                                                Sản</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="contact-tab" data-bs-toggle="tab"
                                                data-bs-target="#contact" type="button" role="tab"
                                                aria-controls="contact" aria-selected="false">Thực Phẩm Khô -
                                                Mì</button>
                                        </li>
                                        <li class="nav-item" role="presentation">
                                            <button class="nav-link" id="vitamine-tab" data-bs-toggle="tab"
                                                data-bs-target="#vitamine" type="button" role="tab"
                                                aria-controls="vitamine" aria-selected="false">Bánh Kẹo - Đồ
                                                Uống</button>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="tab-content" id="myTabContentd">

                                    <!-- first tabs area start-->
                                    <div class="tab-pane fade show active" id="home" role="tabpanel"
                                        aria-labelledby="home-tabz">
                                        <div class="row g-4 mt--0">
                                            <c:forEach var="product" items="${products1}">
                                                <div class="col-lg-20 col-md-4 col-sm-6 col-12">
                                                    <div class="single-shopping-card-one deals-of-day">
                                                        <div class="onsale-offer">
                                                            <span>${product.discountPercent}% OFF</span>
                                                        </div>
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${product.id}" class="thumbnail-preview">
                                                                <img src="/img/products/${product.imageUrl}"
                                                                    alt="${product.name}"
                                                                    style="width: 212px; height: 184px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <div class="body-content">
                                                            <div class="start-area-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                            </div>
                                                            <a href="/product/${product.id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${product.name}</h4>
                                                            </a>
                                                            <span class="availability">${product.quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(product.price - (product.price * product.discountPercent / 100)) - ((product.price - (product.price * product.discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${product.price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <div class="cart-counter-action">
                                                                <a href="cart.html"
                                                                    class="rts-btn btn-primary radious-sm with-icon">
                                                                    <div class="btn-text">
                                                                        Thêm vào giỏ
                                                                    </div>
                                                                    <div class="arrow-icon">
                                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                                    </div>
                                                                    <div class="arrow-icon">
                                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <!-- first tabs area start-->

                                    <div class="tab-pane fade" id="profile" role="tabpanel"
                                        aria-labelledby="profile-tab">
                                        <div class="row g-4 mt--0">
                                            <c:forEach var="product" items="${products2}">
                                                <div class="col-lg-20 col-md-4 col-sm-6 col-12">
                                                    <div class="single-shopping-card-one deals-of-day">
                                                        <div class="onsale-offer">
                                                            <span>${product.discountPercent}% OFF</span>
                                                        </div>
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${product.id}" class="thumbnail-preview">
                                                                <img src="/img/products/${product.imageUrl}"
                                                                    alt="${product.name}"
                                                                    style="width: 212px; height: 184px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <div class="body-content">
                                                            <div class="start-area-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                            </div>
                                                            <a href="/product/${product.id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${product.name}</h4>
                                                            </a>
                                                            <span class="availability">${product.quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(product.price - (product.price * product.discountPercent / 100)) - ((product.price - (product.price * product.discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${product.price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <div class="cart-counter-action">
                                                                <a href="cart.html"
                                                                    class="rts-btn btn-primary radious-sm with-icon">
                                                                    <div class="btn-text">
                                                                        Thêm vào giỏ
                                                                    </div>
                                                                    <div class="arrow-icon">
                                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                                    </div>
                                                                    <div class="arrow-icon">
                                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="contact" role="tabpanel"
                                        aria-labelledby="contact-tab">
                                        <div class="row g-4 mt--0">
                                            <c:forEach var="product" items="${products3}">
                                                <div class="col-lg-20 col-md-4 col-sm-6 col-12">
                                                    <div class="single-shopping-card-one deals-of-day">
                                                        <div class="onsale-offer">
                                                            <span>${product.discountPercent}% OFF</span>
                                                        </div>
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${product.id}" class="thumbnail-preview">
                                                                <img src="/img/products/${product.imageUrl}"
                                                                    alt="${product.name}"
                                                                    style="width: 212px; height: 184px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <div class="body-content">
                                                            <div class="start-area-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                            </div>
                                                            <a href="/product/${product.id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${product.name}</h4>
                                                            </a>
                                                            <span class="availability">${product.quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(product.price - (product.price * product.discountPercent / 100)) - ((product.price - (product.price * product.discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${product.price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <div class="cart-counter-action">
                                                                <a href="cart.html"
                                                                    class="rts-btn btn-primary radious-sm with-icon">
                                                                    <div class="btn-text">
                                                                        Thêm vào giỏ
                                                                    </div>
                                                                    <div class="arrow-icon">
                                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                                    </div>
                                                                    <div class="arrow-icon">
                                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="vitamine" role="tabpanel"
                                        aria-labelledby="vitamine-tab">
                                        <div class="row g-4 mt--0">
                                            <c:forEach var="product" items="${products4}">
                                                <div class="col-lg-20 col-md-4 col-sm-6 col-12">
                                                    <div class="single-shopping-card-one deals-of-day">
                                                        <div class="onsale-offer">
                                                            <span>${product.discountPercent}% OFF</span>
                                                        </div>
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${product.id}" class="thumbnail-preview">
                                                                <img src="/img/products/${product.imageUrl}"
                                                                    alt="${product.name}"
                                                                    style="width: 212px; height: 184px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <div class="body-content">
                                                            <div class="start-area-rating">
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                                <i class="fa-solid fa-star"></i>
                                                            </div>
                                                            <a href="/product/${product.id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${product.name}</h4>
                                                            </a>
                                                            <span class="availability">${product.quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(product.price - (product.price * product.discountPercent / 100)) - ((product.price - (product.price * product.discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${product.price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <div class="cart-counter-action">
                                                                <a href="cart.html"
                                                                    class="rts-btn btn-primary radious-sm with-icon">
                                                                    <div class="btn-text">
                                                                        Thêm vào giỏ
                                                                    </div>
                                                                    <div class="arrow-icon">
                                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                                    </div>
                                                                    <div class="arrow-icon">
                                                                        <i class="fa-regular fa-cart-shopping"></i>
                                                                    </div>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- popular product area end -->


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