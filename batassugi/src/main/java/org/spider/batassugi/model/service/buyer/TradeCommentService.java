package org.spider.batassugi.model.service.buyer;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.buyer.TradePostCommentDaoIf;
import org.spider.batassugi.model.vo.buyer.TradeCommentVo;
import org.springframework.stereotype.Service;
/**
 * 거래 게시판 댓글(작성, 수정, 삭제, 검색) 접근하는 서비스 계층입니다 .
 * .
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : TradeCommentService.java
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
 * 2018. 5. 18.  "SM HyeonGil Kim"    최초작성
 * 2018. 5. 18.  "SM HyeonGil Kim"    findReplyListByTradeNo(int tradeNo), 
 *                                                    createReply(TradeCommentVo tcvo) 추가
 *                                                    findReplyByReplyNo(int replyNo) 추가
 * </pre>
 */

@Service
public class TradeCommentService implements TradeCommentServiceIf {
  
  @Resource
  private TradePostCommentDaoIf tradePostCommentDao;

  @Override
  public List<TradeCommentVo> findReplyListByTradeNo(int tradeNo) {
    return tradePostCommentDao.findReplyListByTradeNo(tradeNo);
  }

  @Override
  public TradeCommentVo createReply(TradeCommentVo tcvo) {
    tradePostCommentDao.createReply(tcvo);
    tcvo.setReplyRegdate(tradePostCommentDao.findRegdateByReplyNo(tcvo.getReplyNo()));
    return tcvo;
  }

  @Override
  public void deleteReplyByReplyNo(int replyNo) {
    tradePostCommentDao.deleteReplyByReplyNo(replyNo);
  }
}
