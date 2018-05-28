package org.spider.batassugi.model.dao.buyer;

import java.util.List;
import java.util.Map;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
import org.spider.batassugi.model.vo.buyer.RentVo;


/**
 * 구매자가 자신이 대여한 농지 데이터를 접근하는 영속성 계층입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.buyer
 * @filename : BuyerFarmDaoIf.java
 * @author : "SL SangUk Lee"
 * @since : 2018. 5. 18.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 18.  "SL SangUk Lee"    최초작성
 * 2018. 5. 19.  "SL SangUk Lee"    findRentFarmInfoById 메서드 추가
 * 2018. 5. 19.  "SL SangUk Lee"    deleteRentByRentNo 메서드 추가
 * 2018. 5. 20.  "SL SangUk Lee"    registerApplySeller 메서드 추가
 * 2018. 5. 20.  "SL SangUk Lee"    findApplySellerById 메서드 추가
 *      </pre>
 */
public interface BuyerFarmDaoIf {

  /**
   * 구매자가 대여한 농지정보 조회 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param id 세션에 저장된 사용자 아이디.
   * @return List
   */
  public List<RentVo> findRentFarmInfoById(String id);

  /**
   * 구매자가 신청한 농지대여를 취소하는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청번호.
   */
  public void deleteRentByRentNo(RentVo rentVo);

  /**
   * 구매자에서 판매자신청하는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param applySellerVo 판매자신청에 필요한 Vo객체.
   */
  public void registerApplySeller(ApplySellerVo applySellerVo);

  /**
   * 구매자가 판매자 신청한 정보를 조회하는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param id 세션에 저장된 아이디.
   * @return ApplySellerVo
   */
  public ApplySellerVo findApplySellerById(String id);

  /**
   * 대여신청하고 취소했을시 대여한만큼 평수 초기화해주는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청정보.
   */
  public void updateRecruitSizeResetByRecruitNo(RentVo rentVo);

  /**
   * 판매자신청한 이력이 있을때 상태를 업데이트주는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param applySellerVo 판매자신청 정보.
   */
  public void updateApplySeller(ApplySellerVo applySellerVo);

  /**
   * 수확상태가 100이 넘으면 대여만료처리 해주는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentNo 대여신청번호.
   */
  public void updateRentStatus(int rentNo);

  /**
   * 회원 등급 올려주는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param map 회원아이디, 회원등급명.
   */
  public void updateMemberLevel(Map<String, String> map);
}
