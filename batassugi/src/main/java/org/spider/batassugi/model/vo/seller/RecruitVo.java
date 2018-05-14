package org.spider.batassugi.model.vo.seller;

import java.util.Date;
import java.util.List;
import org.spider.batassugi.model.vo.buyer.RentVo;

public class RecruitVo {
  private Integer recruitNo;
  private Integer farmNo;
  private String recruitKind;
  private Date recruitStartdate;
  private Date recruitEnddate;
  private Integer price;
  private String recruitContent;
  private String recruitStatus;
  private Integer recruitSize;
  private String id;
  private List<RentVo> rentVo;

  public RecruitVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 설명은 직접쓰세요.
   * 
   * @param recruitNo 여기도 직접쓰세요.
   * @param farmNo 여기도 직접쓰세요.
   * @param recruitKind 여기도 직접쓰세요.
   * @param recruitStartdate 여기도 직접쓰세요.
   * @param recruitEnddate 여기도 직접쓰세요.
   * @param price 여기도 직접쓰세요.
   * @param recruitContent 여기도 직접쓰세요.
   * @param recruitStatus 여기도 직접쓰세요.
   * @param recruitSize 여기도 직접쓰세요.
   * @param id 여기도 직접쓰세요.
   * @param rentVo 여기도 직접쓰세요.
   */
  public RecruitVo(Integer recruitNo, Integer farmNo, String recruitKind, Date recruitStartdate,
      Date recruitEnddate, Integer price, String recruitContent, String recruitStatus,
      Integer recruitSize, String id, List<RentVo> rentVo) {
    super();
    this.recruitNo = recruitNo;
    this.farmNo = farmNo;
    this.recruitKind = recruitKind;
    this.recruitStartdate = recruitStartdate;
    this.recruitEnddate = recruitEnddate;
    this.price = price;
    this.recruitContent = recruitContent;
    this.recruitStatus = recruitStatus;
    this.recruitSize = recruitSize;
    this.id = id;
    this.rentVo = rentVo;
  }

  public Integer getRecruitNo() {
    return recruitNo;
  }

  public void setRecruitNo(Integer recruitNo) {
    this.recruitNo = recruitNo;
  }

  public Integer getFarmNo() {
    return farmNo;
  }

  public void setFarmNo(Integer farmNo) {
    this.farmNo = farmNo;
  }

  public String getRecruitKind() {
    return recruitKind;
  }

  public void setRecruitKind(String recruitKind) {
    this.recruitKind = recruitKind;
  }

  public Date getRecruitStartdate() {
    return recruitStartdate;
  }

  public void setRecruitStartdate(Date recruitStartdate) {
    this.recruitStartdate = recruitStartdate;
  }

  public Date getRecruitEnddate() {
    return recruitEnddate;
  }

  public void setRecruitEnddate(Date recruitEnddate) {
    this.recruitEnddate = recruitEnddate;
  }

  public Integer getPrice() {
    return price;
  }

  public void setPrice(Integer price) {
    this.price = price;
  }

  public String getRecruitContent() {
    return recruitContent;
  }

  public void setRecruitContent(String recruitContent) {
    this.recruitContent = recruitContent;
  }

  public String getRecruitStatus() {
    return recruitStatus;
  }

  public void setRecruitStatus(String recruitStatus) {
    this.recruitStatus = recruitStatus;
  }

  public Integer getRecruitSize() {
    return recruitSize;
  }

  public void setRecruitSize(Integer recruitSize) {
    this.recruitSize = recruitSize;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public List<RentVo> getRentVo() {
    return rentVo;
  }

  public void setRentVo(List<RentVo> rentVo) {
    this.rentVo = rentVo;
  }

  @Override
  public String toString() {
    return "RecruitVo [recruitNo=" + recruitNo + ", farmNo=" + farmNo + ", recruitKind="
        + recruitKind + ", recruitStartdate=" + recruitStartdate + ", recruitEnddate="
        + recruitEnddate + ", price=" + price + ", recruitContent=" + recruitContent
        + ", recruitStatus=" + recruitStatus + ", recruitSize=" + recruitSize + ", id=" + id
        + ", rentVo=" + rentVo + "]";
  }

}
