
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div align="center">
            <h1>Person Management System</h1>
            <a href="add.jsp">Add</a><br><br>
            <a href="/Assignment2_Sarbjot_N01392504/DispalyAllServlet">Display All</a><br><br>
            <br> <br> 
            <table>
                <form action="SearchServlet">
                    <tr><td>Enter Id:  </td><td><input type="text" name="id"></td></tr>
                    <tr><td></td><td><input type="submit" value="Search"></td></tr>
                </form>
            </table>
        </div>
    </body>
</html>
