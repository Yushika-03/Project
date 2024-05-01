package com.cell.DAO;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.cell.DB.DBConnection;


import com.cell.DTO.StartupDTO;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;

public class StartupDAO {

	public int insert(StartupDTO dto) {
		int x = 0;
		try {
			
			Connection con = DBConnection.getConn();
			PreparedStatement ps = con.prepareStatement("insert into startup1(enroll_no,first_name,last_name,email,mobile_no,college,department,startup_field) values(?,?,?,?,?,?,?,?)" );

			ps.setString(1, dto.getEnroll_no());
			ps.setString(2, dto.getFirst_name());
			ps.setString(3, dto.getLast_name());
			ps.setString(4, dto.getEmail());
			ps.setString(5, dto.getMobile());
			ps.setString(6, dto.getCollege());
			ps.setString(7, dto.getDepartment());
			ps.setString(8, dto.getStartup_field());
			
			x = ps.executeUpdate();
			ps.close();
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		return x;
	}
	
	
	//events registration
	public int insertintoEvents(StartupDTO dto) {
		int x = 0;
		try {
			
			Connection con = DBConnection.getConn();
			PreparedStatement ps = con.prepareStatement("insert into event_reg(e_enroll,e_fname,e_lname,e_add,e_email,e_mobile,e_college) values(?,?,?,?,?,?,?)" );
			
			ps.setString(1, dto.getE_enroll());
			ps.setString(2, dto.getE_fname());
			ps.setString(3, dto.getE_lname());
			ps.setString(4, dto.getE_add());
			ps.setString(5, dto.getE_email());
			ps.setString(6, dto.getE_mobile());
			ps.setString(7, dto.getE_college());
			
		
			
			x = ps.executeUpdate();
			ps.close();
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		return x;
	}
     
	//workshop registration
		public int insertintoWorkshop(StartupDTO dto) {
			int x = 0;
			try {
				
				Connection con = DBConnection.getConn();
				PreparedStatement ps = con.prepareStatement("insert into workshop_reg(w_enroll,w_fname,w_lname,w_add,w_email,w_mobile,w_college) values(?,?,?,?,?,?,?)" );
				
				ps.setString(1, dto.getW_enroll());
				ps.setString(2, dto.getW_fname());
				ps.setString(3, dto.getW_lname());
				ps.setString(4, dto.getW_add());
				ps.setString(5, dto.getW_email());
				ps.setString(6, dto.getW_mobile());
				ps.setString(7, dto.getW_college());
				
			
				
				x = ps.executeUpdate();
				ps.close();
				con.close();
			}catch(Exception e) {
				System.out.println(e);
			}
			return x;
		}
		
		//bootcamp registration
				public int insertintoBootcamp(StartupDTO dto) {
					int x = 0;
					try {
						
						Connection con = DBConnection.getConn();
						PreparedStatement ps = con.prepareStatement("insert into bootcamp_reg(b_enroll,b_fname,b_lname,b_add,b_email,b_mobile,b_college) values(?,?,?,?,?,?,?)" );
							
						ps.setString(1, dto.getB_enroll());
						ps.setString(2, dto.getB_fname());
						ps.setString(3, dto.getB_lname());
						ps.setString(4, dto.getB_add());
						ps.setString(5, dto.getB_email());
						ps.setString(6, dto.getB_mobile());
						ps.setString(7, dto.getB_college());
						
					
						
						x = ps.executeUpdate();
						ps.close();
						con.close();
					}catch(Exception e) {
						System.out.println(e);
					}
					return x;
				}
	
//	//startup form
//	public int insert1(RegDTO dto) {
//		
//		int x=0;
//		
//		try {
//			
//			Connection con=DBConnection.getConn();
//			PreparedStatement ps = con.prepareStatement("insert into member(first_name,last_name,email,mobile_no,college_name,Department_name,pw) values(?,?,?,?,?,?,?)");
//			
//			ps.setString(1, dto.getFirst_name());
//			ps.setString(2, dto.getLast_name());
//			ps.setString(3, dto.getEmail());
//			ps.setString(4, dto.getMobile());
//			ps.setString(5, dto.getCollege_name());
//			ps.setString(6, dto.getDepartment_name());
//			ps.setString(7, dto.getPw());
//			x=ps.executeUpdate();
//			
//		
//			
//		}catch(Exception e) {
//			System.out.println(e);
//		}
//		
//	
//		return x;
//		
//	}


  


	public List show(String name) {
		
		 List startupList = new ArrayList<>();
	        try {
	        	Connection con = DBConnection.getConn();
	        		Statement stm = con.createStatement();
	        		ResultSet rs = stm.executeQuery("select * from startup1");
	        		
	        		if(rs.next()) {
	        			 startupList.add(rs.getString(1));
	        			 startupList.add(rs.getString(2));
	        			 startupList.add(rs.getString(3));
	        			 startupList.add(rs.getString(4));
	        			 startupList.add(rs.getString(5));
	        			 startupList.add(rs.getString(6));
	        			 startupList.add(rs.getString(7));
	            }else {
	            	startupList=null;
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	        return startupList;
	    }
		
	}
	
		

