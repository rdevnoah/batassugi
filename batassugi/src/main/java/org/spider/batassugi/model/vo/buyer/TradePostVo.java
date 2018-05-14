package org.spider.batassugi.model.vo.buyer;

import org.spider.batassugi.model.vo.common.MemberVo;

/**
 * 클래스 설명 : 반드시 마침표를 찍습니다.
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
   * 여기 서머리.
   * 
   * @param tradeNo 파람설명.
   * @param tradeKind 파람설명.
   * @param tradeHits 파람설명.
   * @param tradeTitle 파람설명.
   * @param tradeContent 파람설명.
   * @param tradePhoto 파람설명.
   * @param memberVo 파람설명.
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
