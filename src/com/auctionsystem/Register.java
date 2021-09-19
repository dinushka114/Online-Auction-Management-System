package com.auctionsystem;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String userName= request.getParameter("userName");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phone");
		String userType = request.getParameter("userType");
		String password = request.getParameter("password");
		String confirmPassword = request.getParameter("confirmPassword");
			
//		if(!password.equals(confirmPassword)) {
//			response.getWriter().print("Password not match");
//			System.out.println("Password not match");
//		}
		
//		System.out.println(password + " " + confirmPassword + " " + email + " " + userName + " " + lastName + " " + firstName + " " + userType );
//	
		Member member = new Member(firstName , lastName , userName , phoneNumber , email , userType , password );
		RegisterDao registerDao = new RegisterDao();
		String result = registerDao.insert(member);
		PrintWriter out = response.getWriter();
		out.println(result);
	}

}
