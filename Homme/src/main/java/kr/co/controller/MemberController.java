package kr.co.controller;

import java.sql.Date;
import java.util.ArrayList;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import kr.co.service.MemberService;
import kr.co.vo.MemberVO;

@Controller
@RequestMapping({ "/member/*" })
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	MemberService service;

	@Autowired
	BCryptPasswordEncoder pwdEncoder;

	@Autowired
	JavaMailSender mailSender;

	// 회원가입 GET
	@RequestMapping(value = "/RegisterForm", method = RequestMethod.GET)
	public String getRegister(MemberVO vo) throws Exception {
		logger.info("get register");
		return "/member/RegisterForm";
	}

	// 회원가입 POST
	@RequestMapping(value = "/Register", method = RequestMethod.POST)
	public String postRegister(MemberVO vo) throws Exception {
		logger.info("post register" + vo.getMEM_ID());

		String inputPass = vo.getMEM_PW();
		String pass = pwdEncoder.encode(inputPass);
		vo.setMEM_PW(pass);
		service.register(vo);
		return "/member/LoginForm";
	}

	// 로그인 GET
	@RequestMapping(value = "/LoginForm", method = RequestMethod.GET)
	public String getLogin() throws Exception {
		logger.info("get login");
		return "/member/LoginForm";
	}

	// 로그인 POST
	@RequestMapping(value = "/Login", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, RedirectAttributes rttr, Model model) throws Exception {
		logger.info("post login");

		MemberVO login = service.login(vo);

		boolean pwdMatch = pwdEncoder.matches(vo.getMEM_PW(), login.getMEM_PW());

		if (login != null && pwdMatch == true) {
			logger.info("sadasd");
			model.addAttribute("member", login);
			// 로그인 유지를 선택할 경우
			if (vo.isUseCookie()) {
				int amount = 60 * 60 * 24 * 7; // 7일
				Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount)); // 로그인 유지기간 설정
				service.keepLogin(vo.getMEM_ID(), session.getId(), sessionLimit);
			}
			return "/main/index";

		} else {
			model.addAttribute("member", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/member/LoginForm";
		}

	}

	// 로그아웃 GET
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		Object object = session.getAttribute("member");
		if (object != null) {
			MemberVO vo = (MemberVO) object;
			session.removeAttribute("member");
			session.invalidate();
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				Date date = new Date(System.currentTimeMillis());
				service.keepLogin(vo.getMEM_ID(), "none", date);
			}
		}

		return "/member/LogoutForm";
	}

	// 회원수정 GET
	@RequestMapping(value = "/memberUpdateView", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception {

		return "/member/memberUpdateView";
	}

	// 회원수정 POST
	@RequestMapping(value = "/memberUpdate", method = RequestMethod.POST)
	public String registerUpdate(MemberVO vo, HttpSession session) throws Exception {

		service.memberUpdate(vo);
		session.invalidate();
		return "redirect:/";
	}

	// 회원삭제 GET
	@RequestMapping(value = "/memberDeleteView", method = RequestMethod.GET)
	public String memberDeleteView() throws Exception {
		return "/member/memberDeleteView";

	}

	// 회원삭제 POST
	@RequestMapping(value = "/memberDelete", method = RequestMethod.POST)
	public String memberDelete(MemberVO vo, HttpSession session, RedirectAttributes rttr) throws Exception {

		service.memberDelete(vo);
		session.invalidate();
		return "redirect:/";
	}

	// 비밀번호 체크
	@ResponseBody
	@RequestMapping(value = "/member/passChk", method = RequestMethod.POST)
	public boolean passChk(MemberVO vo) throws Exception {

		MemberVO login = service.login(vo);
		boolean pwdChk = pwdEncoder.matches(vo.getMEM_PW(), login.getMEM_PW());
		return pwdChk;
	}

	// 아이디 체크
	@ResponseBody
	@RequestMapping(value = "/member/idChk", method = RequestMethod.POST)
	public int idChk(MemberVO vo) throws Exception {
		logger.info("id:" + vo.getMEM_ID());
		int result = service.idChk(vo);
		logger.info("result:" + result);

		return result;
	}

	// 이메일 인증
	@RequestMapping(value = "/mailCheck", method = RequestMethod.GET)
	@ResponseBody
	public String mailCheckGET(@RequestParam("MEM_EMAIL") String MEM_EMAIL) throws Exception {

		// 뷰(View)로부터 넘어온 데이터 확인
		logger.info("이메일 데이터 전송 확인");
		logger.info("인증번호 :" + MEM_EMAIL);

		// 인증번호(난수) 생성
		int checkNum = (int) ((Math.random() * (99999 - 10000 + 1)) + 10000);
		logger.info("인증번호 " + checkNum);

		// 이메일 보내기
		String setFrom = "rinkim98@gmail.com";
		String toMail = MEM_EMAIL;
		String title = "회원가입 인증 이메일 입니다.";
		String content = "홈페이지를 방문해주셔서 감사합니다." + "<br><br>" + "인증 번호는 " + checkNum + "입니다." + "<br>"
				+ "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
		String num = "";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);
			num = Integer.toString(checkNum);

		} catch (Exception e) {
			num = "error";
		}
		return num;
	}

	// 아이디 비밀번호 찾기 GET
	@RequestMapping(value = "/userSearch", method = RequestMethod.GET)
	public String userSearchGET() throws Exception {
		return "/member/userSearch";
	}

	// 아이디 찾기
	@RequestMapping(value = "/findid", method = RequestMethod.POST)
	public @ResponseBody String findid(@ModelAttribute MemberVO vo, Model model, HttpServletResponse response)
			throws Exception {
		logger.info("post findid//" + vo.getMEM_NAME() + "///" + vo.getMEM_EMAIL());
		System.out.println(vo.toString());
		ArrayList<String> emailList = service.findid(vo);
		System.out.println(emailList.toString());
		System.out.println(emailList.get(0));
		String findEmail = "{\"MEM_EMAIL\":\"" + emailList + "\"}";

		System.out.println(findEmail);

		return findEmail;
	}

	@RequestMapping(value = "/findPwView", method = RequestMethod.GET)
	public String findPwView() throws Exception {
		return "/member/findPwView";
	}

	@RequestMapping(value = "/findPw", method = RequestMethod.POST)
	public String findPw(MemberVO vo, Model model) throws Exception {
		logger.info("memberPw" + vo.getMEM_ID());

		if (service.findPwCheck(vo) == 0) {
			logger.info("memberPWCheck");
			model.addAttribute("msg", "아이디와 이메일를 확인해주세요");

			return "/member/findPwView";
		} else {

			service.findPw(vo.getMEM_EMAIL(), vo.getMEM_ID());
			model.addAttribute("member", vo.getMEM_EMAIL());
			model.addAttribute("msg","임시비밀번호가 전송되었습니다");
			return "/member/LoginForm";
		}
	}


	/*
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/pwModify", method=RequestMethod.POST) public int
	 * updateImg(HttpSession session,MemberVO vo, String PW, String newPW)throws
	 * Exception {
	 * 
	 * vo = (MemberVO) session.getAttribute("login"); String memPW =
	 * service.pwModify(MemberVO.getMEM_ID()); //zero의 mapper // select mem_pw from
	 * member where mem_id = #{mem_id}
	 * 
	 * 
	 * if(pwdEncoder.pwcheck(PW, memPW) == true) { String hashPW =
	 * pwdEncoder.hashpw(newPW, pwdEncoder.gensalt()); service.pwModify(hashPW ,
	 * MemberVO.getMEM_ID()); //update member set mem_PW = #{hashPW} where mem_id =
	 * #{mem_id}
	 * 
	 * }else { reutrn 0; } return 1; }
	 */
}