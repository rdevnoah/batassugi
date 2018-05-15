package org.spider.batassugi.model.service.buyer;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.buyer.TradePostDao;
import org.spider.batassugi.model.vo.buyer.TradePostVo;
import org.spider.batassugi.model.vo.common.PagingBean;

/**
 * 구매자가 거래 게시판에 게시글을 관리(작성, 수정, 삭제, 검색) 할 수 있는 서비스 입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : TradeService.java
 * @author : "SM HyeonGil Kim"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR            NOTE
 * -----------  -------------     --------------------------------
 * 2018. 5. 14. "SM HyeonGil Kim" 최초작성
 * 2018. 5. 14. "SM HyeonGil Kim" getTradePostList,getTotalTradePostCount,findTradePostListByNo추가
 *      </pre>
 */
public class TradeService implements TradeServiceIf {
  
  @Resource
  private TradePostDao dao;

  @Override
  public List<TradePostVo> getTradePostList(PagingBean pb) {
    return null;
  }

  @Override
  public int getTotalTradePostCount() {
    return 0;
  }

  @Override
  public TradePostVo findTradePostListByNo(String no) {
    return null;
  }
  
}
