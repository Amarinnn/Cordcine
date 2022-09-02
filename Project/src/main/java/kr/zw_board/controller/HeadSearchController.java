package kr.zw_board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardMyBatisDAO;
import kr.login.controller.Controller;
import kr.zw_board.entity.BoardPaging;

public class HeadSearchController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String p = request.getParameter("p");
		if(p == null) {
			p = "1";
		}
		
		String headval = request.getParameter("headval");
		
		BoardMyBatisDAO dao = new BoardMyBatisDAO();
		BoardPaging board = new BoardPaging(); 
		
		return null;
	}

}
