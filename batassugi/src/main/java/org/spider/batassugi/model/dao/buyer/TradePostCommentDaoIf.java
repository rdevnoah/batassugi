package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.TradeCommentVo;

public interface TradePostCommentDaoIf {
  public List<TradeCommentVo> findReplyListByTradeNo(TradeCommentVo tcv);
}
