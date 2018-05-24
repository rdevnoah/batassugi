package org.spider.batassugi.model.vo.buyer;

import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;

/**
 * 구매자가 대여한 농지 정보를 저장한 클레스 입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.buyer
 * @filename : RentVo.java
 * @author : "SM HyeonGil Kim"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "SM HyeonGil Kim" 최초작성
 * 2018. 5. 17.  "SL SangUk Lee"   대여신청에 필요한 RecruitVo 생성자, 게터, 세터 추가
 *      </pre>
 */

public class RentVo {
  private int rentNo;
  private CropsVo cropsVo;
  private RecruitVo recruitVo;
  private String id;
  private int rentSize;
  private int rentMonth;
  private String rentStatus;
  private String rentStartdate;
  private int harvestStatus;

  public RentVo() {
    super();
  }

  /**
   * 구매자가 대여한 농지VO입니다.
   * 
   * @param rentNo 대여번호.
   * @param cropsVo 대여작물.
   * @param recruitVo 모집정보.
   * @param id 대여회원아이디.
   * @param rentSize 대여 농지 사이즈.
   * @param rentMonth 대여 개월.
   * @param rentStatus 대여 상태.
   * @param harvestStatus 수확상태.
   */
  public RentVo(int rentNo, CropsVo cropsVo, RecruitVo recruitVo, String id, int rentSize,
      int rentMonth, String rentStatus, String rentStartdate, int harvestStatus) {
    super();
    this.rentNo = rentNo;
    this.cropsVo = cropsVo;
    this.recruitVo = recruitVo;
    this.id = id;
    this.rentSize = rentSize;
    this.rentMonth = rentMonth;
    this.rentStatus = rentStatus;
    this.rentStartdate = rentStartdate;
    this.harvestStatus = harvestStatus;
  }
  
  /**
   * 구매자가 대여한 농지VO입니다.
   * 
   * @param rentNo 대여번호.
   * @param cropsVo 대여작물.
   * @param recruitVo 모집정보.
   * @param id 대여회원아이디.
   * @param rentSize 대여 농지 사이즈.
   * @param rentMonth 대여 개월.
   * @param rentStatus 대여 상태.
   */
  public RentVo(int rentNo, CropsVo cropsVo, RecruitVo recruitVo, String id, int rentSize,
      int rentMonth, String rentStatus, String rentStartdate) {
    super();
    this.rentNo = rentNo;
    this.cropsVo = cropsVo;
    this.recruitVo = recruitVo;
    this.id = id;
    this.rentSize = rentSize;
    this.rentMonth = rentMonth;
    this.rentStatus = rentStatus;
    this.rentStartdate = rentStartdate;
  }


  /**
   * 구매자가 대여한 농지VO입니다.
   * 
   * @param rentNo 대여번호.
   * @param cropsVo 대여작물.
   * @param recruitVo 모집정보.
   * @param id 대여회원아이디.
   * @param rentSize 대여 농지 사이즈.
   * @param rentMonth 대여 개월.
   */
  public RentVo(int rentNo, CropsVo cropsVo, RecruitVo recruitVo, String id, int rentSize,
      int rentMonth) {
    super();
    this.rentNo = rentNo;
    this.cropsVo = cropsVo;
    this.recruitVo = recruitVo;
    this.id = id;
    this.rentSize = rentSize;
    this.rentMonth = rentMonth;
  }

  public int getRentNo() {
    return rentNo;
  }

  public void setRentNo(int rentNo) {
    this.rentNo = rentNo;
  }

  public CropsVo getCropsVo() {
    return cropsVo;
  }

  public void setCropsVo(CropsVo cropsVo) {
    this.cropsVo = cropsVo;
  }

  public RecruitVo getRecruitVo() {
    return recruitVo;
  }

  public void setRecruitVo(RecruitVo recruitVo) {
    this.recruitVo = recruitVo;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public int getRentSize() {
    return rentSize;
  }

  public void setRentSize(int rentSize) {
    this.rentSize = rentSize;
  }

  public int getRentMonth() {
    return rentMonth;
  }

  public void setRentMonth(int rentMonth) {
    this.rentMonth = rentMonth;
  }

  public String getRentStatus() {
    return rentStatus;
  }

  public void setRentStatus(String rentStatus) {
    this.rentStatus = rentStatus;
  }

  public String getRentStartdate() {
    return rentStartdate;
  }

  public void setRentStartdate(String rentStartdate) {
    this.rentStartdate = rentStartdate;
  }

  public int getHarvestStatus() {
    return harvestStatus;
  }

  public void setHarvestStatus(int harvestStatus) {
    this.harvestStatus = harvestStatus;
  }

  @Override
  public String toString() {
    return "RentVo [rentNo=" + rentNo + ", cropsVo=" + cropsVo + ", recruitVo=" + recruitVo
        + ", id=" + id + ", rentSize=" + rentSize + ", rentMonth=" + rentMonth + ", rentStatus="
        + rentStatus + "]";
  }

}
