package org.spider.batassugi.model.service.buyer;

import org.spider.batassugi.model.vo.buyer.TradePostListVo;
import org.spider.batassugi.model.vo.buyer.TradePostVo;

/**
 * 반드시 마침표를 찍습니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : TradeServiceIf.java
 * @author : "LeeSangUk"
 * @since : 2018. 5. 15.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 15. "SL SangUk Lee"  최초작성
 * 2018. 5. 15. "SL SangUk Lee"  getTradePostList,getTotalTradePostCount,findTradePostListByNo추가
 * 2018. 5. 15. "SM HyeonGil Kim" deleteTradePostByNo 추가
 * 2018. 5. 16. "SM HyeonGil Kim" updateTradePost 추가
 * 
 * </pre>
 */
public interface TradeServiceIf {
  
  public TradePostListVo getTradePostList(String pageNum);

  public TradePostVo findTradePostDetailByNo(int no);
  
  public void deleteTradePostByNo(int no);
  
  public void updateTradePost(TradePostVo tvo);
  
}
