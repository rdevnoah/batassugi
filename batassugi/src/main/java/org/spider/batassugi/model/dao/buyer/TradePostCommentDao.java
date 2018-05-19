package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.buyer.TradeCommentVo;
import org.springframework.stereotype.Repository;
/**
 * 거래 게시판 댓글(작성, 수정, 삭제, 검색) 접근하는 영속성 계층입니다 .
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.buyer
 * @filename : TradePostCommentDao.java
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
 * 2018. 5. 19.  "SM HyeonGil Kim"    deleteReplyByTradNo(int tradeNo) 추가
 * </pre>
 */

@Repository
public class TradePostCommentDao implements TradePostCommentDaoIf {
  @Resource
  private SqlSessionTemplate template;

  @Override
  public List<TradeCommentVo> findReplyListByTradeNo(int tradeNo) {
    return template.selectList("comment.findReplyListByTradeNo", tradeNo);
  }

  @Override
  public int createReply(TradeCommentVo tcvo) {
    return template.insert("comment.createReply", tcvo);
  }

  @Override
  public String findRegdateByReplyNo(int replyNo) {
    return template.selectOne("comment.findRegdateByReplyNo", replyNo);
  }

  @Override
  public void deleteReplyByTradNo(int tradeNo) {
    template.delete("comment.deleteReplyByTradNo", tradeNo);
  }
  
}
