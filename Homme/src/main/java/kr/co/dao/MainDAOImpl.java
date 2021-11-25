/*    */ package kr.co.dao;
/*    */ 
/*    */ import java.util.List;
/*    */ import kr.co.vo.CartVO;
/*    */ import kr.co.vo.ItemCriteria;
/*    */ import kr.co.vo.ItemVO;
/*    */ import org.apache.ibatis.session.SqlSession;
/*    */ import org.springframework.beans.factory.annotation.Autowired;
/*    */ import org.springframework.stereotype.Repository;
/*    */ 
/*    */ 
/*    */ @Repository
/*    */ public class MainDAOImpl
/*    */   implements MainDAO
/*    */ {
/*    */   @Autowired
/*    */   private SqlSession sqlSession;
/*    */   
/*    */   public List<ItemVO> itemList(ItemCriteria cri) throws Exception {
/* 20 */     return this.sqlSession.selectList("MainMapper.itemList", cri);
/*    */   }
/*    */   
/*    */   public int itemCount() throws Exception {
/* 24 */     return ((Integer)this.sqlSession.selectOne("MainMapper.itemCount")).intValue();
/*    */   }
/*    */   
/*    */   public ItemVO itemContent(ItemVO itemVO) throws Exception {
/* 28 */     return (ItemVO)this.sqlSession.selectOne("MainMapper.itemContent", itemVO);
/*    */   }
/*    */   
/*    */   public List<ItemVO> itemOption(ItemVO itemVO) throws Exception {
/* 32 */     return this.sqlSession.selectList("MainMapper.itemOption", itemVO);
/*    */   }
/*    */   
/*    */   public void cartInsert(CartVO cartVO) throws Exception {
/* 36 */     this.sqlSession.insert("MainMapper.cartInsert", cartVO);
/*    */   }
/*    */   
/*    */   public void cartDelete(CartVO cartVO) throws Exception {
/* 40 */     this.sqlSession.delete("MainMapper.cartDelete", cartVO);
/*    */   }
/*    */   
/*    */   public void cartDeleteCk(CartVO cartVO) throws Exception {
/* 44 */     this.sqlSession.delete("MainMapper.cartDeleteCk", cartVO);
/*    */   }
/*    */   
/*    */   public void cartDeleteMem(CartVO cartVO) throws Exception {
/* 48 */     this.sqlSession.delete("MainMapper.cartDeleteCk", cartVO);
/*    */   }
/*    */   
/*    */   public List<ItemVO> cartList(CartVO cartVO) throws Exception {
/* 52 */     return this.sqlSession.selectList("MainMapper.cartList", cartVO);
/*    */   }
/*    */ }


/* Location:              C:\Users\USER\Desktop\Hommee\WEB-INF\classes\!\kr\co\dao\MainDAOImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */