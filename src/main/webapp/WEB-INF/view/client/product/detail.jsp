<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>${product.name} - ZOA Mart</title>
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

                    <div class="rts-chop-details-area rts-section-gap bg_light-1">
                        <div class="container">
                            <div class="shopdetails-style-1-wrapper">
                                <div class="row g-5">
                                    <div class="col-xl-8 col-lg-8 col-md-12">
                                        <div class="product-details-popup-wrapper in-shopdetails">
                                            <div
                                                class="rts-product-details-section rts-product-details-section2 product-details-popup-section">
                                                <div class="product-details-popup">
                                                    <div class="details-product-area">
                                                        <div class="product-thumb-area">
                                                            <div class="cursor"></div>
                                                            <div class="thumb-wrapper one filterd-items figure">
                                                                <div class="product-thumb zoom"
                                                                    onmousemove="zoom(event)"
                                                                    style=" background-image: url(/img/products/${product.imageUrl}); ">
                                                                    <img src=" /img/products/${product.imageUrl}"
                                                                        alt="product-thumb"
                                                                        style="width: 448px; object-fit: contain;">
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="contents">
                                                            <div class="product-status">
                                                                <span
                                                                    class="product-catagory">${product.categoryName}</span>
                                                                <div class="rating-stars-group">
                                                                    <div class="rating-star"><i class="fas fa-star"></i>
                                                                    </div>
                                                                    <div class="rating-star"><i class="fas fa-star"></i>
                                                                    </div>
                                                                    <div class="rating-star"><i
                                                                            class="fas fa-star-half-alt"></i></div>
                                                                    <span>10 Reviews</span>
                                                                </div>
                                                            </div>
                                                            <h2 class="product-title">${product.name}
                                                            </h2>
                                                            <p class="mt--20 mb--20">
                                                                ${product.desShort}
                                                            </p>
                                                            <span class="product-price mb--15 d-block"
                                                                style="color: #DC2626; font-weight: 600;">
                                                                <fmt:formatNumber
                                                                    value="${(product.price - (product.price * product.discountPercent / 100)) - ((product.price - (product.price * product.discountPercent / 100)) % 1)}"
                                                                    type="number" groupingUsed="true" /> đ
                                                                <span class="old-price ml--15">
                                                                    <fmt:formatNumber value="${product.price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                            </span>
                                                            <form action="/add-product-detail-to-cart/${product.id}"
                                                                method="post">
                                                                <div class="product-bottom-action">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <div class="cart-edits">
                                                                        <div class="quantity-edit action-item">
                                                                            <button type="button" class="button"><i
                                                                                    class="fal fa-minus minus"></i></button>
                                                                            <input type="text" class="input"
                                                                                name="quantity" value="01" />
                                                                            <button type="button"
                                                                                class="button plus">+<i
                                                                                    class="fal fa-plus plus"></i></button>
                                                                        </div>
                                                                    </div>
                                                                    <button type="submit"
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
                                                                    </button>
                                                                </div>
                                                            </form>
                                                            <div class="product-uniques">
                                                                <span class="sku product-unipue mb--10"><span
                                                                        style="font-weight: 400; margin-right: 10px;">Số
                                                                        lượng:
                                                                    </span>
                                                                    ${product.quantity} Pack</span>
                                                                <span class="catagorys product-unipue mb--10"><span
                                                                        style="font-weight: 400; margin-right: 10px;">Đã
                                                                        bán:
                                                                    </span> ${product.sold} Pack</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="product-discription-tab-shop mt--50">
                                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link active" id="profile-tab"
                                                        data-bs-toggle="tab" data-bs-target="#profile-tab-pane"
                                                        type="button" role="tab" aria-controls="profile-tab-pane"
                                                        aria-selected="false">Chi tiết
                                                        sản phẩm</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button class="nav-link" id="profile-tabt" data-bs-toggle="tab"
                                                        data-bs-target="#profile-tab-panes" type="button" role="tab"
                                                        aria-controls="profile-tab-panes" aria-selected="false">Đánh
                                                        giá
                                                        sản phẩm
                                                    </button>
                                                </li>
                                            </ul>
                                            <div class="tab-content" id="myTabContent">
                                                <div class="tab-pane fade show active" id="profile-tab-pane"
                                                    role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
                                                    <div class="single-tab-content-shop-details">
                                                        <p class="disc">
                                                            ${product.desDetail}
                                                        </p>
                                                        <div class="table-responsive table-shop-details-pd">
                                                            <table class="table">
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Danh mục</td>
                                                                        <td>${product.categoryName}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Kho</td>
                                                                        <td>${product.quantity}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Đã bán</td>
                                                                        <td>${product.sold}</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Mã sản phẩm</td>
                                                                        <td>${product.id}</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <p class="cansellation mt--20">
                                                            <span> Chính sách đổi/trả:</span> Sau khi đơn hàng đã được
                                                            giao
                                                            thành công, chúng tôi không hỗ trợ thay đổi hoặc hủy đơn.
                                                            Nếu
                                                            phát hiện sản phẩm có vấn đề về chất lượng hoặc số lượng,
                                                            khách
                                                            hàng có thể yêu cầu đổi/trả ngay tại thời điểm nhận
                                                            hàng, với sự xác nhận của nhân viên giao hàng.
                                                        </p>
                                                        <p class="note">
                                                            <span>Lưu ý:</span> Thời gian giao hàng có thể thay đổi tùy
                                                            theo
                                                            tình trạng hàng trong kho.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="profile-tab-panes" role="tabpanel"
                                                    aria-labelledby="profile-tabt" tabindex="0">
                                                    <div class="single-tab-content-shop-details">
                                                        <div class="product-details-review-product-style">
                                                            <div class="average-stars-area-left">
                                                                <div class="top-stars-wrapper">
                                                                    <h4 class="review">
                                                                        5.0
                                                                    </h4>
                                                                    <div class="rating-disc">
                                                                        <span>Average Rating</span>
                                                                        <div class="stars">
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <span>(1 Reviews & 0 Ratings)</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="average-stars-area">
                                                                    <h4 class="average">66.7%</h4>
                                                                    <span>Recommended
                                                                        (2 of 3)</span>
                                                                </div>
                                                                <div class="review-charts-details">
                                                                    <div class="single-review">
                                                                        <div class="stars">
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                        </div>
                                                                        <div class="single-progress-area-incard">
                                                                            <div class="progress">
                                                                                <div class="progress-bar wow fadeInLeft"
                                                                                    role="progressbar"
                                                                                    style="width: 80%"
                                                                                    aria-valuenow="25" aria-valuemin="0"
                                                                                    aria-valuemax="100"></div>
                                                                            </div>
                                                                        </div>
                                                                        <span class="pac">100%</span>
                                                                    </div>
                                                                    <div class="single-review">
                                                                        <div class="stars">
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                        </div>
                                                                        <div class="single-progress-area-incard">
                                                                            <div class="progress">
                                                                                <div class="progress-bar wow fadeInLeft"
                                                                                    role="progressbar"
                                                                                    style="width: 80%"
                                                                                    aria-valuenow="25" aria-valuemin="0"
                                                                                    aria-valuemax="100"></div>
                                                                            </div>
                                                                        </div>
                                                                        <span class="pac">80%</span>
                                                                    </div>
                                                                    <div class="single-review">
                                                                        <div class="stars">
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                        </div>
                                                                        <div class="single-progress-area-incard">
                                                                            <div class="progress">
                                                                                <div class="progress-bar wow fadeInLeft"
                                                                                    role="progressbar"
                                                                                    style="width: 60%"
                                                                                    aria-valuenow="25" aria-valuemin="0"
                                                                                    aria-valuemax="100"></div>
                                                                            </div>
                                                                        </div>
                                                                        <span class="pac">60%</span>
                                                                    </div>
                                                                    <div class="single-review">
                                                                        <div class="stars">
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                        </div>
                                                                        <div class="single-progress-area-incard">
                                                                            <div class="progress">
                                                                                <div class="progress-bar wow fadeInLeft"
                                                                                    role="progressbar"
                                                                                    style="width: 80%"
                                                                                    aria-valuenow="25" aria-valuemin="0"
                                                                                    aria-valuemax="100"></div>
                                                                            </div>
                                                                        </div>
                                                                        <span class="pac">40%</span>
                                                                    </div>
                                                                    <div class="single-review">
                                                                        <div class="stars">
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                            <i class="fa-regular fa-star"></i>
                                                                        </div>
                                                                        <div class="single-progress-area-incard">
                                                                            <div class="progress">
                                                                                <div class="progress-bar wow fadeInLeft"
                                                                                    role="progressbar"
                                                                                    style="width: 80%"
                                                                                    aria-valuenow="25" aria-valuemin="0"
                                                                                    aria-valuemax="100"></div>
                                                                            </div>
                                                                        </div>
                                                                        <span class="pac">30%</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="submit-review-area">
                                                                <form action="#" class="submit-review-area">
                                                                    <h5 class="title">Gửi Đánh Giá Của Bạn</h5>
                                                                    <div class="your-rating">
                                                                        <span>Xếp Hạng Của Bạn Cho Sản Phẩm Này :</span>
                                                                        <div class="stars">
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                            <i class="fa-solid fa-star"></i>
                                                                        </div>
                                                                    </div>
                                                                    <div class="half-input-wrapper">
                                                                        <div class="half-input">
                                                                            <input type="text" placeholder="Your Name*">
                                                                        </div>
                                                                        <div class="half-input">
                                                                            <input type="text"
                                                                                placeholder="Your Email *">
                                                                        </div>
                                                                    </div>
                                                                    <textarea name="#" id="#"
                                                                        placeholder="Write Your Review"
                                                                        required></textarea>
                                                                    <button class="rts-btn btn-primary">Gửi Đánh
                                                                        Giá</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <jsp:include page="sidebar-right.jsp" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="rts-grocery-feature-area rts-section-gap bg_light-1">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="title-area-between">
                                        <h2 class="title-left">
                                            Có thể bạn sẽ thích
                                        </h2>
                                        <div class="next-prev-swiper-wrapper">
                                            <div class="swiper-button-prev" tabindex="0" role="button"
                                                aria-label="Previous slide"
                                                aria-controls="swiper-wrapper-6820acdb7c98fa1f">
                                                <i class="fa-regular fa-chevron-left"></i>
                                            </div>
                                            <div class="swiper-button-next" tabindex="0" role="button"
                                                aria-label="Next slide" aria-controls="swiper-wrapper-6820acdb7c98fa1f">
                                                <i class="fa-regular fa-chevron-right"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="category-area-main-wrapper-one">
                                        <div class="swiper mySwiper-category-1 swiper-data swiper-container-initialized swiper-container-horizontal swiper-container-pointer-events"
                                            data-swiper="{
                                            &quot;spaceBetween&quot;:16,
                                            &quot;slidesPerView&quot;:6,
                                            &quot;loop&quot;: true,
                                            &quot;speed&quot;: 700,
                                            &quot;navigation&quot;:{
                                                &quot;nextEl&quot;:&quot;.swiper-button-next&quot;,
                                                &quot;prevEl&quot;:&quot;.swiper-button-prev&quot;
                                            },
                                            &quot;breakpoints&quot;:{
                                            &quot;0&quot;:{
                                                &quot;slidesPerView&quot;:1,
                                                &quot;spaceBetween&quot;: 12},
                                            &quot;320&quot;:{
                                                &quot;slidesPerView&quot;:1,
                                                &quot;spaceBetween&quot;:12},
                                            &quot;480&quot;:{
                                                &quot;slidesPerView&quot;:2,
                                                &quot;spaceBetween&quot;:12},
                                            &quot;640&quot;:{
                                                &quot;slidesPerView&quot;:4,
                                                &quot;spaceBetween&quot;:16},
                                            &quot;840&quot;:{
                                                &quot;slidesPerView&quot;:4,
                                                &quot;spaceBetween&quot;:16},
                                            &quot;1140&quot;:{
                                                &quot;slidesPerView&quot;:6,
                                                &quot;spaceBetween&quot;:16}
                                            }
                                        }">
                                            <div class="swiper-wrapper" id="swiper-wrapper-6820acdb7c98fa1f"
                                                aria-live="polite"
                                                style="transform: translate3d(-2511.67px, 0px, 0px); transition-duration: 0ms;">
                                                <!-- single swiper start -->
                                                <div class="swiper-slide" data-swiper-slide-index="0"
                                                    style="width: 235.167px; margin-right: 16px;" role="group"
                                                    aria-label="1 / 7">
                                                    <div class="single-shopping-card-one">
                                                        <!-- iamge and sction area start -->
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${products[0].id}"
                                                                class="thumbnail-preview">
                                                                <div class="badge">
                                                                    <span>${products[0].discountPercent}% <br>
                                                                        Off
                                                                    </span>
                                                                    <i class="fa-solid fa-bookmark"></i>
                                                                </div>
                                                                <img src="/img/products/${products[0].imageUrl}"
                                                                    alt="${products[0].name}"
                                                                    style="width: 205px; height: 178px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <!-- iamge and sction area start -->

                                                        <div class="body-content">
                                                            <a href="/product/${products[0].id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${products[0].name}</h4>
                                                            </a>
                                                            <span class="availability">${products[0].quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(products[0].price - (products[0].price * products[0].discountPercent / 100)) - ((products[0].price - (products[0].price * products[0].discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${products[0].price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <form action="/add-product-detail-to-cart/${products[0].id}"
                                                                method="post">
                                                                <div class="cart-counter-action">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <div class="quantity-edit">
                                                                        <input type="text" class="input" name="quantity"
                                                                            value="1">
                                                                        <div class="button-wrapper-action">
                                                                            <button type="button" class="button"><i
                                                                                    class="fa-regular fa-chevron-down"></i></button>
                                                                            <button type="button"
                                                                                class="button plus">+<i
                                                                                    class="fa-regular fa-chevron-up"></i></button>
                                                                        </div>
                                                                    </div>
                                                                    <button type="submit"
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
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single swiper start -->
                                                <!-- single swiper start -->
                                                <div class="swiper-slide" data-swiper-slide-index="1"
                                                    style="width: 235.167px; margin-right: 16px;" role="group"
                                                    aria-label="2 / 7">
                                                    <div class="single-shopping-card-one">
                                                        <!-- iamge and sction area start -->
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${products[1].id}"
                                                                class="thumbnail-preview">
                                                                <div class="badge">
                                                                    <span>${products[1].discountPercent}% <br>
                                                                        Off
                                                                    </span>
                                                                    <i class="fa-solid fa-bookmark"></i>
                                                                </div>
                                                                <img src="/img/products/${products[1].imageUrl}"
                                                                    alt="${products[1].name}"
                                                                    style="width: 205px; height: 178px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <!-- iamge and sction area start -->

                                                        <div class="body-content">
                                                            <a href="/product/${products[1].id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${products[1].name}</h4>
                                                            </a>
                                                            <span class="availability">${products[1].quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(products[1].price - (products[1].price * products[1].discountPercent / 100)) - ((products[1].price - (products[1].price * products[1].discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${products[1].price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <form action="/add-product-detail-to-cart/${products[1].id}"
                                                                method="post">
                                                                <div class="cart-counter-action">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <div class="quantity-edit">
                                                                        <input type="text" class="input" name="quantity"
                                                                            value="1">
                                                                        <div class="button-wrapper-action">
                                                                            <button type="button" class="button"><i
                                                                                    class="fa-regular fa-chevron-down"></i></button>
                                                                            <button type="button"
                                                                                class="button plus">+<i
                                                                                    class="fa-regular fa-chevron-up"></i></button>
                                                                        </div>
                                                                    </div>
                                                                    <button type="submit"
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
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single swiper start -->
                                                <!-- single swiper start -->
                                                <div class="swiper-slide" data-swiper-slide-index="2"
                                                    style="width: 235.167px; margin-right: 16px;" role="group"
                                                    aria-label="3 / 7">
                                                    <div class="single-shopping-card-one">
                                                        <!-- iamge and sction area start -->
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${products[2].id}"
                                                                class="thumbnail-preview">
                                                                <div class="badge">
                                                                    <span>${products[2].discountPercent}% <br>
                                                                        Off
                                                                    </span>
                                                                    <i class="fa-solid fa-bookmark"></i>
                                                                </div>
                                                                <img src="/img/products/${products[2].imageUrl}"
                                                                    alt="${products[2].name}"
                                                                    style="width: 205px; height: 178px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <!-- iamge and sction area start -->

                                                        <div class="body-content">
                                                            <a href="/product/${products[2].id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${products[2].name}</h4>
                                                            </a>
                                                            <span class="availability">${products[2].quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(products[2].price - (products[2].price * products[2].discountPercent / 100)) - ((products[2].price - (products[2].price * products[2].discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${products[2].price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <form action="/add-product-detail-to-cart/${products[2].id}"
                                                                method="post">
                                                                <div class="cart-counter-action">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <div class="quantity-edit">
                                                                        <input type="text" class="input" name="quantity"
                                                                            value="1">
                                                                        <div class="button-wrapper-action">
                                                                            <button type="button" class="button"><i
                                                                                    class="fa-regular fa-chevron-down"></i></button>
                                                                            <button type="button"
                                                                                class="button plus">+<i
                                                                                    class="fa-regular fa-chevron-up"></i></button>
                                                                        </div>
                                                                    </div>
                                                                    <button type="submit"
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
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single swiper start -->
                                                <!-- single swiper start -->
                                                <div class="swiper-slide swiper-slide-prev" data-swiper-slide-index="3"
                                                    style="width: 235.167px; margin-right: 16px;" role="group"
                                                    aria-label="4 / 7">
                                                    <div class="single-shopping-card-one">
                                                        <!-- iamge and sction area start -->
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${products[3].id}"
                                                                class="thumbnail-preview">
                                                                <div class="badge">
                                                                    <span>${products[3].discountPercent}% <br>
                                                                        Off
                                                                    </span>
                                                                    <i class="fa-solid fa-bookmark"></i>
                                                                </div>
                                                                <img src="/img/products/${products[3].imageUrl}"
                                                                    alt="${products[3].name}"
                                                                    style="width: 205px; height: 178px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <!-- iamge and sction area start -->

                                                        <div class="body-content">
                                                            <a href="/product/${products[3].id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${products[3].name}</h4>
                                                            </a>
                                                            <span class="availability">${products[3].quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(products[3].price - (products[3].price * products[3].discountPercent / 100)) - ((products[3].price - (products[3].price * products[3].discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${products[3].price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <form action="/add-product-detail-to-cart/${products[3].id}"
                                                                method="post">
                                                                <div class="cart-counter-action">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <div class="quantity-edit">
                                                                        <input type="text" class="input" name="quantity"
                                                                            value="1">
                                                                        <div class="button-wrapper-action">
                                                                            <button type="button" class="button"><i
                                                                                    class="fa-regular fa-chevron-down"></i></button>
                                                                            <button type="button"
                                                                                class="button plus">+<i
                                                                                    class="fa-regular fa-chevron-up"></i></button>
                                                                        </div>
                                                                    </div>
                                                                    <button type="submit"
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
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single swiper start -->
                                                <!-- single swiper start -->
                                                <div class="swiper-slide swiper-slide-active"
                                                    data-swiper-slide-index="4"
                                                    style="width: 235.167px; margin-right: 16px;" role="group"
                                                    aria-label="5 / 7">
                                                    <div class="single-shopping-card-one">
                                                        <!-- iamge and sction area start -->
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${products[4].id}"
                                                                class="thumbnail-preview">
                                                                <div class="badge">
                                                                    <span>${products[4].discountPercent}% <br>
                                                                        Off
                                                                    </span>
                                                                    <i class="fa-solid fa-bookmark"></i>
                                                                </div>
                                                                <img src="/img/products/${products[4].imageUrl}"
                                                                    alt="${products[4].name}"
                                                                    style="width: 205px; height: 178px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <!-- iamge and sction area start -->

                                                        <div class="body-content">
                                                            <a href="/product/${products[4].id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${products[4].name}</h4>
                                                            </a>
                                                            <span class="availability">${products[4].quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(products[4].price - (products[4].price * products[4].discountPercent / 100)) - ((products[4].price - (products[4].price * products[4].discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${products[4].price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <form action="/add-product-detail-to-cart/${products[4].id}"
                                                                method="post">
                                                                <div class="cart-counter-action">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <div class="quantity-edit">
                                                                        <input type="text" class="input" name="quantity"
                                                                            value="1">
                                                                        <div class="button-wrapper-action">
                                                                            <button type="button" class="button"><i
                                                                                    class="fa-regular fa-chevron-down"></i></button>
                                                                            <button type="button"
                                                                                class="button plus">+<i
                                                                                    class="fa-regular fa-chevron-up"></i></button>
                                                                        </div>
                                                                    </div>
                                                                    <button type="submit"
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
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single swiper start -->
                                                <!-- single swiper start -->
                                                <div class="swiper-slide swiper-slide-next" data-swiper-slide-index="5"
                                                    style="width: 235.167px; margin-right: 16px;" role="group"
                                                    aria-label="6 / 7">
                                                    <div class="single-shopping-card-one">
                                                        <!-- iamge and sction area start -->
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${products[5].id}"
                                                                class="thumbnail-preview">
                                                                <div class="badge">
                                                                    <span>${products[5].discountPercent}% <br>
                                                                        Off
                                                                    </span>
                                                                    <i class="fa-solid fa-bookmark"></i>
                                                                </div>
                                                                <img src="/img/products/${products[5].imageUrl}"
                                                                    alt="${products[5].name}"
                                                                    style="width: 205px; height: 178px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <!-- iamge and sction area start -->

                                                        <div class="body-content">
                                                            <a href="/product/${products[5].id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${products[5].name}</h4>
                                                            </a>
                                                            <span class="availability">${products[5].quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(products[5].price - (products[5].price * products[5].discountPercent / 100)) - ((products[5].price - (products[5].price * products[5].discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${products[5].price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <form action="/add-product-detail-to-cart/${products[5].id}"
                                                                method="post">
                                                                <div class="cart-counter-action">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <div class="quantity-edit">
                                                                        <input type="text" class="input" name="quantity"
                                                                            value="1">
                                                                        <div class="button-wrapper-action">
                                                                            <button type="button" class="button"><i
                                                                                    class="fa-regular fa-chevron-down"></i></button>
                                                                            <button type="button"
                                                                                class="button plus">+<i
                                                                                    class="fa-regular fa-chevron-up"></i></button>
                                                                        </div>
                                                                    </div>
                                                                    <button type="submit"
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
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single swiper start -->
                                                <!-- single swiper start -->
                                                <div class="swiper-slide" data-swiper-slide-index="6"
                                                    style="width: 235.167px; margin-right: 16px;" role="group"
                                                    aria-label="7 / 7">
                                                    <div class="single-shopping-card-one">
                                                        <!-- iamge and sction area start -->
                                                        <div class="image-and-action-area-wrapper">
                                                            <a href="/product/${products[6].id}"
                                                                class="thumbnail-preview">
                                                                <div class="badge">
                                                                    <span>${products[6].discountPercent}% <br>
                                                                        Off
                                                                    </span>
                                                                    <i class="fa-solid fa-bookmark"></i>
                                                                </div>
                                                                <img src="/img/products/${products[6].imageUrl}"
                                                                    alt="${products[6].name}"
                                                                    style="width: 205px; height: 178px; object-fit: contain;">
                                                            </a>
                                                        </div>
                                                        <!-- iamge and sction area start -->

                                                        <div class="body-content">
                                                            <a href="/product/${products[6].id}">
                                                                <h4 class="title"
                                                                    style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 100%; display: block;">
                                                                    ${products[6].name}</h4>
                                                            </a>
                                                            <span class="availability">${products[6].quantity}
                                                                Pack</span>
                                                            <div class="price-area">
                                                                <span class="current">
                                                                    <fmt:formatNumber
                                                                        value="${(products[6].price - (products[6].price * products[6].discountPercent / 100)) - ((products[6].price - (products[6].price * products[6].discountPercent / 100)) % 1)}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </span>
                                                                <div class="previous">
                                                                    <fmt:formatNumber value="${products[6].price}"
                                                                        type="number" groupingUsed="true" /> đ
                                                                </div>
                                                            </div>
                                                            <form action="/add-product-detail-to-cart/${products[6].id}"
                                                                method="post">
                                                                <div class="cart-counter-action">
                                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                                        value="${_csrf.token}" />
                                                                    <div class="quantity-edit">
                                                                        <input type="text" class="input" name="quantity"
                                                                            value="1">
                                                                        <div class="button-wrapper-action">
                                                                            <button type="button" class="button"><i
                                                                                    class="fa-regular fa-chevron-down"></i></button>
                                                                            <button type="button"
                                                                                class="button plus">+<i
                                                                                    class="fa-regular fa-chevron-up"></i></button>
                                                                        </div>
                                                                    </div>
                                                                    <button type="submit"
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
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- single swiper start -->
                                            </div>
                                            <span class="swiper-notification" aria-live="assertive"
                                                aria-atomic="true"></span>
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


                    <!-- plugins js -->
                    <script defer src="/js2/plugins.js"></script>

                    <!-- custom js -->
                    <script defer src="/js2/main.js"></script>
                    <!-- header style two End -->


                </body>

                </html>