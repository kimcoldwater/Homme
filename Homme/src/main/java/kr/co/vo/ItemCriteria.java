/*    */ package kr.co.vo;
/*    */ 
/*    */ 
/*    */ 
/*    */ public class ItemCriteria
/*    */ {
/*    */   private int page;
/*    */   private int perPageNum;
/*    */   private int rowStart;
/*    */   private int rowEnd;
/*    */   private String catemain;
/*    */   private String catesub;
/*    */   private String sort;
/*    */   
/*    */   public String getSort() {
/* 16 */     return this.sort;
/*    */   }
/*    */   
/*    */   public void setSort(String sort) {
/* 20 */     this.sort = sort;
/*    */   }
/*    */   
/*    */   public String getCatemain() {
/* 24 */     return this.catemain;
/*    */   }
/*    */   
/*    */   public void setCatemain(String catemain) {
/* 28 */     this.catemain = catemain;
/*    */   }
/*    */   
/*    */   public String getCatesub() {
/* 32 */     return this.catesub;
/*    */   }
/*    */   
/*    */   public void setCatesub(String catesub) {
/* 36 */     this.catesub = catesub;
/*    */   }
/*    */   
/*    */   public ItemCriteria() {
/* 40 */     this.page = 1;
/* 41 */     this.perPageNum = 8;
/*    */   }
/*    */   
/*    */   public void setPage(int page) {
/* 45 */     if (page <= 0) {
/* 46 */       this.page = 1;
/*    */       return;
/*    */     } 
/* 49 */     this.page = page;
/*    */   }
/*    */   
/*    */   public void setPerPageNum(int perPageNum) {
/* 53 */     if (perPageNum <= 0 || perPageNum > 100) {
/* 54 */       this.perPageNum = 10;
/*    */       return;
/*    */     } 
/* 57 */     this.perPageNum = perPageNum;
/*    */   }
/*    */   
/*    */   public int getPage() {
/* 61 */     return this.page;
/*    */   }
/*    */   
/*    */   public int getPageStart() {
/* 65 */     return (this.page - 1) * this.perPageNum;
/*    */   }
/*    */   
/*    */   public int getPerPageNum() {
/* 69 */     return this.perPageNum;
/*    */   }
/*    */   
/*    */   public int getRowStart() {
/* 73 */     this.rowStart = (this.page - 1) * this.perPageNum + 1;
/* 74 */     return this.rowStart;
/*    */   }
/*    */   
/*    */   public int getRowEnd() {
/* 78 */     this.rowEnd = this.rowStart + this.perPageNum - 1;
/* 79 */     return this.rowEnd;
/*    */   }
/*    */ 
/*    */   
/*    */   public String toString() {
/* 84 */     return "Criteria [page=" + this.page + ", perPageNum=" + this.perPageNum + ", rowStart=" + this.rowStart + ", rowEnd=" + this.rowEnd + 
/* 85 */       "]";
/*    */   }
/*    */ }


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\vo\ItemCriteria.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */