package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.Doctor;

	public class Doctordao {
	    private Connection conn;

	    public Doctordao(Connection conn) {
	        this.conn = conn;
	    }

	    public Doctor login(String email, String password) {
	        Doctor doctor = null;
	        try {
	            String sql = "SELECT * FROM doctor WHERE email=? AND password=?";
	            PreparedStatement ps = conn.prepareStatement(sql);
	            ps.setString(1, email);
	            ps.setString(2, password);
	            ResultSet rs = ps.executeQuery();
	            if (rs.next()) {
	                doctor = new Doctor();
	                doctor.setId(rs.getInt("id"));
	                doctor.setFullName(rs.getString("full_name"));
	                doctor.setDob(rs.getString("dob"));
	                doctor.setQualification(rs.getString("qualification"));
	                doctor.setSpecialist(rs.getString("specialist"));
	                doctor.setEmail(rs.getString("email"));
	                doctor.setMobNo(rs.getString("mobno"));
	                doctor.setPassword(rs.getString("password"));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return doctor;
	    }
	}

