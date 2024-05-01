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
 * Servlet implementation class BootcampReg
 */
@WebServlet("/BootcampReg")
public class BootcampReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BootcampReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StartupDTO dto = new StartupDTO();
		dto.setB_enroll(request.getParameter("enroll"));
		dto.setB_fname(request.getParameter("first_name"));
		dto.setB_lname(request.getParameter("last_name"));
		dto.setB_add(request.getParameter("add"));
		dto.setB_email(request.getParameter("email"));
		dto.setB_mobile(request.getParameter("mobile_no"));
		dto.setB_college(request.getParameter("college"));
		
		StartupDAO dao = new StartupDAO();
		int x = dao.insertintoBootcamp(dto);
		
//		PrintWriter pw = response.getWriter();
//		pw.println(x + "data Inserted");
		
		if (x>0) {
			response.sendRedirect("thanks.html");
		}else {
			response.sendRedirect("BootcampReg.jsp");
		}
		
//		ServletContext ctx=getServletContext();
//		RequestDispatcher rd=ctx.getRequestDispatcher("/home.jsp");
//		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
