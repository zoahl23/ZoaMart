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
                                    <h3 class="title">Category</h3>
                                    <div class="button-wrapper">
                                        <button class="rts-btn btn-primary menu-btn">+ Add</button>
                                    </div>
                                </div>
                                <div class="vendor-list-main-wrapper product-wrapper">
                                    <div class="card-body table-product-select">
                                        <div class="table-responsive">
                                            <div id="example_wrapper" class="dataTables_wrapper no-footer">
                                                <div class="dataTables_length" id="example_length"><label>Show <select
                                                            name="example_length" aria-controls="example" class="">
                                                            <option value="10">10</option>
                                                            <option value="25">25</option>
                                                            <option value="50">50</option>
                                                            <option value="100">100</option>
                                                        </select> entries</label></div>
                                                <div id="example_filter" class="dataTables_filter"><label>Search:<input
                                                            type="search" class="" placeholder=""
                                                            aria-controls="example"></label></div>
                                                <table class="table table-hover" id="example" class="display"
                                                    cellspacing="0" width="100%">
                                                    <thead class="mb--20">
                                                        <tr>
                                                            <th>Product Name</th>
                                                            <th>Product No</th>
                                                            <th>Category</th>
                                                            <th>Price</th>

                                                            <th>Date</th>
                                                            <th class="text-start">Stock</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td width="30%">
                                                                <div class="item-check-area-table-left">
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/14.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/15.png"
                                                                                alt="grocery">
                                                                        </a>
                                                                        <p>Blue Blue Gradient iPhone Case</p>
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/17.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/18.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/19.png"
                                                                                alt="grocery">
                                                                        </a>
                                                                        <p>Red Blue Gradient iPhone Case</p>
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/15.png"
                                                                                alt="grocery">
                                                                        </a>
                                                                        <p>Green Blue Gradient iPhone Case</p>
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$120</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/17.png"
                                                                                alt="grocery">
                                                                        </a>
                                                                        <p>Hree Blue Gradient iPhone Case</p>
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$125</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/18.png"
                                                                                alt="grocery">
                                                                        </a>
                                                                        <p>Kabir Blue Gradient iPhone Case</p>
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$133</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/19.png"
                                                                                alt="grocery">
                                                                        </a>
                                                                        <p>leer Blue Gradient iPhone Case</p>
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$132</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/17.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/19.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/15.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/17.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/18.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/19.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/17.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/19.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/15.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/17.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/18.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/19.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                                    <div class="item-name-and-check-table">
                                                                        <div class="form-check">
                                                                            <input class="form-check-input"
                                                                                type="checkbox" value=""
                                                                                id="flexCheckDefault">
                                                                        </div>
                                                                    </div>
                                                                    <div class="item-image-and-name">
                                                                        <a href="#" class="thumbnail">
                                                                            <img src="/images/grocery/17.png"
                                                                                alt="grocery">
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
                                                                        Electronics
                                                                    </p>
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <p>$200</p>
                                                            </td>
                                                            <td>
                                                                <p>03/02/2022</p>
                                                            </td>
                                                            <td class="text-end">
                                                                <div class="between-stock-table action">
                                                                    <p>250</p>
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
                                                <div class="dataTables_info" id="example_info" role="status"
                                                    aria-live="polite">Showing 1 to 10 of 22 entries</div>
                                                <div class="dataTables_paginate paging_full_numbers"
                                                    id="example_paginate"><a class="paginate_button first disabled"
                                                        aria-controls="example" data-dt-idx="0" tabindex="0"
                                                        id="example_first">First</a><a
                                                        class="paginate_button previous disabled"
                                                        aria-controls="example" data-dt-idx="1" tabindex="0"
                                                        id="example_previous">Previous</a><span><a
                                                            class="paginate_button current" aria-controls="example"
                                                            data-dt-idx="2" tabindex="0">1</a><a
                                                            class="paginate_button " aria-controls="example"
                                                            data-dt-idx="3" tabindex="0">2</a><a
                                                            class="paginate_button " aria-controls="example"
                                                            data-dt-idx="4" tabindex="0">3</a></span><a
                                                        class="paginate_button next" aria-controls="example"
                                                        data-dt-idx="5" tabindex="0" id="example_next">Next</a><a
                                                        class="paginate_button last" aria-controls="example"
                                                        data-dt-idx="6" tabindex="0" id="example_last">Last</a></div>
                                            </div>
                                            <!-- table-responsive.// -->
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