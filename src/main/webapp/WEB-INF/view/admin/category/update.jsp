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
                    <!-- Latest compiled and minified CSS -->
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
                        rel="stylesheet">

                    <!-- Latest compiled JavaScript -->
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
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
                                                <h6 class="title" style="font-size: 32px;">Update Category</h6>
                                            </div>
                                            <div class="input-main-wrapper">
                                                <form:form method="post" action="/admin/category/update"
                                                    modelAttribute="updateCategory" class="row">
                                                    <div class="single-input" style="display: none;">
                                                        <label style="color: #2d3b29;">ID</label>
                                                        <form:input type="text" path="id" />
                                                    </div>
                                                    <div class="single-input col-12 col-md-6">
                                                        <c:set var="errorName">
                                                            <form:errors path="name" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <label style="color: #2d3b29;">Category Name</label>
                                                        <form:input type="text" path="name"
                                                            class="${not empty errorName? 'is-invalid':''}" />
                                                        ${errorName}
                                                    </div>
                                                    <div class="single-input col-12 col-md-6 mb--30">
                                                        <label style="color: #2d3b29;">Category Parent</label>
                                                        <form:select path="parentId"
                                                            style="height: 62px; border: 1px solid #E8E9EB; border-radius: 4px; padding: 0 10px">
                                                            <form:option value="">-- Select Parent Category --
                                                            </form:option>
                                                            <form:options items="${categoriesIsNull}" itemValue="id"
                                                                itemLabel="name" />
                                                        </form:select>
                                                    </div>
                                                    <div class="button-area-botton-wrapper-p-list justify-content-end">
                                                        <button type="submit"
                                                            class="rts-btn btn-primary">Update</button>
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