package kr.co.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.service.BoardService;
import kr.co.service.ReplyService;
import kr.co.util.FileUtils;
import kr.co.vo.B_replyVO;
import kr.co.vo.BoardVO;
import kr.co.vo.PageMaker;
import kr.co.vo.SearchCriteria;

@Controller
@RequestMapping(value="/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	BoardService service;
	
	@Autowired
	ReplyService replyService;
	
	@Autowired
	FileUtils fileUtils;
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main()throws Exception{
		logger.info("main");
		return "/main/index";
	}
	//게시글 작성 화면
	@RequestMapping(value="/boardiview", method=RequestMethod.GET)
	public void boardiview()throws Exception{
		logger.info("boardiveiw");
	}
	// 게시글 작성
	@RequestMapping(value="/boardInsert", method= {RequestMethod.GET,RequestMethod.POST})
	public String boardInsert(BoardVO boardVO, MultipartHttpServletRequest mpRequest)throws Exception{
		logger.info("boardinsert");
		service.boardInsert(boardVO, mpRequest);
		return "redirect:/board/boardlist";
	}
	// 게시판 목록 조회
	@RequestMapping(value = "/boardlist", method = RequestMethod.GET)
	public String boardlist(Model model, @ModelAttribute("scri") SearchCriteria scri) throws Exception{
		logger.info("boardlist"+scri.getCate());
		
		model.addAttribute("boardlist", service.boardlist(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(service.listCount(scri));
		
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "board/boardlist";
		
	}
	// 게시판 조회
	@RequestMapping(value = "/boardview", method = RequestMethod.GET)
	public String boardview(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri,Model model) throws Exception{
		logger.info("boardview");
		
		model.addAttribute("boardview", service.boardview(boardVO.getB_no()));
		model.addAttribute("scri", scri);
		
		List<B_replyVO> replyList = replyService.readReply(boardVO.getB_no());
		model.addAttribute("replyList",replyList);

		return "board/boardview";
	}
	// 게시한 수정 뷰
	@RequestMapping(value = "/updateview", method = RequestMethod.GET)
	public String updateview(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri ,Model model) throws Exception{
		logger.info("updateview");
		
		model.addAttribute("updateview", service.boardview(boardVO.getB_no()));
		model.addAttribute("scri", scri);
		return "board/updateview";
	}
	// 게시판 수정
	@RequestMapping(value="/update", method= {RequestMethod.GET,RequestMethod.POST})
	public String update(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr)throws Exception{
		logger.info("update");
		service.update(boardVO);
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/board/boardlist";
	}
	// 댓글 삭제
	
	  @RequestMapping(value="/replyDelete", method=
	  {RequestMethod.GET,RequestMethod.POST}) public String replyDelete(B_replyVO
	  vo, SearchCriteria scri, RedirectAttributes rttr)throws Exception{
	  logger.info("replyDelete");
	 
	  replyService.deleteReply(vo.getR_no());
	  
	  rttr.addAttribute("b_no", vo.getR_no());
	  rttr.addAttribute("page",scri.getPage()); 
	  rttr.addAttribute("perPageNum", scri.getPerPageNum());
	  rttr.addAttribute("searchType", scri.getSearchType());
	  rttr.addAttribute("keyword", scri.getKeyword());
	  
	  return "redirect:/board/boardview"; }
	// 게시판 삭제
	@RequestMapping(value="/delete", method= {RequestMethod.GET,RequestMethod.POST})
	public String delete(BoardVO boardVO, @ModelAttribute("scri") SearchCriteria scri, RedirectAttributes rttr)throws Exception{
		logger.info("delete");
		
		service.delete(boardVO.getB_no());
		
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/board/boardlist";
	}
	// 댓글 작성
	@RequestMapping(value="/replyWrite", method = RequestMethod.POST)
	public String replyWrite(B_replyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
		
		replyService.writeReply(vo);
		
		rttr.addAttribute("b_no", vo.getB_no());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/board/boardview";
	}
	// 댓글 수정 뷰
	@RequestMapping(value="/replyUpdateView", method = RequestMethod.GET)
	public String replyUpdateView(B_replyVO vo, SearchCriteria scri, Model model) throws Exception {
		logger.info("reply UpdateView");
	
		model.addAttribute("replyUpdate", replyService.selectReply(vo.getR_no()));
		model.addAttribute("scri", scri);
		
		return "board/replyUpdateView";
	}
	// 댓글 수정
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(B_replyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("reply Update");
	
		replyService.updateReply(vo);
		
		rttr.addAttribute("b_no", vo.getB_no());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		
		return "redirect:/board/boardview";
	}

	
	@RequestMapping(value="/uploadImg", method = RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> image( MultipartHttpServletRequest multipart) throws Exception{
		logger.info("updateImg");
		
		String imgPath = fileUtils.uploadImg(multipart);
		
		Map<String, Object> mapp = new HashMap<String, Object>();
		
	    mapp.put("uploaded", true);
	    mapp.put("url", imgPath);
	    return mapp;
	}
		
	
}