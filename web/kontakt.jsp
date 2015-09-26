<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorsite.jsp"%>
<jsp:useBean id="zalogowany" scope="session" class="org.mypackage.hello.Zalogowany"/> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/html5reset-1.6.1.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/animations.css" />
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
                    <h1>Kontakt:</h1>
                    <ul>
                        <li>
                            <p>Krzysztof Pazdyk</p>
                            <a class="btn_submit" href="mailto:hariseldon@interia.pl">e-mail</a>
                        </li>
                    </ul>
                </article>
                <aside>
                    <div class="earth"></div>
                </aside>
            </div>
        </section>
        <jsp:include page="stopka.jsp" /> 
    </body>
</html>