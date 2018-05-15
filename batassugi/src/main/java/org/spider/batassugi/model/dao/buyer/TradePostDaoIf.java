package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.TradePostVo;
import org.spider.batassugi.model.vo.common.PagingBean;

/**
 * 반드시 마침표를 찍습니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.buyer
 * @filename : TradePostDaoIF.java
 * @author : "LeeSangUk"
 * @since : 2018. 5. 15.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 15. "SL SangUk Lee"  최초작성
 * 2018. 5. 15. "SL SangUk Lee"  getPostList, getTotalPostCount, getPostListByNo 메서드 추가
 *      </pre>
 */
public interface TradePostDaoIf {
  
  public List<TradePostVo> getTradePostList(PagingBean pb);

  public int getTotalTradePostCount();

  public TradePostVo findTradePostListByNo(String no);
  
}
