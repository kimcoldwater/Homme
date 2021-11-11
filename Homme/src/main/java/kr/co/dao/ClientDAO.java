package kr.co.dao;

public interface ClientDAO {

	public void deleteClient(String memberId) throws Exception;

	public void stopClient(String memberId) throws Exception;
}
