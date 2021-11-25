/*    */ package kr.co.service;
/*    */ 
/*    */ import java.util.HashMap;
/*    */ import java.util.Map;
/*    */ import kr.co.dao.MasterDAO;
/*    */ import kr.co.util.FileUtils;
/*    */ import kr.co.vo.ItemVO;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ import org.springframework.transaction.annotation.Transactional;
/*    */ import org.springframework.web.multipart.MultipartHttpServletRequest;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ @Service
/*    */ public class MasterServiceImpl
/*    */   implements MasterService
/*    */ {
/*    */   @Autowired
/*    */   private MasterDAO masterDAO;
/*    */   @Autowired
/*    */   private FileUtils fileUtils;
/*    */   
/*    */   @Transactional
/*    */   public void itemInsert(ItemVO itemVO, MultipartHttpServletRequest multipart) throws Exception {
/* 29 */     this.masterDAO.itemInsert(itemVO);
/*    */     
/* 31 */     Map<String, Object> itemMainImg = this.fileUtils.itemMainImg(itemVO, multipart);
/* 32 */     this.masterDAO.itemMainImg(itemMainImg);
/* 33 */     this.masterDAO.itemMainFile(itemMainImg);
/*    */     
/* 35 */     Map<String, Object> itemSubImg = this.fileUtils.itemSubImg(itemVO, multipart);
/* 36 */     this.masterDAO.itemSubImg(itemSubImg);
/* 37 */     this.masterDAO.itemMainFile(itemSubImg);
/*    */     
/* 39 */     for (int i = 0; i < (itemVO.getItem_option()).length; i++) {
/* 40 */       String itemOptionContent = itemVO.getItem_option()[i];
/* 41 */       int itemOptionVol = itemVO.getItem_vol()[i];
/* 42 */       Map<String, Object> map = new HashMap<String, Object>();
/* 43 */       map.put("item_option", itemOptionContent);
/* 44 */       map.put("item_no", Integer.valueOf(itemVO.getItem_no()));
/* 45 */       map.put("item_vol", Integer.valueOf(itemOptionVol));
/* 46 */       this.masterDAO.itemOptionInsert(map);
/*    */     } 
/*    */   }
/*    */ }


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\service\MasterServiceImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */