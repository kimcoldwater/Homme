/*
 * package kr.co.controller;
 * 
 * import java.util.HashMap; import java.util.List; import java.util.Map;
 * 
 * import org.slf4j.Logger; import org.slf4j.LoggerFactory; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.context.annotation.Lazy; import
 * org.springframework.web.bind.annotation.PathVariable; import
 * org.springframework.web.bind.annotation.PostMapping; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RestController;
 * 
 * import kr.co.service.ReplyService; import kr.co.vo.B_replyVO;
 * 
 * @RestController
 * 
 * @RequestMapping("/reply") public class ReplyRestController { private static
 * final Logger logger = LoggerFactory.getLogger(ReplyRestController.class);
 * 
 * @Autowired
 * 
 * @Lazy private ReplyService replyservice; // 댓글 목록
 * 
 * @PostMapping("/replyList/{b_no}") public List<B_replyVO>
 * replyList(@PathVariable int b_no) throws Exception { logger.info("RList");
 * List<B_replyVO> replyList = replyservice.readReply(b_no);
 * 
 * return replyList; } //댓글 작성
 * 
 * @PostMapping("/replywrite/{b_no}/{r_writer}/{r_content}") public Map<String,
 * Object> replywrite(@PathVariable int b_no, @PathVariable String r_writer,
 * 
 * @PathVariable String r_content) { Map<String, Object> map = new
 * HashMap<String, Object>(); logger.info("replywrite"); try { B_replyVO rvo =
 * new B_replyVO(); rvo.setB_no(b_no); rvo.setR_writer(r_writer);
 * rvo.setR_content(r_content); replyservice.writeReply(rvo);
 * 
 * map.put("result", "success");
 * 
 * } catch (Exception e) { e.printStackTrace(); map.put("result", "fail"); }
 * return map; } // 댓글 수정
 * 
 * @PostMapping("/updateReply/{r_no}") public Map<String,Object>
 * updateReply(@PathVariable int r_no,@PathVariable String r_content){
 * Map<String, Object> map = new HashMap<String, Object>();
 * logger.info("replyupdate"); try { B_replyVO rvo = new B_replyVO();
 * rvo.setR_no(r_no); rvo.setR_content(r_content);
 * replyservice.updateReply(rvo);
 * 
 * map.put("result", "success");
 * 
 * }catch (Exception e) { e.printStackTrace(); map.put("result", "fail"); }
 * return map; } // 댓글 삭제
 * 
 * @PostMapping("/replydelete/{r_no}") public Map<String, Object>
 * replydelete(@PathVariable int r_no) { Map<String, Object> map = new
 * HashMap<String, Object>(); logger.info("replydelete"); try { B_replyVO rvo =
 * new B_replyVO(); replyservice.deleteReply(rvo); map.put("result", "fail"); }
 * catch (Exception e) { e.printStackTrace(); map.put("result", "fail"); }
 * return map; } }
 */
