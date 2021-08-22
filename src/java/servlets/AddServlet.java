/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import FasadePatterns.PersonFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.Employee;
import models.Person;
import models.Student;

/**
 *
 * @author macbookair
 */
@WebServlet(name = "AddServlet", urlPatterns = {"/AddServlet"})
public class AddServlet extends HttpServlet {

    @EJB
    PersonFacadeLocal classLocal;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Person p = new Person();

        String person_type = request.getParameter("rad");

        if (person_type.equalsIgnoreCase("employee")) {
            Employee e = new Employee();
            e.setName(request.getParameter("name"));
            e.setPhone(request.getParameter("phone"));
            e.setAddress(request.getParameter("address"));
            e.setEmail(request.getParameter("email"));
            classLocal.create(e);

        } else {
            Student s = new Student();
            s.setName(request.getParameter("name"));
            s.setPhone(request.getParameter("phone"));
            s.setAddress(request.getParameter("address"));
            s.setEmail(request.getParameter("email"));
            classLocal.create(s);
        }

        List<Person> personLists = classLocal.findAll();

        request.setAttribute("personLists", personLists);
        getServletConfig().getServletContext().getRequestDispatcher("/Display.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
