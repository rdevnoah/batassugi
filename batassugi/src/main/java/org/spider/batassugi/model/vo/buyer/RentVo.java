package org.spider.batassugi.model.vo.buyer;

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
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "SM HyeonGil Kim"    최초작성
 * </pre>
 */

public class RentVo {

  private Integer rentNo;
  private Integer cropsNo;
  private String id;
  private Integer rentSize;
  private Integer rentMonth;
  private String rentStatus;

  public RentVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 구매자가 대여한 농지VO입니다.
   * 
   * @param rentNo 대여번호.
   * @param cropsNo 대여작물.
   * @param id 대여회원아이디.
   * @param rentSize 대여 농지 사이즈.
   * @param rentMonth 대여 개월.
   * @param rentStatus 대여 상태.
   */
  public RentVo(Integer rentNo, Integer cropsNo, String id, Integer rentSize, Integer rentMonth,
      String rentStatus) {
    super();
    this.rentNo = rentNo;
    this.cropsNo = cropsNo;
    this.id = id;
    this.rentSize = rentSize;
    this.rentMonth = rentMonth;
    this.rentStatus = rentStatus;
  }
  
  public Integer getRentNo() {
    return rentNo;
  }

  public void setRentNo(Integer rentNo) {
    this.rentNo = rentNo;
  }

  public Integer getCropsNo() {
    return cropsNo;
  }

  public void setCropsNo(Integer cropsNo) {
    this.cropsNo = cropsNo;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public Integer getRentSize() {
    return rentSize;
  }

  public void setRentSize(Integer rentSize) {
    this.rentSize = rentSize;
  }

  public Integer getRentMonth() {
    return rentMonth;
  }

  public void setRentMonth(Integer rentMonth) {
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
    return "RentVo [rentNo=" + rentNo + ", cropsNo=" + cropsNo + ", id=" + id + ", rentSize="
        + rentSize + ", rentMonth=" + rentMonth + ", rentStatus=" + rentStatus + "]";
  }



}
