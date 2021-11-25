package kr.co.dao;

import java.util.Map;
import kr.co.vo.ItemVO;

public interface MasterDAO {
  void itemInsert(ItemVO paramItemVO) throws Exception;
  
  void itemOptionInsert(Map<String, Object> paramMap) throws Exception;
  
  void itemMainImg(Map<String, Object> paramMap) throws Exception;
  
  void itemMainFile(Map<String, Object> paramMap) throws Exception;
  
  void itemSubImg(Map<String, Object> paramMap) throws Exception;
}


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\dao\MasterDAO.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */