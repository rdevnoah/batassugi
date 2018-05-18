package org.spider.batassugi.model.vo.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.common.PagingBean;
import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * 페이징을 하기위한 RentListVo.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.buyer
 * @filename : RentListVo.java
 * @author : "SL SangUk Lee"
 * @since : 2018. 5. 17.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 17.  "SL SangUk Lee"    최초작성
 *      </pre>
 */
public class RentListVo {
  private PagingBean pagingBean;
  private List<RecruitVo> recruitList;

  public RentListVo() {
    super();
  }

  /**
   * 여기에 설명을 쓰시오.
   * 
   * @author "SL SangUk Lee"
   * @param pagingBean 페이징을 위한 빈즈.
   * @param recruitList 대여신청 게시판 정보를 list에 담음.
   */
  public RentListVo(PagingBean pagingBean, List<RecruitVo> recruitList) {
    super();
    this.pagingBean = pagingBean;
    this.recruitList = recruitList;
  }

  public PagingBean getPagingBean() {
    return pagingBean;
  }

  public void setPagingBean(PagingBean pagingBean) {
    this.pagingBean = pagingBean;
  }

  public List<RecruitVo> getRecruitList() {
    return recruitList;
  }

  public void setRecruitList(List<RecruitVo> recruitList) {
    this.recruitList = recruitList;
  }

  @Override
  public String toString() {
    return "RecruitListVo [pagingBean=" + pagingBean + ", recruitList=" + recruitList + "]";
  }

}
