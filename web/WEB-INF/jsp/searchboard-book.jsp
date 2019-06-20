<%-- 
    Document   : searchboard-book
    Created on : Jun 17, 2019, 1:09:06 PM
    Author     : USER
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Library</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/mobile.css">
    </head>
    <body>
        <div class="menu-img">
            <img src="<%= request.getContextPath()%>/image/wooden.png" alt="" >
            
        </div>
        <div class="logo-bgr">
            <h1>Welcome to Library</h1>
            <hr>
        </div>
        <div class="main">
            
            <!--Table for Book-->
            <div class="book_area">
                <h2>
                    Search Book
                </h2>

                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
                <table id="myTable">
                    <tr class="header">
                        <th style="width:10%;">Code</th>
                        <th style="width:30%;">Book Name</th>
                        <th style="width:30%;">Author</th>
                        <th style="width:30%;">Publisher</th>
                    </tr>
                    
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName} </td>
                            <td>${book.author} </td>
                            <td>${book.publisher} </td>
                        </tr>
                    </c:forEach>
                    
                    <!--<tr>
                        <td>2</td>
                        <td>Minh Khoi Is AWESOME</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Hiuy Phong Is AWESOME</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Minh Khoi Is AWESOME</td>
                    </tr>      -->          
    
                </table>
                <form:form commandName="usingUser" action="${pageContext.servletContext.contextPath}/addBook.html">
                    <form:input path="userID" value="${usingUser.userID}" type="hidden"/>
                    <button type="submit" style="display: ${display}">Add book</button>
                </form:form>
                <a href=""><button style="display: ${display}">Update book</button></a>
                <a href="<%= request.getContextPath()%>/listdeal/${usingUser.userID}.html">
                    <button>Board of deals</button>
                </a>
            </div>


        </div>
        <script src="<%= request.getContextPath()%>/javascript/main.js"></script>
    </body>
</html>