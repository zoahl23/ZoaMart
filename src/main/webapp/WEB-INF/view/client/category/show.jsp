<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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

                    <jsp:include page="breadcrumb.jsp" />


                    <c:choose>
                        <c:when test="${not empty products}">
                            <!-- shop[ grid sidebar wrapper -->
                            <div class="shop-grid-sidebar-area rts-section-gap">
                                <div class="container">
                                    <div class="row g-0">
                                        <jsp:include page="sidebar.jsp" />
                                        <div class="col-xl-9 col-lg-12">
                                            <div class="tab-content" id="myTabContent">
                                                <div class="product-area-wrapper-shopgrid-list mt--20 tab-pane fade show active"
                                                    id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab"
                                                    tabindex="0">
                                                    <div class="row g-4">
                                                        <c:forEach var="product" items="${products}">
                                                            <div class="col-lg-20 col-lg-4 col-md-6 col-sm-6 col-12">
                                                                <div class="single-shopping-card-one">
                                                                    <!-- iamge and sction area start -->
                                                                    <div class="image-and-action-area-wrapper">
                                                                        <a href="/product/${product.id}"
                                                                            class="thumbnail-preview">
                                                                            <div class="badge">
                                                                                <span>${product.discountPercent}% <br>
                                                                                    Off
                                                                                </span>
                                                                                <i class="fa-solid fa-bookmark"></i>
                                                                            </div>
                                                                            <img src="/img/products/${product.imageUrl}"
                                                                                alt="${product.name}"
                                                                                style="width: 181px; height: 157px; object-fit: contain;">
                                                                        </a>
                                                                    </div>
                                                                    <!-- iamge and sction area start -->

                                                                    <div class="body-content">

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
                                                                                    type="number" groupingUsed="true" />
                                                                                đ
                                                                            </span>
                                                                            <div class="previous">
                                                                                <fmt:formatNumber
                                                                                    value="${product.price}"
                                                                                    type="number" groupingUsed="true" />
                                                                                đ
                                                                            </div>
                                                                        </div>
                                                                        <form
                                                                            action="/add-product-category-to-cart/${product.id}"
                                                                            method="post">
                                                                            <div class="cart-counter-action">
                                                                                <input type="hidden"
                                                                                    name="${_csrf.parameterName}"
                                                                                    value="${_csrf.token}" />
                                                                                <input type="hidden" name="currentPage"
                                                                                    value="${currentPage}" />
                                                                                <input type="hidden" name="categoryId"
                                                                                    value="${id}" />
                                                                                <div class="quantity-edit"
                                                                                    style="width: 100%; max-width: 100%;">
                                                                                    <input type="text" class="input"
                                                                                        name="quantity" value="1"
                                                                                        style="max-width: 30px;">
                                                                                    <div class="button-wrapper-action">
                                                                                        <button type="button"
                                                                                            class="button"><i
                                                                                                class="fa-regular fa-chevron-down"></i></button>
                                                                                        <button type="button"
                                                                                            class="button plus">+<i
                                                                                                class="fa-regular fa-chevron-up"></i></button>
                                                                                    </div>
                                                                                </div>
                                                                                <button type="submit" class=" rts-btn btn-primary radious-sm
                                                                            with-icon"
                                                                                    style="width: 100%; max-width: 100%; justify-content: center;">
                                                                                    <div class="btn-text">
                                                                                        Thêm vào giỏ
                                                                                    </div>
                                                                                    <div class="arrow-icon">
                                                                                        <i
                                                                                            class="fa-regular fa-cart-shopping"></i>
                                                                                    </div>
                                                                                    <div class="arrow-icon">
                                                                                        <i
                                                                                            class="fa-regular fa-cart-shopping"></i>
                                                                                    </div>
                                                                                    </a>
                                                                            </div>
                                                                        </form>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </c:forEach>
                                                    </div>
                                                    <div class="page-parrent">
                                                        <c:set var="maxPageShow" value="5" />
                                                        <c:set var="startPage" value="${currentPage - 2}" />
                                                        <c:set var="endPage" value="${currentPage + 2}" />

                                                        <c:if test="${startPage < 1}">
                                                            <c:set var="endPage" value="${endPage + (1 - startPage)}" />
                                                            <c:set var="startPage" value="1" />
                                                        </c:if>
                                                        <c:if test="${endPage > totalPages}">
                                                            <c:set var="startPage"
                                                                value="${startPage - (endPage - totalPages)}" />
                                                            <c:set var="endPage" value="${totalPages}" />
                                                        </c:if>
                                                        <c:if test="${startPage < 1}">
                                                            <c:set var="startPage" value="1" />
                                                        </c:if>
                                                        <!-- First & Prev -->
                                                        <a href="/products?category=${id}&page=1"
                                                            class="${currentPage == 1 ? 'page_button disabled-page' : 'page_button'}">First</a>
                                                        <a href="/products?category=${id}&page=${currentPage - 1}"
                                                            class="${currentPage == 1 ? 'page_button disabled-page' : 'page_button'}">Previous</a>

                                                        <!-- Dấu ... đầu nếu cần -->
                                                        <c:if test="${startPage > 1}">
                                                            <a href="/products?category=${id}&page=${currentPage - 1}"
                                                                class="${currentPage == 1 ? 'page_button disabled-page' : 'page_button'}">...</a>
                                                        </c:if>

                                                        <!-- Vòng lặp các trang hiển thị -->
                                                        <c:forEach var="i" begin="${startPage}" end="${endPage}">
                                                            <a href="/products?category=${id}&page=${i}"
                                                                class="${i == currentPage ? 'page_button current-page' : 'page_button'}">${i}</a>
                                                        </c:forEach>

                                                        <!-- Dấu ... cuối nếu cần -->
                                                        <c:if test="${endPage < totalPages}">
                                                            <a href="/products?category=${id}&page=${currentPage + 1}"
                                                                class="${currentPage == totalPages ? 'page_button disabled-page' : 'page_button'}">...</a>
                                                        </c:if>

                                                        <!-- Next & Last -->
                                                        <a href="/products?category=${id}&page=${currentPage + 1}"
                                                            class="${currentPage == totalPages ? 'page_button disabled-page' : 'page_button'}">Next</a>
                                                        <a href="/products?category=${id}&page=${totalPages}"
                                                            class="${currentPage == totalPages ? 'page_button disabled-page' : 'page_button'}">Last</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- shop[ grid sidebar wrapper end -->
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
                                                    <h2 class="title">Không tìm thấy sản phẩm</h2>
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