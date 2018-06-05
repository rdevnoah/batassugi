package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.BuyerPagingBean;
import org.spider.batassugi.model.vo.buyer.TradePostSearchVo;
import org.spider.batassugi.model.vo.buyer.TradePostVo;

/**
 * 거래게시판.
 * 
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
 * 2018. 5. 15. "SL SangUk Lee"  findTradePostList,getTotalTradePostCount,findTradePostDetailByNo추가
 * 2018. 5. 15. "SM HyeonGil Kim" deleteTradePostByNo 추가
 * 2018. 5. 16. "SM HyeonGil Kim" updateTradePost, createTradePost 추가
 * 2018. 5. 17. "SM HyeonGil Kim" updateHitsTradePost 추가
 * 2018. 5. 28. "SM HyeonGil Kim" findtradePostBySearch 추가
 * 2018. 5. 28. "SM HyeonGil Kim" getTotalTradeSearchCount 추가
 *      </pre>
 */
public interface TradePostDaoIf {
  
  public List<TradePostVo> findTradePostList(BuyerPagingBean pb);

  public int getTotalTradePostCount();

  public TradePostVo findTradePostDetailByNo(int no);
  
  public void deleteTradePostByNo(int no);
  
  public void updateTradePost(TradePostVo tvo);
  
  public void createTradePost(TradePostVo tvo);
  
  public void updateHitsTradePost(TradePostVo tvo);
  
  public List<TradePostVo> findtradePostBySearch(TradePostSearchVo tps);
  
  public int getTotalTradeSearchCount(TradePostSearchVo tps);
  
}
