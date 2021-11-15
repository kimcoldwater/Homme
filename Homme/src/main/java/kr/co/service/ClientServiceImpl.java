package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.ClientDAO;
import kr.co.vo.MemberVO;
import kr.co.vo.SearchCriteria;

@Service
public class ClientServiceImpl implements ClientService{

	@Autowired
	private ClientDAO dao;
	
	
	public void deleteClient(String memberId) throws Exception{
		
		dao.deleteClient(memberId);
		
	}
	
	public void disableMember(String memberId) throws Exception {
		dao.disableMember(memberId);
		
	}
	public int count(String memberId) throws Exception{
		return dao.count(memberId);
		
	}
		
	@Override
	public List<MemberVO> list(SearchCriteria scri) throws Exception{
		
		return dao.list(scri);
	}
	public int listCount(SearchCriteria scri) throws Exception{
		
		return dao.listCount(scri);
	}
	
}
