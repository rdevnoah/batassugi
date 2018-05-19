package org.spider.batassugi.model.vo.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.common.PagingBean;

public class TradePostListVo {
  private BuyerPagingBean pagingBean;
  private List<TradePostVo> tradepostList;

  public TradePostListVo() {
    super();
  }

  /**
   * ListVO.
   * 
   * @param pagingBean 페이징을 위한 페이징빈.
   * @param postList 게시글 리스트.
   */
  public TradePostListVo(BuyerPagingBean pagingBean, List<TradePostVo> tradepostList) {
    super();
    this.pagingBean = pagingBean;
    this.tradepostList = tradepostList;
  }

  public BuyerPagingBean getPagingBean() {
    return pagingBean;
  }

  public void setPagingBean(BuyerPagingBean pagingBean) {
    this.pagingBean = pagingBean;
  }

  public List<TradePostVo> getTradepostList() {
    return tradepostList;
  }

  public void setTradepostList(List<TradePostVo> tradepostList) {
    this.tradepostList = tradepostList;
  }

  @Override
  public String toString() {
    return "ListVo [pagingBean=" + pagingBean + ", postList=" + tradepostList + "]";
  }

}
