package com.cell.Servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.cell.DAO.StartupDAO;
import com.cell.DTO.StartupDTO;

/**
 * Servlet implementation class WorkshopReg
 */
@WebServlet("/WorkshopReg")
public class WorkshopReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorkshopReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StartupDTO dto = new StartupDTO();
		dto.setW_enroll(request.getParameter("enroll"));
		dto.setW_fname(request.getParameter("first_name"));
		dto.setW_lname(request.getParameter("last_name"));
		dto.setW_add(request.getParameter("add"));
		dto.setW_email(request.getParameter("email"));
		dto.setW_mobile(request.getParameter("mobile_no"));
		dto.setW_college(request.getParameter("college"));
		
		StartupDAO dao = new StartupDAO();
		int x = dao.insertintoWorkshop(dto);
		
		if (x>0) {
			response.sendRedirect("thanks.html");
		}else {
			response.sendRedirect("workshopReg.jsp");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
