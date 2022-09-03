package kr.login.frontController;

import java.util.HashMap;

import kr.admin.controller.AdminDeleteController;
import kr.admin.controller.MemberListController;
import kr.admin.controller.NoticeListController;
import kr.join.controller.CalListController;
import kr.join.controller.IdCheckController;
import kr.join.controller.MemberDeleteController;
import kr.join.controller.MemberUpdateController;
import kr.join.controller.MemberUpdateFormController;
import kr.join.controller.MemberViewController;
import kr.join.controller.MemberWriteController;
import kr.join.controller.NicCheckController;
import kr.join.controller.joinController;
import kr.join.controller.joinIdCheckController;
import kr.join.controller.joinSController;
import kr.login.controller.Controller;
import kr.login.controller.KakaoLoginController;
import kr.login.controller.KakaoLoginSController;
import kr.login.controller.KakaoLogoutController;
import kr.login.controller.LoginController;
import kr.login.controller.LoginFormController;
import kr.login.controller.LoginSController;
import kr.login.controller.LogoutController;
import kr.login.controller.MainController;
import kr.login.controller.MyComImgController;
import kr.login.controller.MyComToController;
import kr.login.controller.MyComVgController;
import kr.login.controller.MypageCommentController;
import kr.login.controller.MypageController;
import kr.login.controller.MypageImgController;
import kr.login.controller.MypageToController;
import kr.login.controller.MypageVgController;
import kr.login.controller.MypageWriteController;
import kr.weekly.controller.WeeklyViewController;
import kr.youtube.controller.YoutubeListController;
import kr.zw_board.controller.BoardDeleteController;
import kr.zw_board.controller.BoardNoticeController;
import kr.zw_board.controller.BoardUpdateController;
import kr.zw_board.controller.BoardUpdateFormController;
import kr.zw_board.controller.BoardViewController;
import kr.zw_board.controller.BoardWriteController;
import kr.zw_board.controller.BoardWriteFormController;
import kr.zw_board.controller.FileDeleteController;
import kr.zw_board.controller.LikeController;
import kr.zw_board.controller.PageListController;
import kr.zw_board.controller.SearchListController;
import kr.login.controller.joinFormController;
import kr.map.controller.MapListController;
import kr.map.controller.MapController;
import kr.map.controller.MapSearchController;
import kr.map.controller.MapPageController;
import kr.map.controller.MapPageListController;
import kr.map.controller.MapSearchPageController;
import kr.zw_comment.controller.CommentDeleteController;
import kr.zw_comment.controller.CommentListController;
import kr.zw_comment.controller.CommentUpdateController;
import kr.zw_comment.controller.CommentWriteController;

public class HandlerMapping {
	private HashMap<String,Controller> mappings;
	public HandlerMapping() {
		mappings=new HashMap<String,Controller>();
		//메인
		mappings.put("/main.do",new MainController());
		//로그인 로그아웃
		mappings.put("/joinForm.do",new joinFormController());
		mappings.put("/loginForm.do",new LoginFormController());
		mappings.put("/login.do",new LoginController());
		mappings.put("/loginS.do",new LoginSController());
		mappings.put("/kakaoLoginS.do",new KakaoLoginSController());
		mappings.put("/kakaoLogout.do",new KakaoLogoutController());
		mappings.put("/logout.do",new LogoutController());
		mappings.put("/kakaoLogin.do",new KakaoLoginController());
		//회원가입
		mappings.put("/joinForm.do",new joinFormController());
		mappings.put("/join.do",new joinController());
		mappings.put("/joinIdCheck.do",new joinIdCheckController());
		mappings.put("/joinS.do",new joinSController());
		mappings.put("/memberWrite.do",new MemberWriteController());
		mappings.put("/idCheck.do",new IdCheckController());
		mappings.put("/nicCheck.do",new NicCheckController());
		mappings.put("/memberView.do", new MemberViewController());
		mappings.put("/memberUpdate.do", new MemberUpdateController());
		mappings.put("/memberUpdateForm.do", new MemberUpdateFormController());
		mappings.put("/memberDelete.do", new MemberDeleteController());
		//칼럼
		mappings.put("/callist.do", new CalListController());
		
		//인기검색어
		mappings.put("/weeklyView.do", new WeeklyViewController());
				
		//마이페이지
		
		mappings.put("/mypage.do",new MypageController());
		mappings.put("/mypageWrite.do",new MypageWriteController());
		mappings.put("/mypageVg.do",new MypageVgController());
		mappings.put("/mypageTo.do",new MypageToController());
		mappings.put("/mypageImg.do",new MypageImgController());
		mappings.put("/mypageComment.do",new MypageCommentController());
		mappings.put("/myComVg.do",new MyComVgController());
		mappings.put("/myComTo.do",new MyComToController());
		mappings.put("/myComImg.do",new MyComImgController());
		
		//게시판
		/* mappings.put("/index.do", new IndexController()); */
		mappings.put("/like.do", new LikeController());
		
		mappings.put("/boardWriteForm.do", new BoardWriteFormController());
		mappings.put("/boardWrite.do", new BoardWriteController());
		mappings.put("/boardDelete.do", new BoardDeleteController());
		mappings.put("/boardView.do", new BoardViewController());
		mappings.put("/boardUpdate.do", new BoardUpdateController());
		mappings.put("/boardUpdateForm.do", new BoardUpdateFormController());
		mappings.put("/commentWrite.do", new CommentWriteController());
		mappings.put("/commentList.do", new CommentListController() );
		mappings.put("/commentUpdate.do", new CommentUpdateController());
		mappings.put("/commentDelete.do", new CommentDeleteController());
		mappings.put("/zwlist.do", new PageListController());
		mappings.put("/zwSearch.do", new SearchListController());
		mappings.put("/fileDelete.do", new FileDeleteController());
		
		//지도페이지
		mappings.put("/searchpaging.do", new MapSearchPageController());
		mappings.put("/map.do", new MapController());
		mappings.put("/maplist.do", new MapListController());
		mappings.put("/paging.do", new MapPageController());
		mappings.put("/pagelist.do", new MapPageListController());
		mappings.put("/mapsearch.do", new MapSearchController());
		
		//공지사항
		mappings.put("/boardNotice.do", new BoardNoticeController());
		mappings.put("/delNotice.do", new BoardDeleteController());
		
		
		//관리자페이지
		mappings.put("/memberlist.do", new MemberListController());
		mappings.put("/adminNotice.do", new NoticeListController());
		mappings.put("/user_delete.do", new AdminDeleteController());
		
		//유튜브
		mappings.put("/youtubelist.do", new YoutubeListController());
	}
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
