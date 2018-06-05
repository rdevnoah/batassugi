package org.spider.batassugi.model.vo.admin;

import org.springframework.web.multipart.MultipartFile;

public class AccusePostVo {
  private String accuseNo;
  private String accuseCategory;
  private String accuseId;
  private String reportedId;
  private String accuseDate;
  private String accuseReason;
  private String accuseProof;
  private String accuseState;
  private String accuseResultday;
  private String resultReason;
  private MultipartFile file;

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
   * @param accuseState 신고 처리 상태.
   * @param accuseResultday 신고처리일자.
   * @param resultReason 신고처리사유(거절시).
   */
  public AccusePostVo(String accuseNo, String accuseCategory, String accuseId, String reportedId,
      String accuseDate, String accuseReason, String accuseProof, String accuseState,
      String accuseResultday, String resultReason, MultipartFile file) {
    super();
    this.accuseNo = accuseNo;
    this.accuseCategory = accuseCategory;
    this.accuseId = accuseId;
    this.reportedId = reportedId;
    this.accuseDate = accuseDate;
    this.accuseReason = accuseReason;
    this.accuseProof = accuseProof;
    this.accuseState = accuseState;
    this.accuseResultday = accuseResultday;
    this.resultReason = resultReason;
    this.file = file;
  }

  public String getAccuseNo() {
    return accuseNo;
  }

  public void setAccuseNo(String accuseNo) {
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

  public String getAccuseDate() {
    return accuseDate;
  }

  public void setAccuseDate(String accuseDate) {
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

  public String getAccuseState() {
    return accuseState;
  }

  public void setAccuseState(String accuseState) {
    this.accuseState = accuseState;
  }

  public String getAccuseResultday() {
    return accuseResultday;
  }

  public void setAccuseResultday(String accuseResultday) {
    this.accuseResultday = accuseResultday;
  }

  public String getResultReason() {
    return resultReason;
  }

  public void setResultReason(String resultReason) {
    this.resultReason = resultReason;
  }

  public MultipartFile getFile() {
    return file;
  }

  public void setFile(MultipartFile file) {
    this.file = file;
  }

  @Override
  public String toString() {
    return "AccusePostVo [accuseNo=" + accuseNo + ", accuseCategory=" + accuseCategory
        + ", accuseId=" + accuseId + ", reportedId=" + reportedId + ", accuseDate=" + accuseDate
        + ", accuseReason=" + accuseReason + ", accuseProof=" + accuseProof + ", accuseState="
        + accuseState + ", accuseResultday=" + accuseResultday + ", resultReason=" + resultReason
        + ", file=" + file + "]";
  }
}
