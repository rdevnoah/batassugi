package org.spider.batassugi.model.vo.buyer;

import org.spider.batassugi.model.vo.common.MemberVo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 구매자가 거래 게시판 작성한 거래글을 저장하는 클래스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.buyer
 * @filename : TradePostVo.java
 * @author : "Team Spider"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "Team Spider"    최초작성
 * 2018. 5. 16.  "SM HyeonGil Kim"  MultipartFile file 추가
 * 2018. 5. 30.  "SM HyeonGil Kim"  String replyCnt 추가
 *      </pre>
 */
public class TradePostVo {
  private int tradeNo;
  private String tradeKind;
  private int tradeHits;
  private String tradeTitle;
  private String tradeContent;
  private String tradePhoto;
  private String regdate;
  private String replyCnt;
  private MemberVo memberVo;
  private  MultipartFile file;

  public TradePostVo() {
    super();
  }
  /**
   * 구매자가 거래글을 작성한 거래게시판VO입니다.
   * 
   * @author "SM HyeonGil Kim"
   * @param tradeNo 거래게시판 번호.
   * @param tradeKind 거래 종류.
   * @param tradeHits 거래 조회수.
   * @param tradeTitle 거래 제목.
   * @param tradeContent 거래 게시판 내용.
   * @param tradePhoto 거래 게시판 내용 사진.
   * @param memberVo 거래 게시판 작성한 회원 정보.
   * @param replyCnt 거래 게시판 댓글 갯수.
   * @param file 파일업로드.
   */

  public TradePostVo(int tradeNo, String tradeKind, int tradeHits, String tradeTitle,
      String tradeContent, String tradePhoto, String regdate, String replyCnt, MemberVo memberVo,
      MultipartFile file) {
    super();
    this.tradeNo = tradeNo;
    this.tradeKind = tradeKind;
    this.tradeHits = tradeHits;
    this.tradeTitle = tradeTitle;
    this.tradeContent = tradeContent;
    this.tradePhoto = tradePhoto;
    this.regdate = regdate;
    this.replyCnt = replyCnt;
    this.memberVo = memberVo;
    this.file = file;
  }
  
  public int getTradeNo() {
    return tradeNo;
  }
  
  public void setTradeNo(int tradeNo) {
    this.tradeNo = tradeNo;
  }
  
  public String getTradeKind() {
    return tradeKind;
  }
  
  public void setTradeKind(String tradeKind) {
    this.tradeKind = tradeKind;
  }
  
  public int getTradeHits() {
    return tradeHits;
  }
  
  public void setTradeHits(int tradeHits) {
    this.tradeHits = tradeHits;
  }
  
  public String getTradeTitle() {
    return tradeTitle;
  }
  
  public void setTradeTitle(String tradeTitle) {
    this.tradeTitle = tradeTitle;
  }
  
  public String getTradeContent() {
    return tradeContent;
  }
  
  public void setTradeContent(String tradeContent) {
    this.tradeContent = tradeContent;
  }
  
  public String getTradePhoto() {
    return tradePhoto;
  }
  
  public void setTradePhoto(String tradePhoto) {
    this.tradePhoto = tradePhoto;
  }
  
  public String getRegdate() {
    return regdate;
  }
  
  public void setRegdate(String regdate) {
    this.regdate = regdate;
  }
  
  public String getReplyCnt() {
    return replyCnt;
  }
  
  public void setReplyCnt(String replyCnt) {
    this.replyCnt = replyCnt;
  }
  
  public MemberVo getMemberVo() {
    return memberVo;
  }
  
  public void setMemberVo(MemberVo memberVo) {
    this.memberVo = memberVo;
  }
  
  public MultipartFile getFile() {
    return file;
  }
  
  public void setFile(MultipartFile file) {
    this.file = file;
  }
  
  @Override
  public String toString() {
    return "TradePostVo [tradeNo=" + tradeNo + ", tradeKind=" + tradeKind + ", tradeHits="
        + tradeHits + ", tradeTitle=" + tradeTitle + ", tradeContent=" + tradeContent
        + ", tradePhoto=" + tradePhoto + ", regdate=" + regdate + ", replyCnt=" + replyCnt
        + ", memberVo=" + memberVo + ", file=" + file + "]";
  }

}
