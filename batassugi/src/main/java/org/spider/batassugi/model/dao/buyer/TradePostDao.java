package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.buyer.TradePostVo;
import org.spider.batassugi.model.vo.common.PagingBean;
import org.springframework.stereotype.Repository;

/**
 * 구매자가 거래 게시판의 데이터를(작성, 수정, 삭제, 검색) 접근하는 영속성 계층입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.dao.buyer
 * @filename : TradePostDao.java
 * @author : "Team Spider"
 * @since : 2018. 5. 12.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 12. "SL SangUk Lee"  최초작성
 * 2018. 5. 15  "SL SangUk Lee"  getPostList, getTotalPostCount, getPostListByNo 메서드 추가
 *      </pre>
 */
@Repository
public class TradePostDao implements TradePostDaoIf {
  
  @Resource
  private SqlSessionTemplate template;

  @Override
  public List<TradePostVo> getTradePostList(PagingBean pb) {
    return template.selectList("trade.getTradePostList", pb);
  }

  @Override
  public int getTotalTradePostCount() {
    return template.selectOne("trade.getTotalTradePostCount");
  }

  @Override
  public TradePostVo findTradePostListByNo(String no) {
    return null;
  }
  
}
