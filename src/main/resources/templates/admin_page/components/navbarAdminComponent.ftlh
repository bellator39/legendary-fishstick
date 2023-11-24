<#macro navbar pageName>
    <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="ti-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
            <i class="settings-close ti-close"></i>
            <p class="settings-heading">SIDEBAR SKINS</p>
            <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
            <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
            <p class="settings-heading mt-2">HEADER SKINS</p>
            <div class="color-tiles mx-0 px-4">
                <div class="tiles success"></div>
                <div class="tiles warning"></div>
                <div class="tiles danger"></div>
                <div class="tiles info"></div>
                <div class="tiles dark"></div>
                <div class="tiles default"></div>
            </div>
        </div>
    </div>

    <!-- partial -->
    <!-- partial:partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link <#if pageName="Dashboard">active</#if>" href="/admin/dashboard">
                    <i class="icon-grid menu-icon"></i>
                    <span class="menu-title">Dashboard</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link <#if pageName="ListProduct">active</#if>" href="/admin/listproduct">
                    <i class="icon-moon menu-icon"></i>
                    <span class="menu-title">List of product</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link <#if pageName="ListUser">active</#if>" href="/admin/listuser">
                    <i class="icon-head menu-icon"></i>
                    <span class="menu-title">List of user</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link <#if pageName="ListOrder">active</#if>" href="/admin/listorder">
                    <i class="icon-target menu-icon"></i>
                    <span class="menu-title">List of order</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link <#if pageName="ListContacts">active</#if>" href="/admin/listcontacts">
                    <i class="icon-air-play menu-icon"></i>
                    <span class="menu-title">List of contacts</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link <#if pageName="ListBlogs">active</#if>" href="/admin/listblogs">
                    <i class="icon-microphone menu-icon"></i>
                    <span class="menu-title">List of blogs</span>
                </a>
            </li>
        </ul>
    </nav>

</#macro>