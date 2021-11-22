package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.BoardDAO;
import kr.co.vo.BoardVO;
import kr.co.vo.MemberVO;
import kr.co.vo.SearchCriteria;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	private BoardDAO dao;

	
    public void deleteBoard(int boardNo) throws Exception{
		
		dao.deleteBoard(boardNo);
		
	}
	
	public int count2(int boardNo) throws Exception{
		return dao.count2(boardNo);
		
	}
	
	@Override
	public List<BoardVO> list2(SearchCriteria scri) throws Exception{
		
		return dao.list2(scri);
	}
	public int listCount2(SearchCriteria scri) throws Exception{
		
		return dao.listCount2(scri);
	}
	
//	public void notice(String b_No) throws Exception {
//		
//		dao.notice(b_No);		
//	}
}
