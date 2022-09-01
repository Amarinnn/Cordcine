package kr.board.dao;

import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import kr.zw_board.entity.BoardPaging;
import kr.zw_board.entity.Member;
import kr.zw_board.entity.Zw_Board;
import kr.zw_board.entity.pagingsearch;
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
		
		/*
		 * public Member memberLogin(String id) { SqlSession session =
		 * sqlSessionFactory.openSession(); Member mvo =
		 * session.selectOne("memberLogin",id); session.close(); return mvo; }
		 */
		
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
		
		
		
}
