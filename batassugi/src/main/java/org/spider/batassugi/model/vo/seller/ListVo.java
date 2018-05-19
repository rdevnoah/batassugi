package org.spider.batassugi.model.vo.seller;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.common.PagingBean;

/**
 * 판매자 현재 농지를 대여신청하거나 대여중인 회원들의 목록을 저장하는 Vo입니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.seller
 * @filename : ListVo.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 18.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 18.  "PM KimYoungHo"    최초작성
 * </pre>
 */
public class ListVo {
  private PagingBean pb;
  private List<RentVo> rentList;
  
  public ListVo() {
    super();
    // TODO Auto-generated constructor stub
  }
  
  /**
   * 초기 생성자입니다.
   * @param pb 페이징 처리를 위한 자바Beans입니다.
   * @param rentList 한페이지에 출력 될 대여인 목록을 저장합니다.
   */
  public ListVo(PagingBean pb, List<RentVo> rentList) {
    super();
    this.pb = pb;
    this.rentList = rentList;
  }
  
  public PagingBean getPb() {
    return pb;
  }
  
  public void setPb(PagingBean pb) {
    this.pb = pb;
  }
  
  public List<RentVo> getRentList() {
    return rentList;
  }
  
  public void setRentList(List<RentVo> rentList) {
    this.rentList = rentList;
  }
  
  @Override
  public String toString() {
    return "ListVo [pb=" + pb + "]";
  }
}
