package kr.buy_comment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.board.dao.BoardMyBatisDAO;
import kr.buy_board.entity.Buy_Board;
import kr.buy_comm_form.entity.BCommForm;
import kr.buy_comment.entity.buy_comment;
import kr.login.controller.Controller;


public class BuyCommentListController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int buy_seq = Integer.parseInt(request.getParameter("buy_seq"));
		BoardMyBatisDAO dao = new BoardMyBatisDAO();
		List<buy_comment> list = dao.buyallComment(buy_seq);
		System.out.println(list);
		
		request.setAttribute("comlist", list);

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
