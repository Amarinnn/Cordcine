package kr.login.frontController;

import java.util.HashMap;

import kr.buy_board.controller.BuyBoardDeleteController;
import kr.buy_board.controller.BuyBoardUpdateController;
import kr.buy_board.controller.BuyBoardUpdateFormController;
import kr.buy_board.controller.BuyBoardViewController;
import kr.buy_board.controller.BuyBoardWriteController;
import kr.buy_board.controller.BuyBoardWriteFormController;
import kr.buy_board.controller.BuyFileDeleteController;
import kr.buy_board.controller.BuyLikeController;
import kr.buy_board.controller.BuyPageListController;
import kr.buy_board.controller.BuySearchListController;
import kr.buy_comm_form.controller.BCommFormDelCtrl;
import kr.buy_comm_form.controller.BCommFormListCtrl;
import kr.buy_comm_form.controller.BCommFormUpdateCtrl;
import kr.buy_comm_form.controller.BCommFormWriteCtrl;
import kr.buy_comment.controller.BuyCommentDeleteController;
import kr.buy_comment.controller.BuyCommentListController;
import kr.buy_comment.controller.BuyCommentUpdateController;
import kr.buy_comment.controller.BuyCommentWriteController;
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
import kr.zw_board.controller.BoardDeleteController;
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
		mappings.put("/main.do",new MainController());
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
		
		//공동구매 게시판
		mappings.put("/buylike.do", new BuyLikeController());
		
		mappings.put("/buyWriteForm.do", new BuyBoardWriteFormController());
		mappings.put("/buyWrite.do", new BuyBoardWriteController());
		mappings.put("/buyDelete.do", new BuyBoardDeleteController());
		mappings.put("/buyboardView.do", new BuyBoardViewController());
		mappings.put("/buyUpdate.do", new BuyBoardUpdateController());
		mappings.put("/buyUpdateForm.do", new BuyBoardUpdateFormController());
		mappings.put("/buyCommentWrite.do", new BuyCommentWriteController());
		mappings.put("/buyCommentList.do", new BuyCommentListController() );
		mappings.put("/buyCommentUpdate.do", new BuyCommentUpdateController());
		mappings.put("/buyCommentDelete.do", new BuyCommentDeleteController());
		mappings.put("/buylist.do", new BuyPageListController());
		mappings.put("/buySearch.do", new BuySearchListController());
		mappings.put("/buyfileDelete.do", new BuyFileDeleteController());
			//공동구매게시판 댓글 폼
		mappings.put("/buyCommFormList.do", new BCommFormListCtrl());
		mappings.put("/buyCommFormWrite.do", new BCommFormWriteCtrl());
		mappings.put("/buyCommFormDelete.do", new BCommFormDelCtrl());
		mappings.put("/buyCommFormUpdate.do", new BCommFormUpdateCtrl());
		
		
		
	}
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
