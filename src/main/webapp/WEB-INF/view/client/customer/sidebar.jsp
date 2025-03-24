<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

            <div class="nav accout-dashborard-nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist"
                aria-orientation="vertical">
                <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill"
                    data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home"
                    aria-selected="true" style="display: none;"><i
                        class="fa-regular fa-chart-line"></i>Dashboard</button>
                <button class="nav-link" id="v-pills-settingsa-tab" data-bs-toggle="pill"
                    data-bs-target="#v-pills-settingsa" type="button" role="tab" aria-controls="v-pills-settingsa"
                    aria-selected="false"><i class="fa-light fa-user"></i>Thông tin tài khoản</button>
                <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill"
                    data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile"
                    aria-selected="false"><i class="fa-regular fa-bag-shopping"></i>Đơn hàng</button>
                <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill"
                    data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages"
                    aria-selected="false"><i class="fa-sharp fa-regular fa-tractor"></i>Theo dõi đơn
                    hàng</button>
                <form method="post" action="/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <button class="nav-link">
                        <i class="fa-light fa-right-from-bracket"></i>Đăng xuất
                    </button>
                </form>
            </div>