package kr.co.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.BoardService;
import kr.co.service.ClientService;
import kr.co.vo.CouponVO;
import kr.co.vo.ItemPageMaker;
import kr.co.vo.ItemSearchCriteria;
import kr.co.vo.PageMaker;
import kr.co.vo.SearchCriteria;

@RequestMapping(value="/master")
@Controller
public class ClientController {
	
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);

	@Autowired
	ClientService clientService;
	
	@Autowired
	BoardService boardService;
	
	//회원리스트출력
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
	//아무것도 아님
	@RequestMapping(value="/aaa", method=RequestMethod.GET)
	public String aaa() throws Exception{
		logger.info("들어왔나?");
		return "/master/aaa";
	}
	//회원삭제
	@RequestMapping(value="/deleteClient", method=RequestMethod.POST)
	public String deleteClient(String memberId, Model model) throws Exception{
		logger.info("memberId"+memberId);
		
		if(clientService.count(memberId) > 0) {
		clientService.deleteClient(memberId);
		}else {
			logger.info("그런회원없음");
			model.addAttribute("aaa","그런회원 없어연");
			
			return "redirect:/master/clientManage";
		}
		return "redirect:/master/clientManage";
	}
	//회원정지
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
		return "redirect:/master/clientManage";
	}
	//보드리스트출력
	@RequestMapping(value="/boardManage", method=RequestMethod.GET)
	public String boardManage(Model model,@ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("허리부숴진다");
		
		model.addAttribute("list2", boardService.list2(scri));
		PageMaker pageMaker= new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(boardService.listCount2(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("nlist", boardService.nlist(scri));

		return "/master/boardManage";
	}
	//게시판삭제
	@RequestMapping(value="/deleteBoard", method=RequestMethod.POST)
	public String deleteBoard(int boardNo, Model model) throws Exception{
		logger.info("boardNo"+boardNo);
		
		if(boardService.count2(boardNo) > 0) {
		boardService.deleteBoard(boardNo);
		}else {
			logger.info("게시물이 없는데");
			model.addAttribute("aaa","글삭제하고 튐");
			
			return "redirect:/master/boardManage";
		}
		return "redirect:/master/boardManage";
	}
	//공지사항 설정
	@RequestMapping(value="/notice", method= {RequestMethod.POST, RequestMethod.GET})
	public String notice(int boardNo, Model model) throws Exception{
		logger.info("boardNo"+boardNo);
		
		if(boardService.count2(boardNo) > 0 ) {
			boardService.notice(boardNo);
		}
		
		return "redirect:/master/boardManage";
	}
	//공지사항 해제
	@RequestMapping(value="/down", method= {RequestMethod.POST, RequestMethod.GET})
	public String down(int boardNo, Model model) throws Exception{
		logger.info("boardNo"+boardNo);
		
		if(boardService.count2(boardNo) > 0 ) {
			boardService.down(boardNo);
		}
		
		return "redirect:/master/boardManage";
	}
	//상품리스트
	@RequestMapping(value="/itemManage", method=RequestMethod.GET)
	public String itemManage(Model model,@ModelAttribute("scri") ItemSearchCriteria scri) throws Exception{
		logger.info("감잃엇다");
		
		model.addAttribute("ilist",clientService.ilist(scri));
		
		ItemPageMaker ipageMaker= new ItemPageMaker();
		ipageMaker.setCri(scri);
		ipageMaker.setTotalCount(clientService.ilistCount(scri));
		
		model.addAttribute("ipageMaker", ipageMaker);
		
		return "/master/itemManage";
	}
	
	
	//아이템 삭제
	@RequestMapping(value="/deleteItem", method= {RequestMethod.POST, RequestMethod.GET})
	public String deleteItem(String itemId,Model model)throws Exception{
	  logger.info("itemId"+itemId);
	  
	   if(clientService.icount(itemId) > 0) {
		  clientService.deleteItem(itemId);
		}else {
			logger.info("시발...");
			model.addAttribute("aaa","도와줘요!! 찬수에몽");
			
			return "redirect:/master/itemManage";
		}
		return "redirect:/master/itemManage";
	}
	//쿠폰 리스트
		@RequestMapping(value="/CouponManage", method= {RequestMethod.POST, RequestMethod.GET})
		public String CouponManage(Model model,@ModelAttribute("scri") SearchCriteria scri) throws Exception{
			logger.info("난 쓸모가없어");
			
			model.addAttribute("coulist",clientService.coulist(scri));
			
			PageMaker pageMaker= new PageMaker();
			pageMaker.setCri(scri);
			pageMaker.setTotalCount(clientService.coulistCount(scri));
			
			model.addAttribute("pageMaker", pageMaker);
			
			return "/master/CouponManage";
		}
	//쿠폰생성
		@RequestMapping(value="/newcoupon", method= {RequestMethod.POST, RequestMethod.GET} )
		public String CouponManage(CouponVO vo) throws Exception{
			logger.info("가능?" + vo.getCpn_name());
					
			clientService.newcoupon(vo);
			
			return "/master/CouponManage";			
		}
		
		
	//쿠폰삭제	
		@RequestMapping(value="/deletecoupon", method= {RequestMethod.POST, RequestMethod.GET})
		public String deletecoupon(String cpnName, Model model) throws Exception{
			logger.info("힘들다");
			
			if(clientService.coucount(cpnName) > 0) {
			clientService.deletecoupon(cpnName);
			}else {
				logger.info("그런거없음");
				model.addAttribute("aaa","그런쿠폰 없음");
				
				return "redirect:/master/CouponManage";
			}
			return "redirect:/master/CouponManage";
		}
	
}
