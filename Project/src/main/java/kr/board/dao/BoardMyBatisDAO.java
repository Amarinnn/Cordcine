package kr.board.dao;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.toBoard.entity.ToBoard;
import kr.toBoard.entity.to_comment;
import kr.toBoard.entity.to_form;
import kr.zw_board.entity.BoardPaging;
import kr.zw_board.entity.Zw_Board;
import kr.zw_comment.entity.zw_comment;

// MyBatis FrameWork : java <----- SQL Mapping ----> SQL(XML파일)
// http://mybatis.org
public class BoardMyBatisDAO {
	private static SqlSessionFactory sqlSessionFactory;
	// 초기화 블럭 ( 프로그램 실행시 딱 한번만 실행이 되는 블럭)
	static {
		try {
			String resource = "kr/login/dao/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}	
	//제로웨이스트
		public List<Zw_Board> allList() {
			SqlSession session =sqlSessionFactory.openSession();
			List<Zw_Board> list =session.selectList("allList");
			session.close();
			return list;
			
	}
		
		public int allListCount() {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt=session.selectOne("allListCount");
			session.close();//반납
			return cnt;
		}
	
		public List<Zw_Board> someList(BoardPaging page) {
			SqlSession session = sqlSessionFactory.openSession();
			List<Zw_Board> list=session.selectList("someList",page);
			session .close();//반납
			return list;
	}
		
		public List<Zw_Board> searchList(Map<String,Object> m ){
			
			SqlSession session = sqlSessionFactory.openSession();
			List<Zw_Board> list=session.selectList("searchList",m);
			session.close();//반납
			return list;
			
			
		}
		public List<zw_comment> allComment(int num){
			SqlSession session =sqlSessionFactory.openSession();
			List<zw_comment> list =session.selectList("allComment",num);
			session.close();
			return list;
		}
		public int boardWrite(Zw_Board vo) {
			SqlSession session =sqlSessionFactory.openSession();
			int cnt =session.insert("boardWrite",vo);
			String login_id = vo.getLogin_id();
			session.update("writePoint", login_id);
			session.commit();
			session.close();
			return cnt;
		}
		
		public int commentWrite(zw_comment comm) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt = session.insert("commentWrite",comm);
			String login_id = comm.getLogin_id();
			session.update("commentPoint", login_id);
			session.commit();
			session.close();
			return cnt;
		}
		
		public int boardDelete(int num) {
			SqlSession session =sqlSessionFactory.openSession();
			session.delete("commentDelete2", num);
			int cnt =session.delete("boardDelete",num);
			session.commit();
			session.close();
			return cnt;
		}
		
		public int commentDelete(int num) {
			SqlSession session =sqlSessionFactory.openSession();
			int cnt =session.delete("commentDelete",num);
			System.out.println("mbdelete");
			session.commit();
			session.close();
			return cnt;
		}
		
		public Zw_Board boardView(int num) {
			SqlSession session = sqlSessionFactory.openSession();
			Zw_Board vo =session.selectOne("boardView", num);
			session.close();
			return vo;
		}
		
		public int boardUpdate(Zw_Board vo) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt = session.update("boardUpdate", vo);
			session.commit();
			session.close();
			return cnt;
		}
		public int boardUpdate2(Zw_Board vo) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt = session.update("boardUpdate2", vo);
			session.commit();
			session.close();
			return cnt;
		}
		
		public void countUpdate(int num) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt= session.update("countUpdate", num);
			session.commit();
			session.close();
		}
		

		
		public void commentUpdate(zw_comment comm) {
			SqlSession session = sqlSessionFactory.openSession();
			session.update("commentUpdate", comm);
			session.commit();
			session.close();
		}
		
		public int likeCheck(Map<String,Object> m ) {
			SqlSession session =sqlSessionFactory.openSession();
			int cnt =session.selectOne("likeCheck",m);
			session.close();
			return cnt;
		}
		
		public void likeUpdate(Map<String,Object> m ) {
			SqlSession session =sqlSessionFactory.openSession();
			session.update("likeUpdate",m);
			session.commit();
			session.close();
			
			
		}
		
		public void likeDelete(Map<String,Object> m ) {
			SqlSession session =sqlSessionFactory.openSession();
			session.delete("likeDelete",m);
			session.commit();
			session.close();
		}
		
		public int likeCount(int zw_seq) {
			
			SqlSession session =sqlSessionFactory.openSession();
			int cnt =session.selectOne("likeCount",zw_seq);
			Map<String,Object> m = new HashMap<>();
			m.put("cnt", cnt);
			m.put("zw_seq", zw_seq);
			session.update("updateLike", m);
			session.commit();
			session.close();
			return cnt;
			
		}

		public int searchListCount(Map<String,Object> m) {
			System.out.println(m.get("text"));
			SqlSession session = sqlSessionFactory.openSession();
			int cnt=session.selectOne("searchListCount", m);
			session.close();//반납
			return cnt;
		}

		public void deleteFile(int zw_seq) {
			SqlSession session =sqlSessionFactory.openSession();
			session.update("deleteFile", zw_seq);
			session.commit();
			session.close();
		}
		
		//함께해요 게시판
		public List<ToBoard> toallList() {
			SqlSession session =sqlSessionFactory.openSession();
			List<ToBoard> list =session.selectList("toallList");
			session.close();
			return list;
			
		}
		
		public int toallListCount() {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt=session.selectOne("toallListCount");
			session.close();//반납
			return cnt;
		}
		
		public List<ToBoard> tosomeList(BoardPaging page) {
			SqlSession session = sqlSessionFactory.openSession();
			List<ToBoard> list=session.selectList("tosomeList",page);
			session .close();//반납
			return list;
		}
		
		public List<ToBoard> tosearchList(Map<String,Object> m ){
			
			SqlSession session = sqlSessionFactory.openSession();
			List<ToBoard> list=session.selectList("tosearchList",m);
			session.close();//반납
			return list;
			
			
		}
		public List<to_comment> toallComment(int num){
			SqlSession session =sqlSessionFactory.openSession();
			List<to_comment> list =session.selectList("toallComment",num);
			session.close();
			return list;
		}
		public int toboardWrite(ToBoard vo) {
			SqlSession session =sqlSessionFactory.openSession();
			int cnt =session.insert("toboardWrite",vo);
			String login_id = vo.getLogin_id();
			session.update("towritePoint", login_id);
			session.commit();
			session.close();
			return cnt;
		}
		
		public int tocommentWrite(to_comment comm) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt = session.insert("tocommentWrite",comm);
			String login_id = comm.getLogin_id();
			session.update("tocommentPoint", login_id);
			session.commit();
			session.close();
			return cnt;
		}
		
		public int toboardDelete(int num) {
			SqlSession session =sqlSessionFactory.openSession();
			session.delete("tocommentDelete2", num);
			int cnt =session.delete("toboardDelete",num);
			session.commit();
			session.close();
			return cnt;
		}
		
		public int tocommentDelete(int num) {
			SqlSession session =sqlSessionFactory.openSession();
			int cnt =session.delete("tocommentDelete",num);
			System.out.println("tombdelete");
			session.commit();
			session.close();
			return cnt;
		}
		
		public ToBoard toboardView(int num) {
			SqlSession session = sqlSessionFactory.openSession();
			ToBoard vo =session.selectOne("toboardView", num);
			session.close();
			return vo;
		}
		
		public int toboardUpdate(ToBoard vo) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt = session.update("toboardUpdate", vo);
			session.commit();
			session.close();
			return cnt;
		}
		public int toboardUpdate2(ToBoard vo) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt = session.update("toboardUpdate2", vo);
			session.commit();
			session.close();
			return cnt;
		}
		
		public void tocountUpdate(int num) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt= session.update("tocountUpdate", num);
			session.commit();
			session.close();
		}
		
		
		public void tocommentUpdate(to_comment comm) {
			SqlSession session = sqlSessionFactory.openSession();
			session.update("tocommentUpdate", comm);
			session.commit();
			session.close();
		}
		
		public int tolikeCheck(Map<String,Object> m ) {
			SqlSession session =sqlSessionFactory.openSession();
			int cnt =session.selectOne("tolikeCheck",m);
			session.close();
			return cnt;
		}
		
		public void tolikeUpdate(Map<String,Object> m ) {
			SqlSession session =sqlSessionFactory.openSession();
			session.update("tolikeUpdate",m);
			session.commit();
			session.close();
			
			
		}
		
		public void tolikeDelete(Map<String,Object> m ) {
			SqlSession session =sqlSessionFactory.openSession();
			session.delete("tolikeDelete",m);
			session.commit();
			session.close();
		}
		
		public int tolikeCount(int tb_seq) {
			
			SqlSession session =sqlSessionFactory.openSession();
			int cnt =session.selectOne("tolikeCount",tb_seq);
			Map<String,Object> m = new HashMap<>();
			m.put("cnt", cnt);
			m.put("tb_seq", tb_seq);
			session.update("toupdateLike", m);
			session.commit();
			session.close();
			return cnt;
			
		}
		
		public int tosearchListCount(Map<String,Object> m) {
			System.out.println(m.get("text"));
			SqlSession session = sqlSessionFactory.openSession();
			int cnt=session.selectOne("tosearchListCount", m);
			session.close();//반납
			return cnt;
		}
		
		public void todeleteFile(int tb_seq) {
			SqlSession session =sqlSessionFactory.openSession();
			session.update("todeleteFile", tb_seq);
			session.commit();
			session.close();
		}
		
		//함께해요 게시판 폼
		public List<to_form> ftoallComment(int num){
			SqlSession session =sqlSessionFactory.openSession();
			List<to_form> list =session.selectList("ftoallComment",num);
			session.close();
			return list;
		}
		public int ftocommentDelete(to_form vo) {
			SqlSession session =sqlSessionFactory.openSession();
			int cnt =session.delete("ftocommentDelete",vo);
			System.out.println("ftombdelete");
			session.commit();
			session.close();
			return cnt;
		}
		public int ftocommentUpdate(to_form comm) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt=session.update("ftocommentUpdate", comm);
			session.commit();
			session.close();
			return cnt;
		}
		public int ftocommentWrite(to_form comm) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt = session.insert("ftocommentWrite",comm);
			session.commit();
			session.close();
			return cnt;
		}

		public void ftoCommentCheck(to_form tf) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt = session.update("ftocommentCheck",tf);
			String login_id = tf.getLogin_id();
			session.update("tocommentPoint", login_id);
			session.commit();
			session.close();
		}
		public int ftoCommentPoint(String login_id) {
			SqlSession session = sqlSessionFactory.openSession();
			int cnt=session.update("ftocommentPoint", login_id);
			session.commit();
			session.close();
			return cnt;
		}
		
}
