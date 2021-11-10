package kr.co.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.ClientDAO;

@Service
public class ClientServiceImpl implements ClientService{

	@Autowired
	private ClientDAO dao;
	
	
	public void deleteClient(String memberNo) throws Exception{
		
		dao.deleteClient(memberNo);
		
	}
}
