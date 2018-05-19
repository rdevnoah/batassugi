package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.TradeCommentVo;
/**
 * 댓글.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.buyer
 * @filename : TradePostCommentDaoIf.java
 * @author : "SM HyeonGil Kim"
 * @since : 2018. 5. 18.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 18.  "SM HyeonGil Kim"    findReplyListByTradeNo(int tradeNo), 
 *                                                    createReply(TradeCommentVo tcvo) 추가
 *                                                    findRegdateByReplyNo(int replyNo) 추가
 * </pre>
 */

public interface TradePostCommentDaoIf {
  /**
   * 댓글 리스트 출력 메서드
   * .
   * @author "SM HyeonGil Kim"
   * @param tradeNo 게시글 번호.
   * @return
   */
  public List<TradeCommentVo> findReplyListByTradeNo(int tradeNo);
  
  /**
   * 댓글 작성 메서드. 
   * 
   * @author "SM HyeonGil Kim"
   * @param tcvo 댓글 생성자.
   */
  public int createReply(TradeCommentVo tcvo);
  
  /**
  * 댓글 날짜 출력.
  *
   * @author "SM HyeonGil Kim"
   * @param replyNo 댓글 번호
   * @return
   */
  public String findRegdateByReplyNo(Integer replyNo);
}
