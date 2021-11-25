package kr.co.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vo.B_replyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{
	
	@Autowired SqlSessionTemplate sql;
	
	//댓글 조회
	@Override
	public List<B_replyVO> readReply(int b_no) throws Exception {
		return sql.selectList("replyMapper.readReply",b_no);
	}
	// 댓글 작성
	@Override
	public void writeReply(B_replyVO vo) throws Exception {
		sql.insert("replyMapper.writeReply", vo);
	}
	// 댓글 수정
	@Override
	public void updateReply(B_replyVO vo) throws Exception {
		sql.update("replyMapper.updateReply", vo);
	}
	// 댓글 삭제
	@Override
	public void deleteReply(int r_no) throws Exception {
		sql.delete("replyMapper.deleteReply", r_no);
	}
	// 댓글 검색
	@Override
	public B_replyVO selectReply(int r_no) throws Exception {
		return sql.selectOne("replyMapper.selectReply", r_no);
	}

}
