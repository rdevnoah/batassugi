package org.spider.batassugi.model.vo.seller;

import java.util.Date;
import java.util.List;
import org.spider.batassugi.model.vo.buyer.RentVo;

/**
 * 모집정보를 처리해주는 VO입니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.seller
 * @filename : RecruitVo.java
 * @author : "GL_SangKyoung"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "GL_SangKyoung"    최초작성
 * </pre>
 */
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
   * 모집 정보를 가져오는 생성자.
   * 
   * @author "GL_SangKyoung"
   * @param recruitNo   모집번호
   * @param farmNo  농지번호
   * @param recruitKind 농지종류(주말농장,일반)
   * @param recruitStartdate    모집시작일
   * @param recruitEnddate  모집종료일
   * @param price   평당가격
   * @param recruitContent  모집내용
   * @param recruitStatus   모집상태
   * @param recruitSize 대여평수 
   * @param id  회원정보
   * @param rentVo  대여정보 가져오기위한 rentVo
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
