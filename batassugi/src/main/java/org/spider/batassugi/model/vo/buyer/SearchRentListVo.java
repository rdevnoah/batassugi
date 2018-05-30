package org.spider.batassugi.model.vo.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * 검색한 정보를 페이징을 하기위한 RentListVo.
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
 * 2018. 5. 29.  "SL SangUk Lee"    최초작성
 *      </pre>
 */
public class SearchRentListVo extends RentListVo {
  private String keyword;
  private String category;

  public SearchRentListVo() {
    super();
  }

  /**
   * 대여신청에서 검색한 값과 검색종류.
   * 
   * @author "SL SangUk Lee"
   * @param keyword 검색어.
   * @param category 검색종류.
   */
  public SearchRentListVo(String keyword, String category) {
    super();
    this.keyword = keyword;
    this.category = category;
  }
  
  public SearchRentListVo(BuyerPagingBean pagingBean, List<RecruitVo> recruitList) {
    super(pagingBean, recruitList);
  }

  public String getKeyword() {
    return keyword;
  }

  public void setKeyword(String keyword) {
    this.keyword = keyword;
  }

  public String getCategory() {
    return category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  @Override
  public String toString() {
    return "SearchRentListVo [keyword=" + keyword + ", category=" + category + ", getPagingBean()="
        + getPagingBean() + ", getRecruitList()=" + getRecruitList() + ", toString()="
        + super.toString() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + "]";
  }

}
