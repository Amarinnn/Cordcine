package kr.admin.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.admin.entity.AdminPaging;
import kr.login.controller.Controller;
import kr.login.dao.MemberMyBatisDAO;
import kr.login.entity.Member;


public class NoticeListController implements Controller{

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int num;
		if(request.getParameter("num") == null) {
			num = 1;
		}else {
			num = Integer.parseInt(request.getParameter("num"));
		}
		
		AdminPaging paging = new AdminPaging();
		paging.setView_list(5);
		
		//공지 리스트
		MemberMyBatisDAO dao = new MemberMyBatisDAO();
		List<Member> list;
		
		list = dao.noticePageList(num);
		
		
		//페이징
		paging.setCurrent_page(num);
		paging.Notice_startPage();
		paging.Notice_lastPage();


		
		request.setAttribute("paging", paging);
		request.setAttribute("list", list);
		
		return "admin/notice_manage";
	}
}
