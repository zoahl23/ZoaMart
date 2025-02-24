<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <header class="header-one">
            <div class="headerleft">
                <div class="collups-show-icon">
                    <img src="/images/icons/10.svg" alt="icon">
                    <i class="fa-light fa-arrow-right"></i>
                </div>
            </div>
            <div class="header-right">
                <div class="action-interactive-area__header">
                    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                        <span style="color: black;">Welcome, Admin</span>
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