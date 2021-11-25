package kr.co.service;

import java.util.List;

import kr.co.vo.B_replyVO;

public interface ReplyService {
	// 댓글 조회
	public List<B_replyVO> readReply(int b_no) throws Exception;
	// 댓글 작성
	public void writeReply(B_replyVO vo) throws Exception;
	// 댓글 수정
	public void updateReply(B_replyVO vo) throws Exception;
	// 댓글 삭제
	public void deleteReply(int r_no) throws Exception;
	// 댓글 검색
	public B_replyVO selectReply(int r_no) throws Exception;
}
