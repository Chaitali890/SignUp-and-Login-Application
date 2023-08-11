
package com.services;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EnquireDao;
import com.entities.*;





@WebServlet("/enquire")
public class EnquireServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    	EnquireDao enqDao;
    		public void init() {
		enqDao = new EnquireDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        enquire(request, response);
        try {
			listEnquire(request,response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	 response.sendRedirect("enquire.jsp");
    }

    private void enquire(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
    	String name = request.getParameter("name");
    	String email = request.getParameter("email");
    	String year = request.getParameter("year");
		String course = request.getParameter("course");

      Enquire enq = new Enquire();
      enq.setName(name);
      enq.setEmail(email);
      enq.setYear(year);
      enq.setCourse(course);

        enqDao.saveEnq(enq);

        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        dispatcher.forward(request, response);
    }
    
    
    private void listEnquire(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException, ServletException {
    	        List < Enquire > listEnquire = enqDao.getAllEnquire();
    	        request.setAttribute("listEnquire", listEnquire);
    	        RequestDispatcher dispatcher = request.getRequestDispatcher("/Admin/Admin.jsp");
    	        dispatcher.forward(request, response);
    	    }
    
}