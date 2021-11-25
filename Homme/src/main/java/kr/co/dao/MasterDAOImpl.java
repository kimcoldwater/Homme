/*    */ package kr.co.dao;
/*    */ 
/*    */ import java.util.Map;
/*    */ import kr.co.vo.ItemVO;
/*    */ import org.apache.ibatis.session.SqlSession;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Repository;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ @Repository
/*    */ public class MasterDAOImpl
/*    */   implements MasterDAO
/*    */ {
/*    */   @Autowired
/*    */   private SqlSession sqlsession;
/*    */   
/*    */   public void itemInsert(ItemVO itemVO) throws Exception {
/* 20 */     this.sqlsession.insert("MasterMapper.itemInsert", itemVO);
/*    */   }
/*    */ 
/*    */ 
/*    */ 
/*    */   
/*    */   public void itemOptionInsert(Map<String, Object> map) throws Exception {
/* 27 */     this.sqlsession.insert("MasterMapper.itemOptionInsert", map);
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public void itemMainImg(Map<String, Object> map) throws Exception {
/* 33 */     this.sqlsession.update("MasterMapper.itemMainImg", map);
/*    */   }
/*    */ 
/*    */   
/*    */   public void itemMainFile(Map<String, Object> map) throws Exception {
/* 38 */     this.sqlsession.insert("MasterMapper.itemMainFile", map);
/*    */   }
/*    */ 
/*    */ 
/*    */   
/*    */   public void itemSubImg(Map<String, Object> map) throws Exception {
/* 44 */     this.sqlsession.update("MasterMapper.itemSubImg", map);
/*    */   }
/*    */ }


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\dao\MasterDAOImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */