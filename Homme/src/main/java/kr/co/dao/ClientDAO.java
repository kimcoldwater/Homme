package kr.co.dao;

import java.util.List;
import java.util.Map;

import kr.co.vo.CouponVO;
import kr.co.vo.ItemSearchCriteria;
import kr.co.vo.ItemVO;
import kr.co.vo.MemberVO;
import kr.co.vo.SearchCriteria;

public interface ClientDAO {
	//(관리자)회원삭제
	public void deleteClient(String memberId) throws Exception;
	//(관리자)회원정지
	public void disableMember(String memberId,int sectiontime) throws Exception;
	//(관리자)회원조회
	public int count(String memberId) throws Exception;
	//(관리자)회원목록
	public List<MemberVO> list(SearchCriteria scri) throws Exception;
	//(관리자)회원목록갯수
	public int listCount(SearchCriteria scri) throws Exception;
	//상품삭제
	public void deleteItem(String itemNo) throws Exception;
	//상품조회
	public int icount(String itemNo)throws Exception;
	//상품목록
	public List<ItemVO> ilist(ItemSearchCriteria scri) throws Exception;
	//상품목록 갯수
	public int ilistCount(ItemSearchCriteria scri) throws Exception;
	//쿠폰리스트
	public List<CouponVO> coulist(SearchCriteria scri) throws Exception;
	//쿠폰 갯수
	public int coulistCount(SearchCriteria scri) throws Exception;
	//쿠폰 정렬
	public int coucount(String cpnName)throws Exception;
	//쿠폰 삭제
	public void deletecoupon(String cpnName)throws Exception;
	//쿠폰생성
	public void newcoupon(CouponVO vo,int edate) throws Exception;

	
}
