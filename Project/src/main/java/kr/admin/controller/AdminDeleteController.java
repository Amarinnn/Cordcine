package kr.admin.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.login.controller.Controller;
import kr.login.dao.MemberMyBatisDAO;


public class AdminDeleteController implements Controller{

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String[] test = request.getParameterValues("tdArr");
		
		for (String s : test) {
			System.out.println(s);
		}
		
		MemberMyBatisDAO dao = new MemberMyBatisDAO();
		
		
		return "adminPage";
	}
	

}
