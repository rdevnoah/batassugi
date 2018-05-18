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
 * </pre>
 */

@Repository
public class TradePostCommentDao implements TradePostCommentDaoIf {
  @Resource
  private SqlSessionTemplate template;

  @Override
  public List<TradeCommentVo> findReplyListByTradeNo(TradeCommentVo tcv) {
    return template.selectList("comment.findReplyListByTradeNo", tcv);
  }
  
}
