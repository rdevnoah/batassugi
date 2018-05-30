package org.spider.batassugi.model.service.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.TradeCommentVo;

/**
 * 댓글 서비스. .
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : TradeCommentServiceIf.java
 * @author : "SM HyeonGil Kim"
 * @since : 2018. 5. 18.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 18.  "SM HyeonGil Kim"    findReplyListByTradeNo(int tradeNo), 
 *                                                    createReply(TradeCommentVo tcvo) 추가
 * 2018. 5. 30.  "SM HyeonGil Kim"   deleteReplyByReplyNo(int replyNo) 추가
 *      </pre>
 */

public interface TradeCommentServiceIf {
  /**
   * 댓글 리스트 출력.
   * 
   * @author "SM HyeonGil Kim"
   * @param tradeNo 게시판 번호.
   * @return
   */
  public List<TradeCommentVo> findReplyListByTradeNo(int tradeNo);
  
  /**
   * 댓글 작성 메서드. 
   * 
   * @author "SM HyeonGil Kim"
   * @param tcvo 댓글 생성자.
   * @return 
   */
  public TradeCommentVo createReply(TradeCommentVo tcvo);
  
  /**
   * 댓글 작성자가 댓글 삭제.
   * 
   * @author "SM HyeonGil Kim"
   * @param replyNo 댓글 번호.
   */
  public void deleteReplyByReplyNo(int replyNo);
  
}
