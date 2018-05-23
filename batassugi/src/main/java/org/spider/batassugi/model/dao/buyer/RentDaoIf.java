package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.BuyerPagingBean;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * 구매자가 판매자가 올린 농지(대여) 데이터에 접근하는 영속성 인터페이스 입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.buyer
 * @filename : RentDaoIf.java
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
 * 2018. 5. 17.  "SL SangUk Lee"    registerRentByRentVo메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    findRentDetailByRecruitNo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    findFarmAvailableCropsListByFarmNo 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    getRentList 메서드 추가
 * 2018. 5. 17.  "SL SangUk Lee"    totalRentListCount 메서드 추가
 *      </pre>
 */
public interface RentDaoIf {

  /**
   * 대여신청하기 위한 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청정보를 담고있는 객체.
   * @return int
   */
  public int registerRentByRentVo(RentVo rentVo);
  
  /**
   * 대여신청을 하고 농지대여 평수를 대여한만큼 업데이트하는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청정보를 담고있는 객체.
   */
  public int updateRecruitSizeByRecruitNo(RentVo rentVo);

  
  /*
   * 구매자가 대여신청을 눌렀을때 대여신청 상세정보뷰를 출력해주는 메서드.
   * 
   * @author "SL SangUkLee"
   * 
   * @param RecruitVo 모집 데이터를 저장하는 Vo객체
   * 
   * @return RecruitVo
   */
  public RecruitVo findRentDetailByRecruitNo(int recruitNo);

  /**
   * 상세정보에 뿌려질 데이터를 전달하기 위한 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param farmNo 판매자의 밭 번호.
   * @return RecruitVo
   */
  public List<CropsVo> findFarmAvailableCropsListByFarmNo(int farmNo);

  /**
   * 대여신청게시판 리스트 메서드.
   * 
   * @author "SL SangUk Lee"
   * @return List
   */
  public List<RecruitVo> getRentList(BuyerPagingBean pb);

  /**
   * 대여신청게시판 총게시글 수. 페이징을 위해 만든 메서드.
   * 
   * @author "SL SangUk Lee"
   * @return int
   */
  public int totalRentListCount();
}
