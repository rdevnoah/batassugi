package org.spider.batassugi.model.vo.admin;

import java.util.Date;

public class AccusePostVo {
  private Integer accuseNo;
  private String accuseCategory;
  private String accuseId;
  private String reportedId;
  private Date accuseDate;
  private String accuseReason;
  private String accuseProof;
  private Date accuseResultday;
  private String resultReason;

  public AccusePostVo() {
    super();
  }

  /**
   * 메소드 설명 : 신고게시판VO.
   * 
   * @param accuseNo 신고번호.
   * @param accuseCategory 신고카테고리내용(no로 내용을 가져와야함).
   * @param accuseId 신고자 회원아이디.
   * @param reportedId 신고대상자 회원아이디.
   * @param accuseDate 신고일자.
   * @param accuseReason 신고사유.
   * @param accuseProof 신고증빙.
   * @param accuseResultday 신고처리일자.
   * @param resultReason 신고처리사유(거절시).
   */
  public AccusePostVo(Integer accuseNo, String accuseCategory, String accuseId, String reportedId,
      Date accuseDate, String accuseReason, String accuseProof, Date accuseResultday,
      String resultReason) {
    super();
    this.accuseNo = accuseNo;
    this.accuseCategory = accuseCategory;
    this.accuseId = accuseId;
    this.reportedId = reportedId;
    this.accuseDate = accuseDate;
    this.accuseReason = accuseReason;
    this.accuseProof = accuseProof;
    this.accuseResultday = accuseResultday;
    this.resultReason = resultReason;
  }

  public Integer getAccuseNo() {
    return accuseNo;
  }

  public void setAccuseNo(Integer accuseNo) {
    this.accuseNo = accuseNo;
  }

  public String getAccuseCategory() {
    return accuseCategory;
  }

  public void setAccuseCategory(String accuseCategory) {
    this.accuseCategory = accuseCategory;
  }

  public String getAccuseId() {
    return accuseId;
  }

  public void setAccuseId(String accuseId) {
    this.accuseId = accuseId;
  }

  public String getReportedId() {
    return reportedId;
  }

  public void setReportedId(String reportedId) {
    this.reportedId = reportedId;
  }

  public Date getAccuseDate() {
    return accuseDate;
  }

  public void setAccuseDate(Date accuseDate) {
    this.accuseDate = accuseDate;
  }

  public String getAccuseReason() {
    return accuseReason;
  }

  public void setAccuseReason(String accuseReason) {
    this.accuseReason = accuseReason;
  }

  public String getAccuseProof() {
    return accuseProof;
  }

  public void setAccuseProof(String accuseProof) {
    this.accuseProof = accuseProof;
  }

  public Date getAccuseResultday() {
    return accuseResultday;
  }

  public void setAccuseResultday(Date accuseResultday) {
    this.accuseResultday = accuseResultday;
  }

  public String getResultReason() {
    return resultReason;
  }

  public void setResultReason(String resultReason) {
    this.resultReason = resultReason;
  }

  @Override
  public String toString() {
    return "AccusePostVo [accuseNo=" + accuseNo + ", accuseCategory=" + accuseCategory
        + ", accuseId=" + accuseId + ", reportedId=" + reportedId + ", accuseDate=" + accuseDate
        + ", accuseReason=" + accuseReason + ", accuseProof=" + accuseProof + ", accuseResultday="
        + accuseResultday + ", resultReason=" + resultReason + "]";
  }


}
