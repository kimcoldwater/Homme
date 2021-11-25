package kr.co.service;

import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import kr.co.vo.MemberVO;

public interface MemberService {
	// 회원가입
	public void register(MemberVO vo) throws Exception;
	// 로그인
	public MemberVO login(MemberVO vo) throws Exception;
	// 자동로그인 체크한 경우에 사용자 테이블에 세션과 유효시간을 저장하기 위한 메서드
    public void keepLogin(String MEM_ID, String sessionId, Date next) throws Exception;
    // 이전에 로그인한 적이 있는지, 즉 유효시간이 넘지 않은 세션을 가지고 있는지 체크한다.
    public MemberVO checkLoginBefore(String value) throws Exception;
    // 로그아웃
	public void logout(HttpSession session) throws Exception;
	// 회원수정
	public void memberUpdate(MemberVO vo) throws Exception;
	// 회원삭제
	public void memberDelete(MemberVO vo) throws Exception;
	// 회원삭제 비밀번호 체크
	public int passChk(MemberVO vo) throws Exception;
	// 아이디 중복검사
	public int idChk(MemberVO vo) throws Exception;
	// 아이디 찾기
	ArrayList<String> findid(MemberVO vo) throws Exception;
	// 비밀번호 찾기 (아이디, 이메일)
	public int findPwCheck(MemberVO vo) throws Exception;
	// 비밀번호 찾기
	public void findPw(String MEM_EMAIL, String MEM_ID) throws Exception;
	// 비밀번호 변경
	public void pwModify(MemberVO vo) throws Exception;

}