<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <div class="col-xl-3 col-lg-12 pr--70 pr_lg--10 pr_sm--10 pr_md--5 rts-sticky-column-item">
                    <div class="sidebar-filter-main theiaStickySidebar">
                        <div class="single-filter-box">
                            <h5 class="title">Widget Price Filter</h5>
                            <div class="filterbox-body">
                                <form action="#" class="price-input-area">
                                    <div class="half-input-wrapper">
                                        <div class="single">
                                            <label for="min">Min price</label>
                                            <input id="min" type="text" value="0">
                                        </div>
                                        <div class="single">
                                            <label for="max">Max price</label>
                                            <input id="max" type="text" value="150">
                                        </div>
                                    </div>
                                    <input type="range" class="range">
                                    <div class="filter-value-min-max">
                                        <span>Price: $10 — $90</span>
                                        <button class="rts-btn btn-primary">Filter</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="single-filter-box">
                            <h5 class="title">Product Categories</h5>
                            <div class="filterbox-body">
                                <div class="category-wrapper ">
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat1" type="checkbox">
                                        <label for="cat1">Beverages
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat2" type="checkbox">
                                        <label for="cat2">Biscuits & Snacks

                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat3" type="checkbox">
                                        <label for="cat3">Breads & Bakery
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat4" type="checkbox">
                                        <label for="cat4">Breakfast & Dairy
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat7" type="checkbox">
                                        <label for="cat7">Grocery & Staples
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat6" type="checkbox">
                                        <label for="cat6">Fruits & Vegetables
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat8" type="checkbox">
                                        <label for="cat8">Household Needs
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat10" type="checkbox">
                                        <label for="cat10">Meats & Seafood
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat80" type="checkbox">
                                        <label for="cat80">Grocery & Staples
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                </div>
                            </div>
                        </div>
                        <div class="single-filter-box">
                            <h5 class="title">Product Status</h5>
                            <div class="filterbox-body">
                                <div class="category-wrapper">
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat11" type="checkbox">
                                        <label for="cat11">In Stock

                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat12" type="checkbox">
                                        <label for="cat12">On Sale

                                        </label>
                                    </div>
                                    <!-- single category end -->
                                </div>
                            </div>
                        </div>
                        <div class="single-filter-box">
                            <h5 class="title">Select Brands</h5>
                            <div class="filterbox-body">
                                <div class="category-wrapper">
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat13" type="checkbox">
                                        <label for="cat13">Frito Lay
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat14" type="checkbox">
                                        <label for="cat14">Nespresso
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat15" type="checkbox">
                                        <label for="cat15">Oreo
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat16" type="checkbox">
                                        <label for="cat16">Quaker
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                    <!-- single category -->
                                    <div class="single-category">
                                        <input id="cat17" type="checkbox">
                                        <label for="cat17">Welch's
                                        </label>
                                    </div>
                                    <!-- single category end -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>