package org.spider.batassugi.model.vo.buyer;

import org.spider.batassugi.model.vo.common.MemberVo;

public class ApplySellerVo {
  private Integer applyNo;
  private MemberVo memberVo;
  private String farmerDocument;

  public ApplySellerVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 메소드 설명 : 구매자가 판매자 신청하는 VO.
   * 
   * @param applyNo 지원번호.
   * @param memberVo 회원정보.
   * @param farmerDocument 농업확인서류(이미지경로).
   */
  public ApplySellerVo(Integer applyNo, MemberVo memberVo, String farmerDocument) {
    super();
    this.applyNo = applyNo;
    this.memberVo = memberVo;
    this.farmerDocument = farmerDocument;
  }

  public Integer getApplyNo() {
    return applyNo;
  }

  public void setApplyNo(Integer applyNo) {
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
