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
                                <div class="vendor-list-main-wrapper product-wrapper add-product-page">
                                    <div class="card-body table-product-select">
                                        <div class=" header-two show right-collups-add-product">
                                            <!-- inner menu area desktop start -->
                                            <div class="right-collups-area-top">
                                                <h6 class="title" style="font-size: 32px;">Add New Product</h6>
                                            </div>
                                            <div class="input-main-wrapper">
                                                <form:form method="post" action="/admin/product/create"
                                                    modelAttribute="newProduct" class="row"
                                                    enctype="multipart/form-data">
                                                    <div class="single-input col-12 col-md-6">
                                                        <c:set var="errorName">
                                                            <form:errors path="name" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label style="color: #2d3b29;">Product Name</label>
                                                        <form:input type="text" path="name"
                                                            class="${not empty errorName? 'is-invalid':''}" />
                                                        ${errorName}
                                                    </div>
                                                    <div class="single-input col-12 col-md-6">
                                                        <label style="color: #2d3b29;">Category</label>
                                                        <form:select path="category"
                                                            style="height: 62px; border: 1px solid #E8E9EB; border-radius: 4px; padding: 0 10px">
                                                            <form:option value="">-- Select Parent Category --
                                                            </form:option>
                                                            <form:options items="${cateIsNotNull}" itemValue="id"
                                                                itemLabel="name" />
                                                        </form:select>
                                                    </div>
                                                    <div class="single-input col-12 col-md-6">
                                                        <c:set var="errorPrice">
                                                            <form:errors path="price" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label style="color: #2d3b29;">Price</label>
                                                        <form:input type="number" path="price"
                                                            class="${not empty errorPrice? 'is-invalid':''}" />
                                                        ${errorPrice}
                                                    </div>
                                                    <div class="single-input col-12 col-md-6">
                                                        <c:set var="errorDiscountPercent">
                                                            <form:errors path="discountPercent"
                                                                cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label style="color: #2d3b29;">Discount Percent</label>
                                                        <form:input type="number" path="discountPercent"
                                                            class="${not empty errorDiscountPercent? 'is-invalid':''}" />
                                                        ${errorDiscountPercent}
                                                    </div>
                                                    <div class="single-input col-12 col-md-6">
                                                        <c:set var="errorQuantity">
                                                            <form:errors path="quantity" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label style="color: #2d3b29;">Quantity</label>
                                                        <form:input type="number" path="quantity"
                                                            class="${not empty errorQuantity? 'is-invalid':''}" />
                                                        ${errorQuantity}
                                                    </div>
                                                    <div class="single-input col-12 col-md-6">
                                                        <c:set var="errorSold">
                                                            <form:errors path="sold" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label style="color: #2d3b29;">Sold</label>
                                                        <form:input type="number" path="sold"
                                                            class="${not empty errorSold? 'is-invalid':''}" />
                                                        ${errorSold}
                                                    </div>
                                                    <div class="single-input">
                                                        <c:set var="errorDesShort">
                                                            <form:errors path="desShort" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label style="color: #2d3b29;">Description Short</label>
                                                        <form:input type="text" path="desShort"
                                                            class="${not empty errorDesShort? 'is-invalid':''}" />
                                                        ${errorDesShort}
                                                    </div>
                                                    <div class="single-input">
                                                        <c:set var="errorDesDetail">
                                                            <form:errors path="desDetail" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label style="color: #2d3b29;">Description Detail</label>
                                                        <form:textarea name="text" path="desDetail"
                                                            class="${not empty errorDesDetail? 'is-invalid':''}" />
                                                        ${errorDesDetail}
                                                    </div>
                                                    <div class="single-input">
                                                        <div class="file-upload-add-product">
                                                            <div class="profile-left">
                                                                <div class="profile-image mb--30">
                                                                    <img id="rts_image" src="/images/grocery/16.png"
                                                                        alt="Profile-NFT">
                                                                    <span>Drag and drop Image</span>
                                                                </div>
                                                                <div class="button-area">
                                                                    <div class="brows-file-wrapper">
                                                                        <!-- actual upload which is hidden -->
                                                                        <input name="proImg" id="rts_images1"
                                                                            type="file" accept=".png, .jpg, .jpeg" />
                                                                        <!-- our custom upload button -->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-area-botton-wrapper-p-list">
                                                        <button class="rts-btn btn-primary">Save</button>
                                                        <button
                                                            class="rts-btn btn-primary bg-transparent">Cancel</button>
                                                    </div>
                                                </form:form>
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