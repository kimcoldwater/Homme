package kr.co.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.dao.BoardDAO;
import kr.co.util.FileUtils;
import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Autowired
	private BoardDAO dao;
	// 게시글 작성
	@Transactional
	@Override
	public void boardInsert(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception{
	 dao.boardInsert(boardVO);
	 
	 List<Map<String,Object>> list = fileUtils.parseInsertFileInfo(boardVO, mpRequest); 
		int size = list.size();
		for(int i=0; i<size; i++){ 
			dao.insertFile(list.get(i)); 
		}
	}
	// 게시물 목록 조회
	@Override
	public List<BoardVO> boardlist(SearchCriteria scri) throws Exception {
		return dao.boardlist(scri);
	}
	// 게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		
		return dao.listCount(scri);
	}
	
	//게시물 조회
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BoardVO boardview(int b_no) throws Exception {
		dao.boardHit(b_no);
		return dao.boardview(b_no);
	}

	// 게시물 수정
	@Transactional
	@Override
	public void update(BoardVO boardVO) throws Exception{
		
		dao.update(boardVO);
	}
	// 게시물 삭제
	@Transactional
	@Override
	public void delete(int b_no) throws Exception{
		
		dao.delete(b_no);
	}
	//(관리자)게시물 삭제
    public void deleteBoard(int boardNo) throws Exception{
		
		dao.deleteBoard(boardNo);
		
	}
  //(관리자)게시물 조회
	public int count2(int boardNo) throws Exception{
		return dao.count2(boardNo);
		
	}
	//(관리자)게시물 목록
	@Override
	public List<BoardVO> list2(SearchCriteria scri) throws Exception{
		
		return dao.list2(scri);
	}
	//(관리자)게시물 목록 갯수
	public int listCount2(SearchCriteria scri) throws Exception{
		
		return dao.listCount2(scri);
	}	
	//(관리자)공지사항 리스트
	public List<BoardVO> nlist(SearchCriteria scri) throws Exception{
		
		return dao.nlist(scri);
	}
	//(관리자)공지사항 설정
	public void notice(int boardNo) throws Exception{
		
		dao.notice(boardNo);
		
	}
	//(관리자)공지사항 해제
	public void down(int boardNo) throws Exception{
		
		dao.down(boardNo);
		
	}

}
