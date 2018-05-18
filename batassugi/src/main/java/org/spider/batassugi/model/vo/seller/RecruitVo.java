package org.spider.batassugi.model.vo.seller;

import java.util.List;
import org.spider.batassugi.model.vo.buyer.RentVo;

/**
 * 모집정보를 처리해주는 VO입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.seller
 * @filename : RecruitVo.java
 * @author : "GL_SangKyoung"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "GL_SangKyoung"    최초작성
 * 2018. 5. 15.  "PM KimYoungHo"    Integer 타입 전체 primitive 타입인 int형으로 변경완료. Date 타입은 String으로 변경
 * 2018. 5. 15.  "PM KimYoungHo"    모집 등록 시 최대 대여 기간을 농지 등록의 마감날짜와 현재날짜의 월 계산을 통해 저장하는 변수 추가
 *      </pre>
 */
public class RecruitVo {
  private int recruitNo;
  private FarmVo farmVo;
  private String recruitKind;
  private String recruitStartdate;
  private String recruitEnddate;
  private int price;
  private String recruitContent;
  private String recruitStatus;
  private int recruitSize;
  private List<RentVo> rentVo;
  private int maxRentMonth; // recruit와 farm 이 조인 farm 테이블의 enddate 와 sysdate를 차이를 달로 계산해서 저장하고 있는다.

  
  
  public RecruitVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 전체 데이터 모두 포함(maxRentMonth)한 생성자입니다. 주로 구매자의 대여신청 페이지에서 사용하게 될 생성자입니다.
   * @param recruitNo 모집번호입니다.
   * @param farmVo 모집하는 밭의 정보가 저장된 객체입니다.
   * @param recruitKind 모집종류입니다.
   * @param recruitStartdate 모집 시작일입니다. 
   * @param recruitEnddate 모집 마감일입니다.
   * @param price 평당 월 가격입니다.
   * @param recruitContent 모집 내용입니다.
   * @param recruitStatus 모집 상태입니다. 모집중인지, 모집완료인지를 표현합니다.
   * @param recruitSize 모집하는 총 평수입니다.
   * @param rentVo 대여를 신청한 구매자들의 rentVo의 List변수입니다.
   * @param maxRentMonth 최대 대여 개월수를 저장합니다. 주로 구매자에서 사용합니다.
   */
  public RecruitVo(int recruitNo, FarmVo farmVo, String recruitKind, String recruitStartdate,
      String recruitEnddate, int price, String recruitContent, String recruitStatus,
      int recruitSize, List<RentVo> rentVo, int maxRentMonth) {
    super();
    this.recruitNo = recruitNo;
    this.farmVo = farmVo;
    this.recruitKind = recruitKind;
    this.recruitStartdate = recruitStartdate;
    this.recruitEnddate = recruitEnddate;
    this.price = price;
    this.recruitContent = recruitContent;
    this.recruitStatus = recruitStatus;
    this.recruitSize = recruitSize;
    this.rentVo = rentVo;
    this.maxRentMonth = maxRentMonth;
  }

  /**
   * maxRentMonth를 제외한 생성자입니다. 주로 판매자가 모집을 insert 할 때 사용합니다.
   * @param recruitNo 모집번호입니다.
   * @param farmVo 모집하는 밭의 정보가 저장된 객체입니다.
   * @param recruitKind 모집종류입니다.
   * @param recruitStartdate 모집 시작일입니다. 
   * @param recruitEnddate 모집 마감일입니다.
   * @param price 평당 월 가격입니다.
   * @param recruitContent 모집 내용입니다.
   * @param recruitStatus 모집 상태입니다. 모집중인지, 모집완료인지를 표현합니다.
   * @param recruitSize 모집하는 총 평수입니다.
   * @param rentVo 대여를 신청한 구매자들의 rentVo의 List변수입니다.
   */
  public RecruitVo(int recruitNo, FarmVo farmVo, String recruitKind, String recruitStartdate,
      String recruitEnddate, int price, String recruitContent, String recruitStatus,
      int recruitSize, List<RentVo> rentVo) {
    super();
    this.recruitNo = recruitNo;
    this.farmVo = farmVo;
    this.recruitKind = recruitKind;
    this.recruitStartdate = recruitStartdate;
    this.recruitEnddate = recruitEnddate;
    this.price = price;
    this.recruitContent = recruitContent;
    this.recruitStatus = recruitStatus;
    this.recruitSize = recruitSize;
    this.rentVo = rentVo;
  }

  public int getRecruitNo() {
    return recruitNo;
  }

  public void setRecruitNo(int recruitNo) {
    this.recruitNo = recruitNo;
  }

  public FarmVo getFarmVo() {
    return farmVo;
  }

  public void setFarmVo(FarmVo farmVo) {
    this.farmVo = farmVo;
  }

  public String getRecruitKind() {
    return recruitKind;
  }

  public void setRecruitKind(String recruitKind) {
    this.recruitKind = recruitKind;
  }

  public String getRecruitStartdate() {
    return recruitStartdate;
  }

  public void setRecruitStartdate(String recruitStartdate) {
    this.recruitStartdate = recruitStartdate;
  }

  public String getRecruitEnddate() {
    return recruitEnddate;
  }

  public void setRecruitEnddate(String recruitEnddate) {
    this.recruitEnddate = recruitEnddate;
  }

  public int getPrice() {
    return price;
  }

  public void setPrice(int price) {
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

  public int getRecruitSize() {
    return recruitSize;
  }

  public void setRecruitSize(int recruitSize) {
    this.recruitSize = recruitSize;
  }

  public List<RentVo> getRentVo() {
    return rentVo;
  }

  public void setRentVo(List<RentVo> rentVo) {
    this.rentVo = rentVo;
  }

  public int getMaxRentMonth() {
    return maxRentMonth;
  }

  public void setMaxRentMonth(int maxRentMonth) {
    this.maxRentMonth = maxRentMonth;
  }

  @Override
  public String toString() {
    return "RecruitVo [recruitNo=" + recruitNo + ", farmVo=" + farmVo + ", recruitKind="
        + recruitKind + ", recruitStartdate=" + recruitStartdate + ", recruitEnddate="
        + recruitEnddate + ", price=" + price + ", recruitContent=" + recruitContent
        + ", recruitStatus=" + recruitStatus + ", recruitSize=" + recruitSize + ", rentVo=" + rentVo
        + ", maxRentMonth=" + maxRentMonth + "]";
  }


}
