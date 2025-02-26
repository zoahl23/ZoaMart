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
                                                <p>Add information and add new product</p>
                                            </div>
                                            <div class="input-main-wrapper">
                                                <div class="single-input">
                                                    <label for="one">Product Name</label>
                                                    <input type="text" id="one"
                                                        placeholder="Quaker Oats Healthy Meal...">
                                                </div>
                                                <div class="single-input">
                                                    <label for="Two">Regular Price</label>
                                                    <input type="text" id="Two" placeholder="240">
                                                </div>
                                                <div class="single-input">
                                                    <label for="sale">Sale Price</label>
                                                    <input type="text" id="sale" placeholder="$250">
                                                </div>
                                                <div class="single-input">
                                                    <label for="Stock">Stock</label>
                                                    <input type="text" id="Stock" placeholder="530">
                                                </div>
                                                <div class="single-input">
                                                    <label for="sku">SKU</label>
                                                    <input type="text" id="sku" placeholder="3245">
                                                </div>
                                                <div class="single-input">
                                                    <label for="cate">Category</label>
                                                    <input type="text" id="cate" placeholder="Notebook">
                                                </div>
                                                <div class="single-input">
                                                    <label for="Tag">Tag</label>
                                                    <input type="text" id="Tag" placeholder="Iphone, Mobile">
                                                </div>
                                                <div class="single-input">
                                                    <label for="text">Description</label>
                                                    <textarea name="text" id="text"
                                                        placeholder="Type something"></textarea>
                                                </div>
                                                <div class="single-input">
                                                    <div class="file-upload-add-product">
                                                        <div class="profile-left">
                                                            <div class="profile-image mb--30">
                                                                <img id="rts_image" src="assets/images/grocery/16.png"
                                                                    alt="Profile-NFT">
                                                                <span>Drag and drop Image</span>
                                                            </div>
                                                            <div class="button-area">
                                                                <div class="brows-file-wrapper">
                                                                    <!-- actual upload which is hidden -->
                                                                    <input name="rts_images1" id="rts_images1"
                                                                        type="file">
                                                                    <!-- our custom upload button -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="button-area-botton-wrapper-p-list">
                                                    <button class="rts-btn btn-primary">Save</button>
                                                    <button class="rts-btn btn-primary bg-transparent">Cancel</button>
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