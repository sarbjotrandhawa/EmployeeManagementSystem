

<%@page import="java.util.List"%>
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
            <a href="index.jsp">Home</a><br><br>
            <br> <br> 
            <h2>Persons Detail</h2> <br><br><br>
            <table border=1>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>Email</th>
                    <th>update</th>
                    <th>Action</th>
                </tr>
                <%
                    // retrieve your list from the request, with casting 
                    List<Person> list = (List<Person>) request.getAttribute("personLists");

                    // print the information about every category of the list
    for (Person person : list) {%>
                <tr>
                    <td><%  out.println(person.getId());%></td>
                    <td><%  out.println(person.getName());%></td>
                    <td><%  out.println(person.getAddress());%></td>
                    <td><%  out.println(person.getPhone());%></td>
                    <td><%  out.println(person.getEmail());%></td>
                    <td><a href="Update.jsp?id=<%=person.getId()%>">Update</a></td>
                    <td><a href="/Assignment2_Sarbjot_N01392504/DeleteServlet?id=<%=person.getId()%>">Delete</a></td>
                </tr>
                <%
                    }
                %>




            </table>
        </div>

    </body>
</html>
