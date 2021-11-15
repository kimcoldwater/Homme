package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.ClientService;
import kr.co.vo.PageMaker;
import kr.co.vo.SearchCriteria;

@RequestMapping(value="/master")
@Controller
public class ClientController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);

	@Autowired
	ClientService clientService;
	
	@RequestMapping(value="/clientManage", method=RequestMethod.GET)
	public String clientManage(Model model,@ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("들어왔나?");
		
		model.addAttribute("list",clientService.list(scri));
		
		PageMaker pageMaker= new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(clientService.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "/master/clientManage";
	}
	
	@RequestMapping(value="/aaa", method=RequestMethod.GET)
	public String aaa() throws Exception{
		logger.info("들어왔나?");
		return "/master/aaa";
	}
	
	@RequestMapping(value="/deleteClient", method=RequestMethod.POST)
	public String deleteClient(String memberId, Model model) throws Exception{
		logger.info("memberId"+memberId);
		
		if(clientService.count(memberId) == 1) {
		clientService.deleteClient(memberId);
		}else {
			logger.info("그런회원없음");
			model.addAttribute("aaa","그런회원 없어연");
			
			return "/master/clientManage";
		}
		return "/master/clientManage";
	}
	
	@RequestMapping(value="/disableMember",method=RequestMethod.POST)
	public String disableMember(String memberId,Model model,RedirectAttributes rttr) throws Exception{
		logger.info("memberId"+memberId);
		
		if(clientService.count(memberId) == 1) {
		clientService.disableMember(memberId);
		} else {
			logger.info("회원없음");
			rttr.addFlashAttribute("aaa", "회원이 없습니다");
		
			return "redirect:/master/clientManage";
		}
		return "/master/clientManage";
	}
	

	
}
