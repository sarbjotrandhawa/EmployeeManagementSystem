<%-- 
    Document   : SearchResult
    Created on : 20 Aug, 2021, 2:53:03 AM
    Author     : macbookair
--%>

<%@page import="models.Person"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
             <h1>Person Management System</h1><br>
            <a href="add.jsp">Add</a><br><br>
            <a href="/Assignment2_Sarbjot_N01392504/DispalyAllServlet">Display All</a><br><br>
            <a href="index.jsp">Home</a><br><br>
            <br> <br> 
            <h2>Person detail</h2>

            <br>
            <br>
            <table border=1>
                <tr>
                    <th>ID</th>
                    <th>Name</th> 
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Email</th>               
                </tr><%
                    // retrieve your list from the request, with casting 
                    Person person = (Person) request.getAttribute("personLists");

                    // print the information about every category of the list
                    if (person != null) {
                %>
                <tr>
                    <td><%  out.println(person.getId());%></td>
                    <td><%  out.println(person.getName());%></td>
                    <td><%  out.println(person.getAddress());%></td>
                    <td><%  out.println(person.getPhone());%></td>
                    <td><%  out.println(person.getEmail());%></td>
                </tr>
                <%}%>



            </table>
        </div>
    </body>
</html>
