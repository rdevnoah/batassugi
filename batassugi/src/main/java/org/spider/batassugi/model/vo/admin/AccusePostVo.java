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
   * @param accuseResultday 신고처리일자.
   * @param resultReason 신고처리사유(거절시).
   */
  public AccusePostVo(String accuseNo, String accuseCategory, String accuseId, String reportedId, String accuseDate,
			String accuseReason, String accuseProof, String accuseResultday, String resultReason, MultipartFile file) {
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
		this.file = file;
	}

/**
 * @return the accuseNo
 */
public String getAccuseNo() {
	return accuseNo;
}

/**
 * @param accuseNo the accuseNo to set
 */
public void setAccuseNo(String accuseNo) {
	this.accuseNo = accuseNo;
}

/**
 * @return the accuseCategory
 */
public String getAccuseCategory() {
	return accuseCategory;
}

/**
 * @param accuseCategory the accuseCategory to set
 */
public void setAccuseCategory(String accuseCategory) {
	this.accuseCategory = accuseCategory;
}

/**
 * @return the accuseId
 */
public String getAccuseId() {
	return accuseId;
}

/**
 * @param accuseId the accuseId to set
 */
public void setAccuseId(String accuseId) {
	this.accuseId = accuseId;
}

/**
 * @return the reportedId
 */
public String getReportedId() {
	return reportedId;
}

/**
 * @param reportedId the reportedId to set
 */
public void setReportedId(String reportedId) {
	this.reportedId = reportedId;
}

/**
 * @return the accuseDate
 */
public String getAccuseDate() {
	return accuseDate;
}

/**
 * @param accuseDate the accuseDate to set
 */
public void setAccuseDate(String accuseDate) {
	this.accuseDate = accuseDate;
}

/**
 * @return the accuseReason
 */
public String getAccuseReason() {
	return accuseReason;
}

/**
 * @param accuseReason the accuseReason to set
 */
public void setAccuseReason(String accuseReason) {
	this.accuseReason = accuseReason;
}

/**
 * @return the accuseProof
 */
public String getAccuseProof() {
	return accuseProof;
}

/**
 * @param accuseProof the accuseProof to set
 */
public void setAccuseProof(String accuseProof) {
	this.accuseProof = accuseProof;
}

/**
 * @return the accuseResultday
 */
public String getAccuseResultday() {
	return accuseResultday;
}

/**
 * @param accuseResultday the accuseResultday to set
 */
public void setAccuseResultday(String accuseResultday) {
	this.accuseResultday = accuseResultday;
}

/**
 * @return the resultReason
 */
public String getResultReason() {
	return resultReason;
}

/**
 * @param resultReason the resultReason to set
 */
public void setResultReason(String resultReason) {
	this.resultReason = resultReason;
}

/**
 * @return the file
 */
public MultipartFile getFile() {
	return file;
}

/**
 * @param file the file to set
 */
public void setFile(MultipartFile file) {
	this.file = file;
}

/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "AccusePostVo [accuseNo=" + accuseNo + ", accuseCategory=" + accuseCategory + ", accuseId=" + accuseId
			+ ", reportedId=" + reportedId + ", accuseDate=" + accuseDate + ", accuseReason=" + accuseReason
			+ ", accuseProof=" + accuseProof + ", accuseResultday=" + accuseResultday + ", resultReason=" + resultReason
			+ ", file=" + file + "]";
}
  
  


}
