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
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "SM HyeonGil Kim"    최초작성
 *      </pre>
 */
public class ApplySellerVo {
  private String applyNo;
  private MemberVo memberVo;
  private String farmerDocument;
  private String applyDate;
  private String applyState;
  private String applyResultdate;
  private String applyReason;

  public ApplySellerVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 구매자가 판매자로 신청 및 처리를 위한 VO.
   * 
   * @author "PL_Seonhwa"
   * @param applyNo 판매자 지원번호.
   * @param memberVo 지원자 정보.
   * @param farmerDocument 농업증명 서류.
   * @param applyDate 지원 날짜.
   * @param applyState 지원 신청 상태.
   * @param applyResultdate 지원 처리 날짜.
   * @param applyReason
   */
  public ApplySellerVo(String applyNo, MemberVo memberVo, String farmerDocument, String applyDate,
      String applyState, String applyResultdate, String applyReason) {
    super();
    this.applyNo = applyNo;
    this.memberVo = memberVo;
    this.farmerDocument = farmerDocument;
    this.applyDate = applyDate;
    this.applyState = applyState;
    this.applyResultdate = applyResultdate;
    this.applyReason = applyReason;
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

  public String getApplyDate() {
    return applyDate;
  }

  public void setApplyDate(String applyDate) {
    this.applyDate = applyDate;
  }

  public String getApplyState() {
    return applyState;
  }

  public void setApplyState(String applyState) {
    this.applyState = applyState;
  }

  public String getApplyResultdate() {
    return applyResultdate;
  }

  public void setApplyResultdate(String applyResultdate) {
    this.applyResultdate = applyResultdate;
  }

  public String getApplyReason() {
    return applyReason;
  }

  public void setApplyReason(String applyReason) {
    this.applyReason = applyReason;
  }

  @Override
  public String toString() {
    return "ApplySellerVo [applyNo=" + applyNo + ", memberVo=" + memberVo + ", farmerDocument="
        + farmerDocument + ", applyDate=" + applyDate + ", applyState=" + applyState
        + ", applyResultdate=" + applyResultdate + ", applyReason=" + applyReason + "]";
  }
}
