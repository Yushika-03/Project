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
 * Servlet implementation class Startup
 */
@WebServlet("/Startup")
public class Startup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Startup() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StartupDTO dto = new StartupDTO();
		dto.setEnroll_no(request.getParameter("enroll"));
		dto.setFirst_name(request.getParameter("first_name"));
		dto.setLast_name(request.getParameter("last_name"));
		dto.setEmail(request.getParameter("email"));
		dto.setMobile(request.getParameter("mobile_no"));
		dto.setCollege(request.getParameter("college"));
		dto.setDepartment(request.getParameter("department"));
		dto.setStartup_field(request.getParameter("startup_field"));
		
		StartupDAO dao = new StartupDAO();
		int x = dao.insert(dto);
//		
		PrintWriter pw = response.getWriter();
		pw.println(x + "data Inserted");
		
		ServletContext ctx=getServletContext();
		RequestDispatcher rd=ctx.getRequestDispatcher("/thanks.html");
		rd.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
