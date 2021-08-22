

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
          <a href="/Assignment2_Sarbjot_N01392504/DispalyAllServlet">Display All</a><br><br>
            <a href="index.jsp">Home</a><br><br>
            <br> <br> 
            <form action="AddServlet" method="POST">


                <label>Name</label> <input type="text" class="form-control" name="name" ><br><br>



                <label>Address</label> <input type="text" class="form-control" name="address" ><br><br>



                <label>Phone</label> <input type="text" class="form-control" name="phone"><br><br>


                <label>Email</label> <input type="text" class="form-control" name="email">
                <br><br>


                <label>Type</label>
                <INPUT type="radio" name="rad"  value="employee"/>Employee
                <INPUT type="radio" name="rad"  value="student"/>Student

                <br><br><br>
                <button type="submit" class="btn btn-success">Add</button>
                <br><br>
            </form>
        </div>
    </body>
</html>
