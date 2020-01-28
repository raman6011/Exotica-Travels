<%-- 
    Document   : Template2
    Created on : 23 Jan, 2020, 1:22:49 PM
    Author     : rmn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/sidebarCSS.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <nav class="navbar" id="navID">
                <button type="button" onclick="toggleSidebar(this)" class="toggle-collapse" id="toggle-button">
                    <span class="toggle-icon"></span>
                </button>
                
                <ul class="side-nav">
                    <li class="nav-item">
                        <a href="HomePage.jsp" class="site-name">Exotica Travels</a>
                    </li>
                    <li class="nav-item">
                        <a href="LogOutServlet" class="nav-link">Log Out</a>
                    </li>
                    <li class="nav-item">
                        <a href="MyAccount.jsp" class="nav-link">My Account</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Travel Blogs</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">About</a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">FAQs</a>
                    </li>
                </ul>
            </nav>
       </div>
        <script src="javascript/sidebar.js"></script>
    </body>
</html>
