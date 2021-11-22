package kr.co.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vo.BoardVO;
import kr.co.vo.SearchCriteria;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void deleteBoard(int boardNo) throws Exception{
		  sqlSession.delete("ClientMapper.deleteBoard", boardNo); 
		  }
	
	public int count2(int boardNo) throws Exception{
		return  sqlSession.selectOne("ClientMapper.count2",boardNo);
	  }
	
	  @Override
	  public List<BoardVO> list2(SearchCriteria scri) throws Exception{
		  return sqlSession.selectList("ClientMapper.listPage2",scri);
	  }
	  
	  public int listCount2(SearchCriteria scri) throws Exception{
		  return sqlSession.selectOne("ClientMapper.listCount2", scri);
	  }

//	  public void notice(String b_no) throws Exception {
//	  sqlSession.update("ClientMapper.notice",b_No);
//  }
}
