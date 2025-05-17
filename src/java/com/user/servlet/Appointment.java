package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import com.dao.AppointmentDao;
import com.db.DBConnect;

public class Appointment extends HttpServlet {
    


    private Appointment(int userId, String fullname, String gender, String age, String appointDate, String email, String phno, String diseases, int doctorId, String address, String pending) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   

@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int userId = Integer.parseInt(req.getParameter("user_id"));
        String fullname = req.getParameter("fullname");
        String gender = req.getParameter("gender");
        String age = req.getParameter("age");
        String appointDate = req.getParameter("appoint_date");
        String email = req.getParameter("email");
        String phno = req.getParameter("phno");
        String diseases = req.getParameter("diseases");
        int doctorId = Integer.parseInt(req.getParameter("doctor_id"));
        String address = req.getParameter("address");

		
		Appointment ap = new Appointment(userId, fullname, gender, age, appointDate, email, phno, diseases, doctorId, address, "Pending"); 
		
		AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
		HttpSession session=req.getSession();
		
		if(dao.addAppointment(ap))
		{
		   session.setAttribute("succMsg", "Appointment Sucessfully");
		   resp.sendRedirect("user_appointment");
	}
	else {
		   session.setAttribute("errorMsg", "Something wrong on server");
		   resp.sendRedirect("user_appointment");
	}
		
        }
}
}

