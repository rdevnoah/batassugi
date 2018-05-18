package org.spider.batassugi.model.service.buyer;

import org.spider.batassugi.model.vo.buyer.RentListVo;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * 반드시 마침표를 찍습니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.buyer
 * @filename : RentServiceIf.java
 * @author : "SL SangUk Lee"
 * @since : 2018. 5. 17.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 17.  "SL SangUk Lee" 최초작성
 * 2018. 5. 17.  "SL SangUk Lee" registerRentByRentVo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee" findRentDetailByRecruitNo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee" getRentList 메서드 추가
 * </pre>
 */
public interface RentServiceIf {
  
  /**
   * 대여신청하기 위한 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청정보를 담고있는 객체.
   * @return int
   */
  public int registerRentByRentVo(RentVo rentVo);
  
  /**
   * 상세정보에 뿌려질 데이터를 전달하기 위한 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param recruitNo 대여신청번호.
   * @return RecruitVo
   */
  public RecruitVo findRentDetailByRecruitNo(int recruitNo);

  /**
   * 대여신청 게시판 목록 메서드.
   * 
   * @author "SL SangUk Lee"
   * @return List
   */
  public RentListVo getRentList(String pageNum);
}
