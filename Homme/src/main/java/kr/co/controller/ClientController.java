package kr.co.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.ClientService;

@RequestMapping(value="/master")
@Controller
public class ClientController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);

	@Autowired
	ClientService clientService;
	
	@RequestMapping(value="/clientManage", method=RequestMethod.GET)
	public String clientManage() throws Exception{
		return "/master/clientManage";
	}
	
	@RequestMapping(value="/clientDelete", method=RequestMethod.POST)
	public String clientDelete(String memberId) throws Exception{
		logger.info("memberId"+memberId);
		clientService.deleteClient(memberId);
		return "/master/clientManage";
	}
	@RequestMapping(value="/clientStop",method=RequestMethod.POST)
	public String clientStop(String memberId) throws Exception{
		logger.info("memberId"+memberId);
		clientService.stopClient(memberId);
		return "/master/clientManage";
	}
}