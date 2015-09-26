<%--<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%> --%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorsite.jsp"%>
<%@ page import="org.mypackage.hello.*" %>
<%@ page import="java.sql.*" %>
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
                    ArrayList<String> listaskladnikow;
                    listaskladnikow=przekierowania.zamowienieskladniki(response);
                  %>
                         <h1>Menu</h1>
                         <form name="form1" onsubmit="checkBoxValidation()" action="usunskladnik2.jsp">
                             <ul>
                                 <%!    int i = 0; %>
                                 <% for( i=0; i<listaskladnikow.size(); i=i+2) { %>
                                 <li>                                
                                     <input id="check<%=i %>" type="checkbox" name="usuwanyskladnik" value="<%=listaskladnikow.get(i)%>" />
                                     <label class="css-label" for="check<%=i %>"><%=listaskladnikow.get(i+1)%></label>
                                 </li>
                                 <% } %>                            
                                 <li>
                                    <input type="submit" value="Usun"/>  
                                 </li>                            
                            </ul>
                         </form>   
                </article>
                <aside>
                    <h3>Wybierz składnik, ktory chcesz usunać.</h3>
                    <img src="img/image_recipe.jpg" alt="przepis" />
                </aside>
            </div>
        </section>
        <jsp:include page="stopka.jsp" /> 
    </body>
</html>
