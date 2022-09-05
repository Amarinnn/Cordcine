package kr.to_board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.board.dao.BoardMyBatisDAO;
import kr.login.controller.Controller;
import kr.toBoard.entity.ToBoard;


public class ToBoardWriteController implements Controller{
	@Override
	public String requestProcessor(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		MultipartRequest multi = null;
		int sizeLimit = 10 * 1024 * 1024;
		
		String savePath = request.getSession().getServletContext().getRealPath("/upload");
		
		try{
			multi=new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		String filename = multi.getFilesystemName("filename1");
		String title = multi.getParameter("title");
		String writer = multi.getParameter("writer");
		String headline = multi.getParameter("headline");
		System.out.println(writer);
		int count = 0;
		String content = multi.getParameter("content");
		int likes=0;
		System.out.println(filename);
		if(title == "" ||title == null) System.out.println("title is null");
		
//		if(writer == "" ||writer == null) System.out.println("writer is null");	
//		else if(!Pattern.matches("^[_0-9a-zA-Z-]+@[0-9a-zA-Z-]+(.[_0-9a-zA-Z-]+)*$", writer))System. out.println("no e-mail.");
		
		if(content == "" ||content == null)System. out.println("content is null");
		
		if(filename =="" || filename == null) filename = " ";
		ToBoard vo = new ToBoard();
		BoardMyBatisDAO dao = new BoardMyBatisDAO();
		
		vo.setTb_file(filename);
		vo.setTb_title(title);
		vo.setTb_content(content);
		vo.setLogin_id(writer);
		vo.setTb_cnt(count);
		vo.setTb_likes(likes);
		vo.setTb_headline(headline);
		dao.toboardWrite(vo);
		
		return "redirect:/tolist.do";
	}

}
