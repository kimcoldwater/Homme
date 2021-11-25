
 package kr.co.dao;
  
  import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession; import
  org.springframework.beans.factory.annotation.Autowired; import
  org.springframework.stereotype.Repository;

import kr.co.vo.CouponVO;
import kr.co.vo.ItemSearchCriteria;
import kr.co.vo.ItemVO;
import kr.co.vo.MemberVO;
import kr.co.vo.SearchCriteria;
  
  @Repository public class ClientDAOImpl implements ClientDAO{
  
  @Autowired private SqlSession sqlSession;
  //회원 삭제
  public void deleteClient(String memberId) throws Exception{
  sqlSession.delete("ClientMapper.deleteClient", memberId); 
  }
  //회원 정지
  public void disableMember(String memberId,int sectiontime) throws Exception {
	  Map<String, Object> map = new HashMap<String, Object>();
	  map.put("memberId", memberId);
	  map.put("sectiontime", sectiontime);
  sqlSession.update("ClientMapper.disableMember",map);
  
  }
  //회원 조회
  public int count(String memberId) throws Exception{
	return  sqlSession.selectOne("ClientMapper.count",memberId);
  }
  //회원 리스트
  @Override
  public List<MemberVO> list(SearchCriteria scri) throws Exception{
	  return sqlSession.selectList("ClientMapper.listPage",scri);
  }
  //회원 목록 갯수
  public int listCount(SearchCriteria scri) throws Exception{
	  return sqlSession.selectOne("ClientMapper.listCount", scri);
  }

  //상품삭제
  public void deleteItem(String itemId) throws Exception{
	  Map<String, Object> map = new HashMap<>();
	  map.put("itemNo", itemId);
	  sqlSession.delete("ClientMapper.deleteItem", map); 
	  }
  //상품조회
  public int icount(String itemId) throws Exception{
		return  sqlSession.selectOne("ClientMapper.icount",itemId);
	  }
  //상품 리스트
  @Override
  public List<ItemVO> ilist(ItemSearchCriteria scri) throws Exception{
	  return sqlSession.selectList("ClientMapper.ilistPage",scri);
  }
  //상품 목록 갯수
  @Override
  public int ilistCount(ItemSearchCriteria scri) throws Exception{
	  return sqlSession.selectOne("ClientMapper.ilistCount", scri);
  }
	//쿠폰리스트
  @Override
  public List<CouponVO> coulist(SearchCriteria scri) throws Exception{
	  return sqlSession.selectList("ClientMapper.coulistPage",scri);	
	}
//쿠폰 갯수
  @Override
	public int coulistCount(SearchCriteria scri) throws Exception{
	  return sqlSession.selectOne("ClientMapper.coulistCount", scri);
  }
  //쿠폰 삭제
  @Override
  public void deletecoupon(String cpnName)throws Exception{
	  sqlSession.delete("ClientMapper.deletecoupon", cpnName);
  }
  //쿠폰 정렬
  @Override
  public int coucount(String cpnName)throws Exception{
	  return  sqlSession.selectOne("ClientMapper.coucount",cpnName);
  }
  //쿠폰생성
  public void newcoupon(CouponVO vo) throws Exception{
	  sqlSession.insert("ClientMapper.newcoupon",vo);
  }
}

