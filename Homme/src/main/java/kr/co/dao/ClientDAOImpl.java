
 package kr.co.dao;
  
  import java.util.List;

import org.apache.ibatis.session.SqlSession; import
  org.springframework.beans.factory.annotation.Autowired; import
  org.springframework.stereotype.Repository;

import kr.co.vo.MemberVO;
import kr.co.vo.SearchCriteria;
  
  @Repository public class ClientDAOImpl implements ClientDAO{
  
  @Autowired private SqlSession sqlSession;
  
  public void deleteClient(String memberId) throws Exception{
  sqlSession.delete("ClientMapper.deleteClient", memberId); 
  }
  
  public void disableMember(String memberId) throws Exception {
  sqlSession.update("ClientMapper.disableMember",memberId);
  
  }
  public int count(String memberId) throws Exception{
	return  sqlSession.selectOne("ClientMapper.count",memberId);
  }
  @Override
  public List<MemberVO> list(SearchCriteria scri) throws Exception{
	  return sqlSession.selectList("ClientMapper.listPage",scri);
  }
  public int listCount(SearchCriteria scri) throws Exception{
	  return sqlSession.selectOne("ClientMapper.listCount", scri);
  }

}

