package kr.co.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.service.ClientService;

@RequestMapping(value="/master")
@Controller
public class ClientController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	ClientService clientService;
	
	@RequestMapping(value="/clientManage", method=RequestMethod.GET)
	public String clientManage() throws Exception{
		return "/master/clientManage";
	}
	
	@RequestMapping(value="/clientDelete", method=RequestMethod.POST)
	public String clientDelete(String memberNo) throws Exception{
		logger.info("memberNo"+memberNo);
		clientService.deleteClient(memberNo);
		return "/master/clientManage";
	}
}