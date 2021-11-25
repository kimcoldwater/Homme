package kr.co.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSession sql;
	
	// 회원가입
	@Override
	public void register(MemberVO vo) throws Exception {
		sql.insert("MemberMapper.register", vo);
	}
	// 로그인
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		return sql.selectOne("MemberMapper.login", vo);
	}
	@Override
	// 자동로그인 체크한 경우에 사용자 테이블에 세션과 유효시간을 저장하기 위한 메서드
    public void keepLogin(String MEM_ID, String sessionId, Date sessionLimit){
         
        Map<String, Object> map = new HashMap<String,Object>();
        map.put("MEM_ID", MEM_ID);
        map.put("MEM_CKID", sessionId);
        map.put("MEM_CKLIMIT", sessionLimit);
         
        // Mapper.xml로 데이터를 전달할 때 한 객체밖에 전달 못함으로 map으로 묶어서 보내줌 단... 주의할 점은
        // Mapper.xml 안에서 #{} 이 안에 지정한 이름이랑 같아야함.. 자동으로 매핑될 수 있도록
        // 아래가 수행되면서, 사용자 테이블에 세션id와 유효시간이 저장됨
        sql.update("MemberMapper.keepLogin",map);
    }
	// 이전에 로그인한 적이 있는지, 즉 유효시간이 넘지 않은 세션을 가지고 있는지 체크한다.
    public MemberVO checkUserWithSessionKey(String value){
        // 유효시간이 남아있고(>now()) 전달받은 세션 id와 일치하는 사용자 정보를 꺼낸다.
        return sql.selectOne("MemberMapper.checkUserWithSessionKey",value);
    }
	// 회원수정
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		sql.update("MemberMapper.memberUpdate", vo);
	}
	// 회원삭제
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		sql.delete("MemberMapper.memberDelete", vo);
	}
	// 비밀번호 체크
	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = sql.selectOne("MemberMapper.passChk", vo);
		return result;
	}
	// 아이디 체크
	@Override
	public int idChk(MemberVO vo) throws Exception {
		String MEM_ID = vo.getMEM_ID();
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("MEM_ID", MEM_ID);
		return sql.selectOne("MemberMapper.idChk", map);	
	}
	// 아이디 찾기
	@Override
	public List<MemberVO> findid(MemberVO vo) throws Exception {
		return sql.selectList("MemberMapper.findid" , vo);
	}
	// 아이디,이메일 유효성 검사
	@Override
	public int findPwCheck(MemberVO vo) throws Exception {
		return sql.selectOne("MemberMapper.findPwCheck", vo);
	}
	// 임시 비밀번호 저장
	@Override
	public int findPw(String MEM_EMAIL,String MEM_ID,String MEM_PW) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("MEM_EMAIL", MEM_EMAIL);
		map.put("MEM_ID", MEM_ID);
		map.put("MEM_PW", MEM_PW);
		return sql.update("MemberMapper.findPw", map);
	}
	// 비밀번호 변경
	@Override
	public void pwModify(MemberVO vo) throws Exception {
		 sql.update("MemberMapper.pwModify", vo);
	}
}