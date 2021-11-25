package kr.co.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;
	//게시글 작성
	@Override
	public void boardInsert(BoardVO boardVO) throws Exception{
		
		sqlSession.insert("BoardMapper.insert", boardVO);
	}
	//게시물 목록 조회
	@Override
	public List<BoardVO> boardlist(SearchCriteria scri) throws Exception {
		
		return sqlSession.selectList("BoardMapper.boardlist", scri);
	}
	//게시물 총 갯수
	@Override
	public int listCount(SearchCriteria scri) throws Exception {
		
		return sqlSession.selectOne("BoardMapper.listCount", scri);
	}
	//게시물 조회
	@Override
	public BoardVO boardview(int b_no) throws Exception {
		return sqlSession.selectOne("BoardMapper.boardview", b_no);
	}
	//게시물 수정
	@Override
	public void update(BoardVO boardVO) throws Exception {
		sqlSession.update("BoardMapper.update", boardVO);
	}
	
	//게시물 삭제
	@Override
	public void delete(int b_no) throws Exception {
		sqlSession.delete("BoardMapper.delete", b_no);
	}
	//게시물 조회수
	@Override
	public void boardHit(int b_no) throws Exception {
		sqlSession.update("BoardMapper.boardHit", b_no);
	}
	//파일 업로드
	@Override
	public void insertFile(Map<String, Object> map) throws Exception {
		sqlSession.insert("BoardMapper.insertFile", map);
	}
	//(관리자)게시물 삭제
	@Override
	public void deleteBoard(int boardNo) throws Exception{
		  sqlSession.delete("ClientMapper.deleteBoard", boardNo); 
		  }
	//(관리자)게시판 번호로 구분
	public int count2(int boardNo) throws Exception{
		return  sqlSession.selectOne("ClientMapper.count2",boardNo);
	  }
	//(관리자)게시판 목록
	  @Override
	  public List<BoardVO> list2(SearchCriteria scri) throws Exception{
		  return sqlSession.selectList("ClientMapper.listPage2",scri);
	  }
	//(관리자)게시판 리스트 
	  public int listCount2(SearchCriteria scri) throws Exception{
		  return sqlSession.selectOne("ClientMapper.listCount2", scri);
	  }
	//(관리자)공지 목록
	  public List<BoardVO> nlist(SearchCriteria scri) throws Exception{
		  return sqlSession.selectList("ClientMapper.nlist",scri);
	  }
	//(관리자)공지설정 
	  public void notice(int boardNo) throws Exception{
		   sqlSession.update("ClientMapper.notice", boardNo); 
		  }
	//(관리자)공지 해제
	  public void down(int boardNo) throws Exception{
		  sqlSession.update("ClientMapper.down", boardNo); 
	  }

}
