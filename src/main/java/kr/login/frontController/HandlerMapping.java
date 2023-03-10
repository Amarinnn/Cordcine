package kr.login.frontController;

import java.util.HashMap;

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
import kr.login.controller.joinFormController;
import kr.map.controller.MapController;
import kr.map.controller.MapListController;
import kr.map.controller.MapPageController;
import kr.map.controller.MapPageListController;
import kr.map.controller.MapSearchController;
import kr.map.controller.MapSearchPageController;
import kr.toBoard_form.controller.FToCommentDeleteController;
import kr.toBoard_form.controller.FToCommentListController;
import kr.toBoard_form.controller.FToCommentUpdateController;
import kr.toBoard_form.controller.FToCommentWriteController;
import kr.toBoard_form.controller.FToCommentcheckController;
import kr.to_board.controller.ToBoardDeleteController;
import kr.to_board.controller.ToBoardUpdateController;
import kr.to_board.controller.ToBoardUpdateFormController;
import kr.to_board.controller.ToBoardViewController;
import kr.to_board.controller.ToBoardWriteController;
import kr.to_board.controller.ToBoardWriteFormController;
import kr.to_board.controller.ToFileDeleteController;
import kr.to_board.controller.ToLikeController;
import kr.to_board.controller.ToPageListController;
import kr.to_board.controller.ToSearchListController;
import kr.to_comment.controller.ToCommentDeleteController;
import kr.to_comment.controller.ToCommentListController;
import kr.to_comment.controller.ToCommentUpdateController;
import kr.to_comment.controller.ToCommentWriteController;
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
import kr.zw_comment.controller.CommentDeleteController;
import kr.zw_comment.controller.CommentListController;
import kr.zw_comment.controller.CommentUpdateController;
import kr.zw_comment.controller.CommentWriteController;

public class HandlerMapping {
	private HashMap<String,Controller> mappings;
	public HandlerMapping() {
		mappings=new HashMap<String,Controller>();
		//??????
		mappings.put("/main.do",new MainController());
		//????????? ????????????
		mappings.put("/joinForm.do",new joinFormController());
		mappings.put("/loginForm.do",new LoginFormController());
		mappings.put("/login.do",new LoginController());
		mappings.put("/loginS.do",new LoginSController());
		mappings.put("/kakaoLoginS.do",new KakaoLoginSController());
		mappings.put("/kakaoLogout.do",new KakaoLogoutController());
		mappings.put("/logout.do",new LogoutController());
		mappings.put("/kakaoLogin.do",new KakaoLoginController());
		//????????????
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
		//??????
		mappings.put("/callist.do", new CalListController());
		
		//???????????????
		mappings.put("/weeklyView.do", new WeeklyViewController());
				
		//???????????????
		
		mappings.put("/mypage.do",new MypageController());
		mappings.put("/mypageWrite.do",new MypageWriteController());
		mappings.put("/mypageVg.do",new MypageVgController());
		mappings.put("/mypageTo.do",new MypageToController());
		mappings.put("/mypageImg.do",new MypageImgController());
		mappings.put("/mypageComment.do",new MypageCommentController());
		mappings.put("/myComVg.do",new MyComVgController());
		mappings.put("/myComTo.do",new MyComToController());
		mappings.put("/myComImg.do",new MyComImgController());
		
		//???????????????????????????
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
		
		//???????????????
		mappings.put("/searchpaging.do", new MapSearchPageController());
		mappings.put("/map.do", new MapController());
		mappings.put("/maplist.do", new MapListController());
		mappings.put("/paging.do", new MapPageController());
		mappings.put("/pagelist.do", new MapPageListController());
		mappings.put("/mapsearch.do", new MapSearchController());
		
		//???????????? ?????????
		mappings.put("/tolist.do", new ToPageListController());
		mappings.put("/tolike.do", new ToLikeController());
		mappings.put("/toboardWriteForm.do", new ToBoardWriteFormController());
		mappings.put("/toboardWrite.do", new ToBoardWriteController());
		mappings.put("/toboardDelete.do", new ToBoardDeleteController());
		mappings.put("/toboardView.do", new ToBoardViewController());
		mappings.put("/toboardUpdate.do", new ToBoardUpdateController());
		mappings.put("/toboardUpdateForm.do", new ToBoardUpdateFormController());
		mappings.put("/tocommentWrite.do", new ToCommentWriteController());
		mappings.put("/tocommentList.do", new ToCommentListController() );
		mappings.put("/tocommentUpdate.do", new ToCommentUpdateController());
		mappings.put("/tocommentDelete.do", new ToCommentDeleteController());
		mappings.put("/toSearch.do", new ToSearchListController());
		mappings.put("/tofileDelete.do", new ToFileDeleteController());
		
		//???????????? ????????? ???
		mappings.put("/ftocommentWrite.do", new FToCommentWriteController());
		mappings.put("/ftocommentList.do", new FToCommentListController() );
		mappings.put("/ftocommentUpdate.do", new FToCommentUpdateController());
		mappings.put("/ftocommentDelete.do", new FToCommentDeleteController());
		mappings.put("/ftocommentcheck.do", new FToCommentcheckController());
	}
	public Controller getController(String command) {
		return mappings.get(command);
	}
}
