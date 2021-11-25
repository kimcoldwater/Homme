/*    */ package kr.co.vo;
/*    */ 
/*    */ public class ItemSearchCriteria
/*    */   extends ItemCriteria {
/*  5 */   private String searchType = "";
/*  6 */   private String keyword = "";
/*    */   
/*    */   public String getSearchType() {
/*  9 */     return this.searchType;
/*    */   }
/*    */   public void setSearchType(String searchType) {
/* 12 */     this.searchType = searchType;
/*    */   }
/*    */   public String getKeyword() {
/* 15 */     return this.keyword;
/*    */   }
/*    */   public void setKeyword(String keyword) {
/* 18 */     this.keyword = keyword;
/*    */   }
/*    */   
/*    */   public String toString() {
/* 22 */     return "SearchCriteria [searchType=" + this.searchType + ", keyword=" + this.keyword + "]";
/*    */   }
/*    */ }


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\vo\ItemSearchCriteria.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */