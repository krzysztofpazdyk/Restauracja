<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorsite.jsp"%>
<%@page language="java" import="java.sql.*" %>
<jsp:useBean id="zalogowany" scope="session" class="org.mypackage.hello.Zalogowany"/> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/html5reset-1.6.1.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/media-queries.css" />
        <title>Wirtualna Restauracja</title>
    </head>
    <body>
        <header>
            <div class="container">
                <h1>WIRTUALNA RESTAURACJA</h1>
                <jsp:include page="top_nav.jsp" />               
            </div>   
        </header>
            
        <section id="image">
            <img src="img/image_below_header.jpg" alt="pizza" />
        </section>
        
        <section class="windows">
            <div class="container">
                <article>
                    <a class="brown" href="zamowienie_wszystko.jsp"><h3>Wszystkie dania</h3></a>
                    <img src="img/menu_img1.jpg" alt="restauracje" />
                    <a class="btn_submit" href="zamowienie_wszystko.jsp" >Wybierz</a>
                </article>
                <article>
                    <a class="orange" href="zamowienie_skladniki.jsp"><h3>Wyszukiwanie po składnikach</h3></a>
                    <img src="img/menu_img2.jpg" alt="menu" />
                    <a class="btn_submit" href="zamowienie_skladniki.jsp" >Wybierz</a>
                </article>
                <article>
                    <a class="rose" href="zamowienie_nazwa.jsp"><h3>Wyszukiwanie po nazwie</h3></a>
                    <img src="img/menu_img3.jpg" alt="zamowienia" />
                    <a class="btn_submit" href="zamowienie_nazwa.jsp" >Wybierz</a>
                </article>               
            </div>
        </section>
        
        <jsp:include page="stopka.jsp" />
    </body>
</html>
