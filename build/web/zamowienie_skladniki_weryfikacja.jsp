<%@page import="org.mypackage.hello.Przekierowania"%>
<%@page import="org.mypackage.hello.Weryfikacjazamowienia"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorsite.jsp"%>
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
            
        <section>
            <div class="container">
                <article>
                <%
                Przekierowania przekierowania = new Przekierowania();
                przekierowania.zamowienieskladnikiweryfikacja(zalogowany, response, request);
                %>
                <h1>Zamowienie z?o?one, dzi?kujemy.</h1>          
                </article>
                <aside>
                    <h3>Wybierz dania, ktore chcesz zamowi?.</h3>
                    <img src="img/image_recipe.jpg" alt="przepis" />
                </aside>
            </div>
        </section>
        <jsp:include page="stopka.jsp" />
    </body>
</html>
