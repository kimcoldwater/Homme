package kr.co.dao;

import java.util.List;

import kr.co.vo.BoardVO;
import kr.co.vo.MemberVO;
import kr.co.vo.SearchCriteria;

public interface BoardDAO {

	public void deleteBoard(int boardNo) throws Exception;
	
	public int count2(int boardNo) throws Exception;

	public List<BoardVO> list2(SearchCriteria scri) throws Exception;
	
	public int listCount2(SearchCriteria scri) throws Exception;
}
