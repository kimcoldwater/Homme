package kr.co.service;

import kr.co.vo.ItemVO;
import org.springframework.web.multipart.MultipartHttpServletRequest;

public interface MasterService {
  void itemInsert(ItemVO paramItemVO, MultipartHttpServletRequest paramMultipartHttpServletRequest) throws Exception;
}


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\service\MasterService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */