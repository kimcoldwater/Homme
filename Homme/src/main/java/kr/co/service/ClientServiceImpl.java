package kr.co.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.ClientDAO;
import kr.co.vo.CouponVO;
import kr.co.vo.ItemSearchCriteria;
import kr.co.vo.ItemVO;
import kr.co.vo.MemberVO;
import kr.co.vo.SearchCriteria;

@Service
public class ClientServiceImpl implements ClientService{

	@Autowired
	private ClientDAO dao;
	
	//회원삭제
	public void deleteClient(String memberId) throws Exception{
		
		dao.deleteClient(memberId);
		
	}
	//회원정지
	public void disableMember(String memberId,int sectiontime) throws Exception {
		dao.disableMember(memberId,sectiontime);
		
	}
	//회원조회
	public int count(String memberId) throws Exception{
		return dao.count(memberId);
		
	}
	//회원리스트 목록
	@Override
	public List<MemberVO> list(SearchCriteria scri) throws Exception{
		
		return dao.list(scri);
	}
	//회원리스트 목록갯수
	public int listCount(SearchCriteria scri) throws Exception{
		
		return dao.listCount(scri);
	}
	//상품 삭제
	public void deleteItem(String itemId) throws Exception{
		
		dao.deleteClient(itemId);
		
	}
	//상품 목록
	public int icount(String itemId) throws Exception{
		return dao.icount(itemId);
		
	}
	//상품 리스트
	public List<ItemVO> ilist(ItemSearchCriteria scri) throws Exception{
		
		return dao.ilist(scri);
	}	
	//상품리스트 목록갯수
	public int ilistCount(ItemSearchCriteria scri) throws Exception{
		
		return dao.ilistCount(scri);
	}	
	//쿠폰리스트
	public List<CouponVO> coulist(SearchCriteria scri)throws Exception{
		
		return dao.coulist(scri);
	}
	
	//쿠폰 갯수
	public int coulistCount(SearchCriteria scri)throws Exception{
		
		return dao.coulistCount(scri);
	}
	//쿠폰삭제
	@Override
	public void deletecoupon(String cpnName) throws Exception{
		
		dao.deleteClient(cpnName);
		
	}
	//쿠폰 정렬
	@Override
	public int coucount(String cpnName)throws Exception{
		
		return dao.coucount(cpnName);
	}
	//쿠폰생성
	@Override
	public void newcoupon(CouponVO vo,int edate)throws Exception{
		
		
		 dao.newcoupon(vo,edate);
	}
}
