package kr.grade.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.board.dao.BoardMyBatisDAO;
import kr.login.controller.Controller;

public class GradeFileDeleteController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int grade_seq  = Integer.parseInt(request.getParameter("grade_seq"));
		String filename = request.getParameter("file");
		
		String uploadFileName = request.getSession().getServletContext().getRealPath("/upload")+"/"+filename;
		
		File uploadfile = new File(uploadFileName);
		if(uploadfile.exists()&& uploadfile.isFile()) {
			uploadfile.delete();
		}
		
		BoardMyBatisDAO dao = new BoardMyBatisDAO();
		dao.gradeDeleteFile(grade_seq);
			
		return null;
	}

}
