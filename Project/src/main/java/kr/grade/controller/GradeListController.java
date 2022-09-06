package kr.grade.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardMyBatisDAO;
import kr.grade.entity.grade_Board;
import kr.login.controller.Controller;
import kr.zw_board.entity.BoardPaging;
import kr.zw_board.entity.Zw_Board;

public class GradeListController implements Controller{

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String p = request.getParameter("p");
		if(p == null) {
			p = "1";
		}
		BoardMyBatisDAO dao = new BoardMyBatisDAO();
		
		
		//페이징 처리
		BoardPaging board = new BoardPaging(); 
		board.setAllPageCount(dao.gradeListCount());
		board.calculatePageCount();
		board.startCount(Integer.parseInt(p));
		board.endCount(Integer.parseInt(p));
		board.start_Page(Integer.parseInt(p));
		board.end_Page(Integer.parseInt(p));
		board.setCurrentPage(Integer.parseInt(p));
		List<grade_Board> list=dao.gradeList(board);
		
		List<grade_Board> notice_list =dao.gradeNoticeList();
		
		
		request.setAttribute("list", list);
		request.setAttribute("board", board);
		request.setAttribute("notice", notice_list);
		
		return "grade_board/grade_board";
		
	}

	
}
