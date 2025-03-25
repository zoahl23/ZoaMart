<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <!-- rts navigation bar area start -->
                <div class="rts-navigation-area-breadcrumb" style="margin-top: 114px">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="navigator-breadcrumb-wrapper">
                                    <a href="/">Trang chủ</a>
                                    <i class="fa-regular fa-chevron-right"></i>
                                    <a class="current" href="/category/${id}">${category.name}</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- rts navigation bar area end -->
                <div class="section-seperator">
                    <div class="container">
                        <hr class="section-seperator">
                    </div>
                </div>