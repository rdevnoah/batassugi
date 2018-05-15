package org.spider.batassugi.model.vo.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.common.PagingBean;

public class TradePostListVo {
  private PagingBean pagingBean;
  private List<TradePostVo> postList;

  public TradePostListVo() {
    super();
  }

  /**
   * ListVO.
   * 
   * @param pagingBean 페이징을 위한 페이징빈.
   * @param postList 게시글 리스트.
   */
  public TradePostListVo(PagingBean pagingBean, List<TradePostVo> postList) {
    super();
    this.pagingBean = pagingBean;
    this.postList = postList;
  }

  public PagingBean getPagingBean() {
    return pagingBean;
  }

  public void setPagingBean(PagingBean pagingBean) {
    this.pagingBean = pagingBean;
  }

  public List<TradePostVo> getPostList() {
    return postList;
  }

  public void setPostList(List<TradePostVo> postList) {
    this.postList = postList;
  }

  @Override
  public String toString() {
    return "ListVo [pagingBean=" + pagingBean + ", postList=" + postList + "]";
  }

}
