package org.spider.batassugi.model.vo.buyer;

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
   * 메소드 설명 : 알아서 채웁시다.
   * 
   * @param rentNo 여기도요.
   * @param cropsNo 여기도요.
   * @param id 여기도요.
   * @param rentSize 여기도요.
   * @param rentMonth 여기도요.
   * @param rentStatus 여기도요.
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
