<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

            <header class="header-style-two bg-primary-header ct-header-fixed">
                <div class="search-header-area-main">
                    <div class="container-2">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="logo-search-category-wrapper">
                                    <a href="/" class="logo-area">
                                        <img src="/images2/logo/logo-02.svg" alt="logo-main" class="logo">
                                    </a>
                                    <div class="category-search-wrapper">
                                        <div class="category-btn category-hover-header">
                                            <img class="parent" src="/images2/icons/bar-1.svg" alt="icons">
                                            <span>Danh mục</span>
                                            <ul class="category-sub-menu" id="category-active-four">
                                                <c:forEach var="cateParent" items="${cateParents}">
                                                    <li>
                                                        <a href="#" class="menu-item">
                                                            <span>${cateParent.name}</span>
                                                            <i class="fa-regular fa-plus"></i>
                                                        </a>
                                                        <ul class="submenu mm-collapse">
                                                            <c:forEach var="cateChild" items="${cateChildren}">
                                                                <c:if test="${cateParent.id == cateChild.parentId}">
                                                                    <li><a class="mobile-menu-link"
                                                                            href="#">${cateChild.name}</a></li>
                                                                </c:if>
                                                            </c:forEach>
                                                        </ul>
                                                    </li>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                        <form action="#" class="search-header">
                                            <input type="text" placeholder="Tìm kiếm sản phẩm, danh mục" required="">
                                            <a href="javascript: void(0);"
                                                class="rts-btn btn-primary radious-sm with-icon">
                                                <div class="btn-text">
                                                    Tìm
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
                                    <div class="accont-wishlist-cart-area-header">
                                        <c:if test="${not empty pageContext.request.userPrincipal}">
                                            <a href="/customer" class="btn-border-only account">
                                                <i class="fa-light fa-user"></i>
                                                <c:out value="${sessionScope.fullName}" />
                                            </a>
                                            <div class="btn-border-only cart category-hover-header">
                                                <i class="fa-sharp fa-regular fa-cart-shopping"></i>
                                                <span class="text">Giỏ hàng</span>
                                                <span class="number">${sessionScope.sum}</span>
                                                <a href="/cart" class="over_link"></a>
                                            </div>
                                        </c:if>
                                        <c:if test="${empty pageContext.request.userPrincipal}">
                                            <a href="/login" class="btn-border-only account">
                                                <i class="fa-light fa-user"></i>
                                                Đăng nhập
                                            </a>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>