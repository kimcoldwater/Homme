package kr.co.service;

import java.util.List;

import kr.co.vo.CouponVO;
import kr.co.vo.ItemSearchCriteria;
import kr.co.vo.ItemVO;
import kr.co.vo.MemberVO;
import kr.co.vo.SearchCriteria;

public interface ClientService {
	//회원삭제
	public void deleteClient(String memberId) throws Exception;
	//회원 정지
	public void disableMember(String memberId) throws Exception;
	//회원 조회
	public int count(String memberId) throws Exception;
	//회원 리스트목록
	public List<MemberVO> list(SearchCriteria scri) throws Exception;
	//회원 리스트 갯수
	public int listCount(SearchCriteria scri) throws Exception;
	//상품 삭제
	public void deleteItem(String itemId) throws Exception;
	//상품 조회
	public int icount(String itemId) throws Exception;
	//상품 리스트
	public List<ItemVO> ilist(ItemSearchCriteria scri) throws Exception;
	//상품 리스트 갯수
	public int ilistCount(ItemSearchCriteria scri) throws Exception;
	//쿠폰 갯수
	public int coulistCount(SearchCriteria scri)throws Exception;
	//쿠폰리스트
	public List<CouponVO> coulist(SearchCriteria scri)throws Exception;
	//쿠폰 삭제
	public void deletecoupon(String cpnName)throws Exception;
	//쿠폰 정렬
	public int coucount(String cpnName)throws Exception;
	//쿠폰생성
	public void newcoupon(CouponVO vo)throws Exception;
}
