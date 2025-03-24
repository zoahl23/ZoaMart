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
                                        <h3 class="title" style="margin-bottom: 0px;">Product Table
                                        </h3>
                                        <div class="button-wrapper">
                                            <a href="/admin/product/create" class="rts-btn btn-primary menu-btn">+
                                                Add</a>
                                        </div>
                                    </div>
                                    <div class="vendor-list-main-wrapper product-wrapper">
                                        <div class="card-body table-product-select">
                                            <div class="table-responsive">
                                                <table class="table table-hover table-product" id="example"
                                                    class="display" cellspacing="0" width="100%">
                                                    <thead class="mb--20">
                                                        <tr>
                                                            <th>ID</th>
                                                            <th>Product Name</th>
                                                            <th>Category</th>
                                                            <th>Price</th>
                                                            <th>Quantity</th>
                                                            <th>Updated At</th>
                                                            <th class="text-start">Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="product" items="${products}">
                                                            <tr>
                                                                <td>
                                                                    <p style="color: #2d3b29;">
                                                                        ${product.id}
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p style="color: #2d3b29;">
                                                                        ${product.name}
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <div class="payment d-flex align-items-center">
                                                                        <p style="color: #2d3b29;">
                                                                            ${product.categoryName}
                                                                        </p>
                                                                    </div>
                                                                </td>
                                                                <td>
                                                                    <p style="color: #2d3b29;">
                                                                        <fmt:formatNumber value="${product.price}"
                                                                            type="number" groupingUsed="true" /> đ
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p style="color: #2d3b29;">
                                                                        ${product.quantity}
                                                                    </p>
                                                                </td>
                                                                <td>
                                                                    <p style="color: #2d3b29;">
                                                                        <fmt:formatDate value="${product.updatedAt}"
                                                                            pattern="yyyy-MM-dd HH:mm:ss" />
                                                                    </p>
                                                                </td>
                                                                <td class="text-end">
                                                                    <div class="between-stock-table action">
                                                                        <p></p>
                                                                        <img src="/images/grocery/`15.png" alt="">
                                                                        <div class="action-edit-deleate">
                                                                            <a href="/admin/product/${product.id}"
                                                                                style="text-decoration: none;"><span>View</span></a>
                                                                            <a href="/admin/product/update/${product.id}"
                                                                                style="text-decoration: none;"><span>Update</span></a>
                                                                            <a href="/admin/product/delete/${product.id}"
                                                                                style="text-decoration: none;"><span>Delete</span></a>
                                                                        </div>
                                                                        <p></p>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
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