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
                                    <h3 class="title">Order</h3>
                                    <div class="button-wrapper">
                                        <div class="single-select">
                                            <div class="nice-select" tabindex="0"><span class="current">Last Week</span>
                                                <ul class="list">
                                                    <li data-value="Default Sorting" data-display="Last Week"
                                                        class="option selected">Last Week</li>
                                                    <li data-value="1" class="option">2 Week</li>
                                                    <li data-value="2" class="option">One Month</li>
                                                    <li data-value="4" class="option">6 month</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="vendor-list-main-wrapper product-wrapper">
                                    <div class="card-body table-product-select">
                                        <div class="table-responsive">
                                            <table class="table table-hover" id="example" class="display"
                                                cellspacing="0" width="100%">
                                                <thead class="mb--20">
                                                    <tr>
                                                        <th>Order No</th>
                                                        <th>Customer</th>
                                                        <th>Date</th>
                                                        <th>Amount</th>
                                                        <th>Category</th>
                                                        <th class="text-start">Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Esther Howard
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Wade Warren
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Jenny Wilson
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Guy Hawkins
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Robert Fox
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Albert Flores
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Floyd Miles
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Bessie Cooper
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Devon Lane
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Guy Hawkins
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Guy Hawkins
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Robert Fox
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Albert Flores
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Floyd Miles
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Bessie Cooper
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Devon Lane
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Guy Hawkins
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Guy Hawkins
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Robert Fox
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Albert Flores
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Floyd Miles
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Bessie Cooper
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Devon Lane
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Guy Hawkins
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Guy Hawkins
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Robert Fox
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Albert Flores
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Floyd Miles
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Bessie Cooper
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Devon Lane
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
                                                                <div class="action-edit-deleate">
                                                                    <span>Edit</span>
                                                                    <span>Delete</span>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td width="25%">
                                                            <div class="item-check-area-table-left">
                                                                <div class="item-name-and-check-table">
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="checkbox"
                                                                            value="" id="flexCheckDefault">
                                                                    </div>
                                                                </div>
                                                                <p style="color: var(--color-primary);">#87451</p>
                                                            </div>

                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Guy Hawkins
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <div class="payment d-flex align-items-center">
                                                                <p style="color: #2D3B29; font-weight: 500;">
                                                                    02/03/2022
                                                                </p>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                $200
                                                            </p>
                                                        </td>
                                                        <td>
                                                            <p style="color: #2D3B29; font-weight: 500;">
                                                                Notebook
                                                            </p>
                                                        </td>
                                                        <td class="text-end">
                                                            <div class="between-stock-table statrusts">
                                                                <p>Delivered</p>
                                                                <img src="assets/images/grocery/`15.png" alt="">
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