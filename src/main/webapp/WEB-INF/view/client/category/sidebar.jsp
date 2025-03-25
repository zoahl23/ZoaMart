<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <div class="col-xl-3 col-lg-12 pr--70 pr_lg--10 pr_sm--10 pr_md--5 rts-sticky-column-item">
                    <div class="sidebar-filter-main theiaStickySidebar">
                        <div class="single-filter-box">
                            <h5 class="title">Lọc giá sản phẩm</h5>
                            <div class="filterbox-body">
                                <form action="" class="price-input-area">
                                    <div class="half-input-wrapper">
                                        <div class="single">
                                            <label for="min">Min price</label>
                                            <input id="min" type="number" value="0">
                                        </div>
                                        <div class="single">
                                            <label for="max">Max price</label>
                                            <input id="max" type="number" value="150">
                                        </div>
                                    </div>
                                    <div class="filter-value-min-max">
                                        <button class="rts-btn btn-primary"
                                            style="max-width: 100%; width: 100%; margin-top: 30px;">Filter</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="single-filter-box">
                            <h5 class="title">Loại sản phẩm</h5>
                            <div class="filterbox-body">
                                <div class="category-wrapper ">
                                    <c:forEach var="category" items="${cateChildren}">
                                        <!-- single category -->
                                        <div class="single-category">
                                            <input id="${category.id}" type="checkbox">
                                            <label for="${category.id}">${category.name}
                                            </label>
                                        </div>
                                        <!-- single category end -->
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="single-filter-box">
                            <h5 class="title">Đặc điểm sản phẩm</h5>
                            <div class="filterbox-body">
                                <div class="category-wrapper">
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat11" type="checkbox">
                                        <label for="cat11">Bán chạy
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat12" type="checkbox">
                                        <label for="cat12">Đang giảm giá
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat12" type="checkbox">
                                        <label for="cat12">Hàng mới về
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>