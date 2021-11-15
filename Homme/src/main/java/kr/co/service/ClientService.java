package kr.co.service;

import java.util.List;

import kr.co.vo.MemberVO;
import kr.co.vo.SearchCriteria;

public interface ClientService {

	public void deleteClient(String memberId) throws Exception;

	public void disableMember(String memberId) throws Exception;

	public int count(String memberId) throws Exception;
	
	public List<MemberVO> list(SearchCriteria scri) throws Exception;
	
	public int listCount(SearchCriteria scri) throws Exception;
}
