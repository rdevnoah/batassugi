package org.spider.batassugi.model.vo.buyer;

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
  private int cropsNo;
  private RecruitVo recruitVo;
  private String id;
  private int rentSize;
  private int rentMonth;
  private String rentStatus;

  public RentVo() {
    super();
  }

  /**
   * 구매자가 대여한 농지VO입니다.
   * 
   * @param rentNo 대여번호.
   * @param cropsNo 대여작물.
   * @param recruitVo 모집정보.
   * @param id 대여회원아이디.
   * @param rentSize 대여 농지 사이즈.
   * @param rentMonth 대여 개월.
   * @param rentStatus 대여 상태.
   */
  public RentVo(int rentNo, int cropsNo, RecruitVo recruitVo, String id, int rentSize,
      int rentMonth, String rentStatus) {
    super();
    this.rentNo = rentNo;
    this.cropsNo = cropsNo;
    this.recruitVo = recruitVo;
    this.id = id;
    this.rentSize = rentSize;
    this.rentMonth = rentMonth;
    this.rentStatus = rentStatus;
  }
  
  /**
   * 구매자가 대여한 농지VO입니다.
   * 
   * @param rentNo 대여번호.
   * @param cropsNo 대여작물.
   * @param recruitVo 모집정보.
   * @param id 대여회원아이디.
   * @param rentSize 대여 농지 사이즈.
   * @param rentMonth 대여 개월.
   */
  public RentVo(int rentNo, int cropsNo, RecruitVo recruitVo, String id, int rentSize,
      int rentMonth) {
    super();
    this.rentNo = rentNo;
    this.cropsNo = cropsNo;
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

  public int getCropsNo() {
    return cropsNo;
  }

  public void setCropsNo(int cropsNo) {
    this.cropsNo = cropsNo;
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

  @Override
  public String toString() {
    return "RentVo [rentNo=" + rentNo + ", cropsNo=" + cropsNo + ", recruitVo=" + recruitVo
        + ", id=" + id + ", rentSize=" + rentSize + ", rentMonth=" + rentMonth + ", rentStatus="
        + rentStatus + "]";
  }

}
