package kr.co.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import kr.co.service.MasterService;
import kr.co.util.FileUtils;
import kr.co.vo.ItemVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@RequestMapping({"/master"})
@Controller
public class MasterController {
  private static final Logger logger = LoggerFactory.getLogger(MasterController.class);
  
  @Autowired
  MasterService masterService;
  
  @Autowired
  private FileUtils fileUtils;
  
  @RequestMapping(value = {"/main"}, method = {RequestMethod.GET})
  public String main(Locale locale, Model model) {
    return "/main/index";
  }
  
  @RequestMapping(value = {"/itemInsertView"}, method = {RequestMethod.GET})
  public String ItemInsertView(Locale locale, Model model) {
    return "/master/ItemInsertView";
  }
  
  @RequestMapping(value = {"/itemInsert"}, method = {RequestMethod.POST})
  public String ItemInsert(ItemVO itemVO, MultipartHttpServletRequest multipart) throws Exception {
    logger.info("itemInsert=");
    this.masterService.itemInsert(itemVO, multipart);
    return "/master/ItemInsertView";
  }
  
  @ResponseBody
  @RequestMapping(value = {"/uploadImg"}, method = {RequestMethod.POST})
  public Map<String, Object> image(@RequestParam Map<String, Object> map, MultipartHttpServletRequest multipart) throws Exception {
    logger.info("updateImg");
    String imgPath = this.fileUtils.uploadImg(multipart);
    Map<String, Object> mapp = new HashMap<String, Object>();
    mapp.put("uploaded", Boolean.valueOf(true));
    mapp.put("url", imgPath);
    return mapp;
  }
}
