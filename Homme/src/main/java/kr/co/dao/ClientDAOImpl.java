package kr.co.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ClientDAOImpl {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void deleteClient(String memberNo) throws Exception{
		sqlSession.delete("ClientMapper.deleteClient", memberNo);
	}
}
