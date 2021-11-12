
 package kr.co.dao;
  
  import org.apache.ibatis.session.SqlSession; import
  org.springframework.beans.factory.annotation.Autowired; import
  org.springframework.stereotype.Repository;
  
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
}

