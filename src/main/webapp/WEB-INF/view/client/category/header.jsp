<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <div class="filter-select-area">
                    <div class="top-filter">
                        <span>Showing 1–20 of 57 results</span>
                        <div class="right-end">
                            <span>Sort: Short By Latest</span>
                            <div class="button-tab-area">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link single-button active" id="home-tab" data-bs-toggle="tab"
                                            data-bs-target="#home-tab-pane" type="button" role="tab"
                                            aria-controls="home-tab-pane" aria-selected="true">
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <rect x="0.5" y="0.5" width="6" height="6" rx="1.5" stroke="#2C3B28" />
                                                <rect x="0.5" y="9.5" width="6" height="6" rx="1.5" stroke="#2C3B28" />
                                                <rect x="9.5" y="0.5" width="6" height="6" rx="1.5" stroke="#2C3B28" />
                                                <rect x="9.5" y="9.5" width="6" height="6" rx="1.5" stroke="#2C3B28" />
                                            </svg>
                                        </button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link single-button" id="profile-tab" data-bs-toggle="tab"
                                            data-bs-target="#profile-tab-pane" type="button" role="tab"
                                            aria-controls="profile-tab-pane" aria-selected="false">
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                                xmlns="http://www.w3.org/2000/svg">
                                                <rect x="0.5" y="0.5" width="6" height="6" rx="1.5" stroke="#2C3C28" />
                                                <rect x="0.5" y="9.5" width="6" height="6" rx="1.5" stroke="#2C3C28" />
                                                <rect x="9" y="3" width="7" height="1" fill="#2C3C28" />
                                                <rect x="9" y="12" width="7" height="1" fill="#2C3C28" />
                                            </svg>
                                        </button>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>
                    <div class="nice-select-area-wrapper-and-button">
                        <div class="nice-select-wrapper-1">
                            <div class="single-select">
                                <select>
                                    <option data-display="All Categories">All Categories</option>
                                    <option value="1">Some option</option>
                                    <option value="2">Another option</option>
                                    <option value="3" disabled>A disabled option</option>
                                    <option value="4">Potato</option>
                                </select>
                            </div>
                            <div class="single-select">
                                <select>
                                    <option data-display="All Brands">All Brands</option>
                                    <option value="1">Some option</option>
                                    <option value="2">Another option</option>
                                    <option value="3" disabled>A disabled option</option>
                                    <option value="4">Potato</option>
                                </select>
                            </div>
                            <div class="single-select">
                                <select>
                                    <option data-display="All Size">All Size </option>
                                    <option value="1">Some option</option>
                                    <option value="2">Another option</option>
                                    <option value="3" disabled>A disabled option</option>
                                    <option value="4">Potato</option>
                                </select>
                            </div>
                            <div class="single-select">
                                <select>
                                    <option data-display="All Weight">All Weight</option>
                                    <option value="1">Some option</option>
                                    <option value="2">Another option</option>
                                    <option value="3" disabled>A disabled option</option>
                                    <option value="4">Potato</option>
                                </select>
                            </div>
                        </div>
                        <div class="button-area">
                            <button class="rts-btn">Filter</button>
                            <button class="rts-btn">Reset Filter</button>
                        </div>
                    </div>
                </div>