<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <div class="rts-navigation-area-breadcrumb bg_light-1" style="margin-top: 114px">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="navigator-breadcrumb-wrapper">
                            <a href="/">Home</a>
                            <i class="fa-regular fa-chevron-right"></i>
                            <a class="#" href="index.html">${product.categoryName}</a>
                            <i class="fa-regular fa-chevron-right"></i>
                            <a class="current" href="index.html">${product.name}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section-seperator bg_light-1">
            <div class="container">
                <hr class="section-seperator">
            </div>
        </div>