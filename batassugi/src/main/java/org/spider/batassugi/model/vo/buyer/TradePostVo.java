package org.spider.batassugi.model.vo.buyer;

import org.spider.batassugi.model.vo.common.MemberVo;

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
 *      </pre>
 */
public class TradePostVo {
  private Integer tradeNo;
  private String tradeKind;
  private Integer tradeHits;
  private String tradeTitle;
  private String tradeContent;
  private String tradePhoto;
  private MemberVo memberVo;

  public TradePostVo() {
    super();
  }

  /**
   * 구매자가 거래글을 작성한 거래게시판VO입니다.
   * 
   * @param tradeNo 거래게시판 번호.
   * @param tradeKind 거래 종류.
   * @param tradeHits 거래 조회수.
   * @param tradeTitle 거래 제목.
   * @param tradeContent 거래 게시판 내용.
   * @param tradePhoto 거래 게시판 내용 사진.
   * @param memberVo 거래 게시판 작성한 회원 정보.
   */

  public TradePostVo(Integer tradeNo, String tradeKind, Integer tradeHits, String tradeTitle,
      String tradeContent, String tradePhoto, MemberVo memberVo) {
    super();
    this.tradeNo = tradeNo;
    this.tradeKind = tradeKind;
    this.tradeHits = tradeHits;
    this.tradeTitle = tradeTitle;
    this.tradeContent = tradeContent;
    this.tradePhoto = tradePhoto;
    this.memberVo = memberVo;
  }

  public Integer getTradeNo() {
    return tradeNo;
  }

  public void setTradeNo(Integer tradeNo) {
    this.tradeNo = tradeNo;
  }

  public String getTradeKind() {
    return tradeKind;
  }

  public void setTradeKind(String tradeKind) {
    this.tradeKind = tradeKind;
  }

  public Integer getTradeHits() {
    return tradeHits;
  }

  public void setTradeHits(Integer tradeHits) {
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

  public MemberVo getMemberVo() {
    return memberVo;
  }

  public void setMemberVo(MemberVo memberVo) {
    this.memberVo = memberVo;
  }

  @Override
  public String toString() {
    return "TradePostVo [tradeNo=" + tradeNo + ", tradeKind=" + tradeKind + ", tradeHits="
        + tradeHits + ", tradeTitle=" + tradeTitle + ", tradeContent=" + tradeContent
        + ", tradePhoto=" + tradePhoto + ", memberVo=" + memberVo + "]";
  }


}
