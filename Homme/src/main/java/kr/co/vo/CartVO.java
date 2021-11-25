/*    */ package kr.co.vo;
/*    */ 
/*    */ import java.util.Date;
/*    */ 
/*    */ 
/*    */ 
/*    */ public class CartVO
/*    */ {
/*    */   private int cart_no;
/*    */   private int cart_mem_no;
/*    */   private int cart_item_no;
/*    */   private Date cart_cklimit;
/*    */   private String cart_ckid;
/*    */   private String cart_option_content;
/*    */   private int cart_option_no;
/*    */   private ItemVO itemVO;
/*    */   
/*    */   public ItemVO getItemVO() {
/* 19 */     return this.itemVO;
/*    */   }
/*    */   public void setItemVO(ItemVO itemVO) {
/* 22 */     this.itemVO = itemVO;
/*    */   }
/*    */   public int getCart_no() {
/* 25 */     return this.cart_no;
/*    */   }
/*    */   public void setCart_no(int cart_no) {
/* 28 */     this.cart_no = cart_no;
/*    */   }
/*    */   public int getCart_mem_no() {
/* 31 */     return this.cart_mem_no;
/*    */   }
/*    */   public void setCart_mem_no(int cart_mem_no) {
/* 34 */     this.cart_mem_no = cart_mem_no;
/*    */   }
/*    */   public int getCart_item_no() {
/* 37 */     return this.cart_item_no;
/*    */   }
/*    */   public void setCart_item_no(int cart_item_no) {
/* 40 */     this.cart_item_no = cart_item_no;
/*    */   }
/*    */   public Date getCart_cklimit() {
/* 43 */     return this.cart_cklimit;
/*    */   }
/*    */   public void setCart_cklimit(Date cart_cklimit) {
/* 46 */     this.cart_cklimit = cart_cklimit;
/*    */   }
/*    */   public String getCart_ckid() {
/* 49 */     return this.cart_ckid;
/*    */   }
/*    */   public void setCart_ckid(String cart_ckid) {
/* 52 */     this.cart_ckid = cart_ckid;
/*    */   }
/*    */   public String getCart_option_content() {
/* 55 */     return this.cart_option_content;
/*    */   }
/*    */   public void setCart_option_content(String cart_option_content) {
/* 58 */     this.cart_option_content = cart_option_content;
/*    */   }
/*    */   public int getCart_option_no() {
/* 61 */     return this.cart_option_no;
/*    */   }
/*    */   public void setCart_option_no(int cart_option_no) {
/* 64 */     this.cart_option_no = cart_option_no;
/*    */   }
/*    */ }


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\vo\CartVO.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */