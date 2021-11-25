package kr.co.service;

import java.util.List;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

public interface BoardService {
	//게시글 작성
	public void boardInsert(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception;
	//게시물 목록 조회
	public List<BoardVO> boardlist(SearchCriteria scri) throws Exception;
	//게시물 총 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	//게시물 조회
	public BoardVO boardview(int b_no) throws Exception;
	//게시물 수정
	public void update(BoardVO boardVO) throws Exception;
	//게시물 삭제
	public void delete(int b_no) throws Exception;
	//(관리자)게시물 삭제
	public void deleteBoard(int boardNo) throws Exception;
	//(관리자)게시물 조회
	public int count2(int boardNo) throws Exception;
	//(관리자)게시물 목록 리스트
	public List<BoardVO> list2(SearchCriteria scri) throws Exception;
	//(관리자)게시물 목록 갯수
	public int listCount2(SearchCriteria scri) throws Exception;
	//(관리자)공지사항 설정
	public void notice(int boardNo) throws Exception;
	//(관리자)공지사항 해제
	public void down(int boardNo) throws Exception;
	//(관리자)	
	public List<BoardVO> nlist(SearchCriteria scri) throws Exception;
	

}
