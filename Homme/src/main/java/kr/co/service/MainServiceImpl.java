/*    */ package kr.co.service;
/*    */ 
/*    */ import java.util.List;
/*    */ import kr.co.dao.MainDAO;
/*    */ import kr.co.vo.CartVO;
/*    */ import kr.co.vo.ItemCriteria;
/*    */ import kr.co.vo.ItemVO;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Service;
/*    */ 
/*    */ 
/*    */ 
/*    */ @Service
/*    */ public class MainServiceImpl
/*    */   implements MainService
/*    */ {
/*    */   @Autowired
/*    */   private MainDAO mainDAO;
/*    */   
/*    */   public List<ItemVO> itemList(ItemCriteria cri) throws Exception {
/* 21 */     return this.mainDAO.itemList(cri);
/*    */   }
/*    */ 
/*    */   
/*    */   public int itemCount() throws Exception {
/* 26 */     return this.mainDAO.itemCount();
/*    */   }
/*    */   
/*    */   public ItemVO itemContent(ItemVO itemVO) throws Exception {
/* 30 */     return this.mainDAO.itemContent(itemVO);
/*    */   }
/*    */   
/*    */   public List<ItemVO> itemOption(ItemVO itemVO) throws Exception {
/* 34 */     return this.mainDAO.itemOption(itemVO);
/*    */   }
/*    */   
/*    */   public void cartInsert(CartVO cartVO) throws Exception {
/* 38 */     this.mainDAO.cartInsert(cartVO);
/*    */   }
/*    */   
/*    */   public void cartDelete(CartVO cartVO) throws Exception {
/* 42 */     this.mainDAO.cartDelete(cartVO);
/*    */   }
/*    */   
/*    */   public void cartDeleteCk(CartVO cartVO) throws Exception {
/* 46 */     this.mainDAO.cartDeleteCk(cartVO);
/*    */   }
/*    */   
/*    */   public void cartDeleteMem(CartVO cartVO) throws Exception {
/* 50 */     this.mainDAO.cartDeleteMem(cartVO);
/*    */   }
/*    */   
/*    */   public List<ItemVO> cartList(CartVO cartVO) throws Exception {
/* 54 */     return this.mainDAO.cartList(cartVO);
/*    */   }
/*    */ }


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\service\MainServiceImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */