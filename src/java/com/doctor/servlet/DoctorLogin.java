
package com.doctor.servlet;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/Doctorlogin")
public class DoctorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
	
        
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        DoctorDao dao = new DoctorDao(DBConnect.getConn());
        Doctor doctor = dao.login(email, password);

        HttpSession session = request.getSession();
        if (doctor != null) {
            session.setAttribute("doctObj", doctor);
            session.setAttribute("doctorFullName", doctor.getFullName()); // Store name
	        session.setAttribute("doctorEmail", doctor.getEmail()); // 
            response.sendRedirect("doctor/index.jsp");
        } else {
            session.setAttribute("errorMsg", "Invalid email or password");
            response.sendRedirect("doctor_login.jsp");
        }
    }
}
