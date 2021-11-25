package kr.co.controller;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.RandomStringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.WebUtils;

import kr.co.service.MainService;
import kr.co.vo.CartVO;
import kr.co.vo.ItemCriteria;
import kr.co.vo.ItemPageMaker;
import kr.co.vo.ItemVO;
import kr.co.vo.MemberVO;

@RequestMapping({"/main"})
@Controller
public class MainController {
  private static final Logger logger = LoggerFactory.getLogger(MainController.class);
  
  @Autowired
  MainService mainService;
  
  @RequestMapping(value = {"/index"}, method = {RequestMethod.GET})
  public String main(HttpSession session,Locale locale, Model model) {
	  MemberVO memberVO = (MemberVO) session.getAttribute("member");
	  
	  
    return "/main/index";
  }
  
  @RequestMapping(value = {"/itemView"}, method = {RequestMethod.GET})
  public String itemView(Model model, @ModelAttribute("cri") ItemCriteria cri) throws Exception {
    logger.info("itemView" + cri.getPage());
    model.addAttribute("itemList", this.mainService.itemList(cri));
    ItemPageMaker pageMaker = new ItemPageMaker();
    pageMaker.setCri(cri);
    pageMaker.setTotalCount(this.mainService.itemCount());
    model.addAttribute("pageMaker", pageMaker);
    return "/main/itemView";
  }
  
  @RequestMapping(value = {"/mainTest"}, method = {RequestMethod.GET})
  public String mainTest() throws Exception {
    return "/main/mainTest";
  }
  
  @RequestMapping(value = {"/itemContent"}, method = {RequestMethod.GET})
  public String itemCotent(ItemVO itemVO, @ModelAttribute("cri") ItemCriteria cri, Model model) throws Exception {
    model.addAttribute("itemContent", this.mainService.itemContent(itemVO));
    model.addAttribute("itemOption", this.mainService.itemOption(itemVO));
    return "/main/itemContent";
  }
  
  @ResponseBody
  @RequestMapping(value = {"/cart"}, method = {RequestMethod.POST})
  public int cart(HttpSession session, HttpServletRequest request, HttpServletResponse response, CartVO cartVO) throws Exception {
    logger.info("itemno=" + cartVO.getCart_item_no());
    Cookie cookie = WebUtils.getCookie(request, "cartCookie");
    if (cookie == null && session.getAttribute("member") == null) {
      String ckid = RandomStringUtils.random(6, true, true);
      Cookie cartCookie = new Cookie("cartCookie", ckid);
      cartCookie.setPath("/");
      cartCookie.setMaxAge(259200);
      response.addCookie(cartCookie);
      cartVO.setCart_ckid(ckid);
      this.mainService.cartInsert(cartVO);
    } else if (cookie != null && session.getAttribute("member") == null) {
      String ckValue = cookie.getValue();
      cartVO.setCart_ckid(ckValue);
      this.mainService.cartInsert(cartVO);
    } else {
      session.getAttribute("member");
    } 
    return 1;
  }
  
  @RequestMapping(value = {"/cartView"}, method = {RequestMethod.GET})
  public String cartView(HttpSession session, HttpServletRequest request, HttpServletResponse response, CartVO cartVO, Model model) throws Exception {
    Cookie cookie = WebUtils.getCookie(request, "cartCookie");
    if (cookie != null && session.getAttribute("member") == null) {
      String cartCookie = cookie.getValue();
      cartVO.setCart_ckid(cartCookie);
      List<ItemVO> itemList = this.mainService.cartList(cartVO);
      logger.info(""+ itemList.size() + cartVO.getCart_mem_no());
      model.addAttribute("cart", this.mainService.cartList(cartVO));
    } else if (cookie == null) {
      session.getAttribute("member");
    } 
    return "/main/cartView";
  }
}
