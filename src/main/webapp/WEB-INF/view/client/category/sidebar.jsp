<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <div class="col-xl-3 col-lg-12 pr--70 pr_lg--10 pr_sm--10 pr_md--5 rts-sticky-column-item">
                    <div class="sidebar-filter-main theiaStickySidebar">
                        <form action="/products" method="get">
                            <div class="single-filter-box">
                                <h5 class="title">Lọc giá sản phẩm</h5>
                                <div class="filterbox-body">
                                    <div class="price-input-area">
                                        <input type="hidden" name="category" value="${id}" />
                                        <div class="half-input-wrapper" id="priceFilter">
                                            <div class="single">
                                                <label for="min">Min price</label>
                                                <input name="min" id="min" type="number" value="0">
                                            </div>
                                            <div class="single">
                                                <label for="max">Max price</label>
                                                <input name="max" id="max" type="number" value="0">
                                            </div>
                                        </div>
                                        <div class="filter-value-min-max">
                                            <button type="submit" class="rts-btn btn-primary"
                                                style="max-width: 100%; width: 100%; margin-top: 30px;"
                                                id="btnFilter">Lọc</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="single-filter-box">
                                <h5 class="title">Đặc điểm sản phẩm</h5>
                                <div class="filterbox-body">
                                    <div class="category-wrapper" id="sortFilter">
                                        <!-- single category -->
                                        <div class="single-category">
                                            <input id="sold" name="sort" value="sold" type="radio">
                                            <label for="sold">Bán chạy
                                            </label>
                                        </div>
                                        <!-- single category end -->
                                        <!-- single category -->
                                        <div class="single-category">
                                            <input id="discount" name="sort" value="discount" type="radio" checked>
                                            <label for="discount">Đang giảm giá
                                            </label>
                                        </div>
                                        <!-- single category end -->
                                        <!-- single category -->
                                        <div class="single-category">
                                            <input id="new" name="sort" value="new" type="radio">
                                            <label for="new">Hàng mới về
                                            </label>
                                        </div>
                                        <!-- single category end -->
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>