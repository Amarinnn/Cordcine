package kr.to_comment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.board.dao.BoardMyBatisDAO;
import kr.login.controller.Controller;
import kr.toBoard.entity.to_comment;


public class ToCommentListController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int tb_seq = Integer.parseInt(request.getParameter("tb_seq"));
		BoardMyBatisDAO dao = new BoardMyBatisDAO();
		List<to_comment> list = dao.toallComment(tb_seq);
		System.out.println(list);
		request.setAttribute("comlist", list);
//		boolean a=false;
//		HttpSession session = request.getSession();
//		Member mo = (Member)session.getAttribute("mvo");
//		for (to_form i : list) {
//			if(i.getLogin_id().equals(mo.getLogin_id())) {
//				a=true;
//			}
//		}
//		
		Gson gson = new Gson();
		// [{  },{  }]
		String json = gson.toJson(list);
		response.setContentType("text/json;charset=utf-8");
		PrintWriter out =response.getWriter();
		out.println(json); // data만 callback함수로 전달 ㅔ
		System.out.println(json);
		return null;
	}

}
