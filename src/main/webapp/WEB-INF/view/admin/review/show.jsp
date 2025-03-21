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
                            <!-- vendor-grid-top-area start -->
                            <div class="vendor-grid-top-search-area" style="margin-bottom: 30px;">
                                <h5 class="title">Our reviews</h5>
                                <form action="#" class="input-area-search-head-vendor">
                                    <input type="text" placeholder="Search vendors (by name or ID)...">
                                    <a href="#" class="rts-btn btn-primary radious-sm with-icon">
                                        <div class="btn-text">
                                            Search
                                        </div>
                                        <div class="arrow-icon">
                                            <i class="fa-light fa-magnifying-glass"></i>
                                        </div>
                                        <div class="arrow-icon">
                                            <i class="fa-light fa-magnifying-glass"></i>
                                        </div>
                                    </a>
                                </form>
                            </div>
                            <!-- rts brand area start -->
                            <div class="transection">
                                <div class="vendor-list-main-wrapper product-wrapper">
                                    <div class="card-body table-product-select">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="example" class="display"
                                                cellspacing="0" width="100%">
                                                <thead class="mb--20">
                                                    <tr>
                                                        <th>Product Name</th>
                                                        <th>Product No</th>
                                                        <th>Name</th>
                                                        <th>Rating</th>
                                                        <th class="text-start">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/14.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/15.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/17.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/18.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/19.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/15.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/17.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/17.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/18.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/19.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/18.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/19.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/18.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="30%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-image-and-name">
                                                                    <a href="#" class="thumbnail">
                                                                        <img src="/images/grocery/19.png" alt="grocery">
                                                                    </a>
                                                                    <p>Purple Blue Gradient iPhone Case</p>
                                                                </div>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p>
                                                                #87845
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p>
                                                                    David Lion
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div class="rating-table">
                                                                <ul>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                    <li><i class="fa-solid fa-star"></i></li>
                                                                </ul>
                                                            </div>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table action">
                                                                <a href="#" class="rts-btn btn-primary">Details</a>
                                                                <img src="/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <!-- table-responsive.// -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- rts brand area end -->
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