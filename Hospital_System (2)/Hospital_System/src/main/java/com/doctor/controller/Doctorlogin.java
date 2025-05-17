package com.doctor.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Doctordao;
import com.db.DBConnect;
import com.entity.Doctor;

@WebServlet("/Doctorlogin")
public class Doctorlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		
		
        response.sendRedirect("/Hospital_System/src/main/webapp/doctor/index.jsp");
        
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Doctordao dao = new Doctordao(DBConnect.getConn());
        Doctor doctor = dao.login(email, password);

        HttpSession session = request.getSession();
        if (doctor != null) {
            session.setAttribute("doctObj", doctor);
            response.sendRedirect("doctor/index.jsp");
        } else {
            session.setAttribute("errorMsg", "Invalid email or password");
            response.sendRedirect("doctor_login.jsp");
        }
    }
}
