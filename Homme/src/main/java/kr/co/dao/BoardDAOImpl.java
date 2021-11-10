package kr.co.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSession sqlsession;
	
	@Override
	public void boardInsert(String board) throws Exception{
		
		sqlsession.insert("BoardMapper.insert", board);
		
	}


}
