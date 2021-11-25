package kr.co.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.dao.MemberDAO;
import kr.co.util.MailUtils;
import kr.co.util.TempKey;
import kr.co.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDAO dao;
	
	@Autowired
	JavaMailSender mailSender;
	
	@Transactional
	@Override
	public void register(MemberVO vo) throws Exception {
		dao.register(vo);
	}
	@Transactional
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		return dao.login(vo);
	}
	@Override
    public void keepLogin(String MEM_ID, String sessionId, Date sessionLimit) throws Exception {
        dao.keepLogin(MEM_ID, sessionId, sessionLimit);
    }
	@Override
    public MemberVO checkLoginBefore(String value) throws Exception {
        return dao.checkUserWithSessionKey(value);
    }
	@Override
	public void logout(HttpSession session) throws Exception {
		session.invalidate();
	}
	@Transactional
	@Override
	public void memberUpdate(MemberVO vo) throws Exception {
		
		dao.memberUpdate(vo);
	}
	@Transactional
	@Override
	public void memberDelete(MemberVO vo) throws Exception {
		
		dao.memberDelete(vo);
	}
	@Override
	public int passChk(MemberVO vo) throws Exception {
		int result = dao.passChk(vo);
		return result;
	}
	@Override
	public int idChk(MemberVO vo) throws Exception {
		int result = dao.idChk(vo);
		return result;
	}
	@Override
	public ArrayList<String> findid(MemberVO vo) throws Exception {
		List<MemberVO> list = dao.findid(vo);
		ArrayList<String> findid = new ArrayList<String>();  
		for(int i =0; i <list.size(); i ++) {
			String email = list.get(i).getMEM_ID();
			findid.add(email);
		}
		return findid;
	}
	@Override
	public int findPwCheck(MemberVO vo) throws Exception {
		return dao.findPwCheck(vo);
	}
	@Override
	public void findPw(String MEM_EMAIL,String MEM_ID) throws Exception {
		String memberKey = new TempKey().getKey(6,false);
		String MEM_PW = BCrypt.hashpw(memberKey,BCrypt.gensalt());
		 dao.findPw(MEM_EMAIL,MEM_ID,MEM_PW);
		 MailUtils sendMail = new MailUtils(mailSender);
			sendMail.setSubject("[Homme 임시 비밀번호 입니다.]"); //메일제목
			sendMail.setText(
					"<h1>임시비밀번호 발급</h1>" +
							"<br/>"+MEM_ID+"님 "+
							"<br/>비밀번호 찾기를 통한 임시 비밀번호입니다."+
							"<br/>임시비밀번호 :   <h2>"+memberKey+"</h2>"+
							"<br/>로그인 후 비밀번호 변경을 해주세요."+
							"<a href='http://localhost:80/member/LoginForm"+
							">로그인 페이지</a>");
			sendMail.setFrom("rinkim98@gmail.com", "Homme");
			sendMail.setTo(MEM_EMAIL);
			sendMail.send();
	}
	@Override
	public void pwModify(MemberVO vo) throws Exception {
		dao.pwModify(vo);
	}
}