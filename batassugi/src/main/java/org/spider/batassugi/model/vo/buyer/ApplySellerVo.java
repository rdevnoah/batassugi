package org.spider.batassugi.model.vo.buyer;

import org.spider.batassugi.model.vo.common.MemberVo;


/**
 * 구매자가 판매자로 신청하는 클래스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.buyer
 * @filename : ApplySellerVo.java
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
public class ApplySellerVo {
  private String applyNo;
  private MemberVo memberVo;
  private String farmerDocument;

  public ApplySellerVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 구매자가 판매자 신청하는 VO입니다.
   * 
   * @param applyNo 지원번호.
   * @param memberVo 회원정보.
   * @param farmerDocument 농업확인서류(이미지경로).
   */
  public ApplySellerVo(String applyNo, MemberVo memberVo, String farmerDocument) {
    super();
    this.applyNo = applyNo;
    this.memberVo = memberVo;
    this.farmerDocument = farmerDocument;
  }

  public String getApplyNo() {
    return applyNo;
  }

  public void setApplyNo(String applyNo) {
    this.applyNo = applyNo;
  }

  public MemberVo getMemberVo() {
    return memberVo;
  }

  public void setMemberVo(MemberVo memberVo) {
    this.memberVo = memberVo;
  }

  public String getFarmerDocument() {
    return farmerDocument;
  }

  public void setFarmerDocument(String farmerDocument) {
    this.farmerDocument = farmerDocument;
  }

  @Override
  public String toString() {
    return "ApplySellerVo [applyNo=" + applyNo + ", memberVo=" + memberVo + ", farmerDocument="
        + farmerDocument + "]";
  }


}
