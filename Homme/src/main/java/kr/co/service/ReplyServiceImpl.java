package kr.co.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.dao.ReplyDAO;
import kr.co.vo.B_replyVO;

@Service
public class ReplyServiceImpl implements ReplyService {
	
	@Autowired
	private ReplyDAO dao;
	// 댓글 조회
	@Override
	public List<B_replyVO> readReply(int b_no) throws Exception {
		return dao.readReply(b_no);
	}
	// 댓글 작성
	@Override
	public void writeReply(B_replyVO vo) throws Exception {
		dao.writeReply(vo);
	}
	// 댓글 수정
	@Override
	public void updateReply(B_replyVO vo) throws Exception {
		dao.updateReply(vo);
	}
	// 댓글 삭제
	@Override
	public void deleteReply(int r_no) throws Exception {
		dao.deleteReply(r_no);
	}
	//댓글 검색
	@Override
	public B_replyVO selectReply(int r_no) throws Exception {
		return dao.selectReply(r_no);
	}
}
