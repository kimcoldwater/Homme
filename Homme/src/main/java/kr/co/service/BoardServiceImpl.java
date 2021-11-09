package kr.co.service;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.dao.BoardDAO;

public class BoardServiceImpl implements BoardService{

	@Autowired
	private BoardDAO dao;
	
}
