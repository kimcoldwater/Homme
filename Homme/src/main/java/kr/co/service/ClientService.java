package kr.co.service;

public interface ClientService {

	public void deleteClient(String memberId) throws Exception;

	public void disableMember(String memberId) throws Exception;

	public int count(String memberId) throws Exception;
}
