package kr.co.service;

import java.util.List;
import kr.co.vo.CartVO;
import kr.co.vo.ItemCriteria;
import kr.co.vo.ItemVO;

public interface MainService {
  List<ItemVO> itemList(ItemCriteria paramItemCriteria) throws Exception;
  
  int itemCount() throws Exception;
  
  ItemVO itemContent(ItemVO paramItemVO) throws Exception;
  
  List<ItemVO> itemOption(ItemVO paramItemVO) throws Exception;
  
  void cartInsert(CartVO paramCartVO) throws Exception;
  
  void cartDelete(CartVO paramCartVO) throws Exception;
  
  void cartDeleteCk(CartVO paramCartVO) throws Exception;
  
  void cartDeleteMem(CartVO paramCartVO) throws Exception;
  
  List<ItemVO> cartList(CartVO paramCartVO) throws Exception;
}


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\service\MainService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */