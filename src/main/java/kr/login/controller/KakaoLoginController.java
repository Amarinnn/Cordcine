package kr.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import kr.login.dao.MemberMyBatisDAO;
import kr.login.entity.Kakao_member;
import kr.login.entity.Member;

public class KakaoLoginController implements Controller {

	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
			String user_name= request.getParameter("user_name");
			String login_id= request.getParameter("login_id");
			String u_nick= request.getParameter("u_nick");
			String email = request.getParameter("email");
			if(email!=null) {
				login_id=email;
			}
//			String user_id= request.getParameter("user_id");
			System.out.println(user_name);
			System.out.println(login_id);
			System.out.println(u_nick);
//			System.out.println(user_id);
			/* log.info("카카오 로그인 인증정보:"+ form); */
			
			/*
			 * User user = User.builder() .email(form.getEmail()) .name(form.getName())
			 * .img(form.getImg()) .loginType(KAKAO_LOGIN_TYPE) .build();
			 * 
			 * User savedUser = userService.loginWithKakao(user);
			 */
			MemberMyBatisDAO dao = new MemberMyBatisDAO();
					
			Kakao_member vo = new Kakao_member();
			
			vo.setLogin_id(login_id);
			vo.setUser_name(user_name);
			vo.setU_nick(u_nick);
			System.out.println("vo="+vo);
			Member mvo = dao.KakaoLogin(vo);
			System.out.println("mvo="+mvo);
			Member mb=dao.memberView(login_id);
			String gd=mb.getU_grade();
			System.out.println(gd);
			String grade="";
			if(gd.equals("지구프랜즈")) {
				grade="/img/my/1.png";
			}
			if(gd.equals("지구지킴단")) {
				grade="/img/my/2.png";
			}
			if(gd.equals("지구특공대")) {
				grade="/img/my/3.png";
			}
			if(gd.equals("지구어벤져스")) {
				grade="/img/my/4.png";
			}
			if(gd.equals("admin")) {
				grade="/img/my/5.png";
			}
			System.out.println("grade=="+grade);
			//저장된 회원정보가 없으면 정보를 회원가입 처리, 있으면 로그인 처리
			if (mvo != null) {
				HttpSession session = request.getSession();
				session.setAttribute("mvo", mvo);
				 session.setAttribute("grade", grade);
			}else {
				dao.KakaoJoin(vo);
				mvo = dao.KakaoLogin(vo);
				Member m=dao.memberView(login_id);
				String g=mb.getU_grade();
				System.out.println(gd);
				if(gd.equals("지구프랜즈")) {
					grade="/img/my/1.png";
				}
				if(gd.equals("지구지킴단")) {
					grade="/img/my/2.png";
				}
				if(gd.equals("지구특공대")) {
					grade="/img/my/3.png";
				}
				if(gd.equals("지구어벤져스")) {
					grade="/img/my/4.png";
				}
				if(gd.equals("admin")) {
					grade="/img/my/5.png";
				}
				HttpSession session = request.getSession();
				session.setAttribute("mvo", mvo);
				session.setAttribute("grade", grade);
			}
				
				
				
				// 저장된 회원정보가 없으면 전달받은 회원정보를 세션에 저장, 있으면 기존 정보 저장.
		 /*   if(savedUser != null) { 
				SessionUtils.addAttribute("LOGIN_USER", savedUser);
			}
			
			  else { SessionUtils.addAttribute("LOGIN_USER", user); }
			*/
			
		
//			return  "redirect:/main.do";
			return null;
		
	}
}

