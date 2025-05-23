package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;


@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet { 
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		try {
			
			String full_name=req.getParameter("full_name");
			String dob=req.getParameter("dob");
			String qualification=req.getParameter("qualification");
			String specialist=req.getParameter("specialist");
			String email=req.getParameter("email");
			String mobno=req.getParameter("mobno");
			String password=req.getParameter("password");
			
			Doctor d=new Doctor(full_name, dob, qualification, specialist, email, mobno, password);
			
			
			DoctorDao dao=new DoctorDao(DBConnect.getConn());
			HttpSession session=req.getSession();
			
			if(dao.registerDoctor(d))
			{
				session.setAttribute("sucMsg", "Doctor Added Successfully..");
				resp.sendRedirect("admin/doctor.jsp");
				
			}else {
				session.setAttribute("errorMsg", "Something wrong on server");
				resp.sendRedirect("admin/doctor.jsp");
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}