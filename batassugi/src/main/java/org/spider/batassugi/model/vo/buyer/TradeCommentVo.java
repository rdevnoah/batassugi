package org.spider.batassugi.model.vo.buyer;

import org.spider.batassugi.model.vo.common.MemberVo;

/**
 * 구매자가 거래 게시판 작성한 거래글 댓글을 저장하는 클래스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.buyer
 * @filename : TradeCommentVo.java
 * @author : "SM HyeonGil Kim"
 * @since : 2018. 5. 18.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 18.  "SM HyeonGil Kim"    최초작성
 *      </pre>
 */

public class TradeCommentVo {
  private Integer replyNo;
  private Integer parentReply;
  private MemberVo memberVo;
  private String replyRegdate;
  private Integer tradeNo;
  private String replyComment;

  public TradeCommentVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 댓글 정보.
   * 
   * @author "SM HyeonGil Kim"
   * @param replyNo 댓글 번호.
   * @param parentReply 댓글 부모.
   * @param memberVo 거래 게시판에 댓글작성한 회원 정보.
   * @param replyRegdate 댓글 작성 날짜.
   * @param tradeNo 거래 게시판 번호.
   * @param replyComment 댓글 내용.
   */

  public TradeCommentVo(Integer replyNo, Integer parentReply, MemberVo memberVo,
      String replyRegdate, Integer tradeNo, String replyComment) {
    super();
    this.replyNo = replyNo;
    this.parentReply = parentReply;
    this.memberVo = memberVo;
    this.replyRegdate = replyRegdate;
    this.tradeNo = tradeNo;
    this.replyComment = replyComment;
  }

  public Integer getReplyNo() {
    return replyNo;
  }

  public void setReplyNo(Integer replyNo) {
    this.replyNo = replyNo;
  }

  public Integer getParentReply() {
    return parentReply;
  }

  public void setParentReply(Integer parentReply) {
    this.parentReply = parentReply;
  }

  public MemberVo getMemberVo() {
    return memberVo;
  }

  public void setMemberVo(MemberVo memberVo) {
    this.memberVo = memberVo;
  }

  public String getReplyRegdate() {
    return replyRegdate;
  }

  public void setReplyRegdate(String replyRegdate) {
    this.replyRegdate = replyRegdate;
  }

  public Integer getTradeNo() {
    return tradeNo;
  }

  public void setTradeNo(Integer tradeNo) {
    this.tradeNo = tradeNo;
  }

  public String getReplyComment() {
    return replyComment;
  }

  public void setReplyComment(String replyComment) {
    this.replyComment = replyComment;
  }

  @Override
  public String toString() {
    return "TradeCommentVo [replyNo=" + replyNo + ", parentReply=" + parentReply + ", memberVo="
        + memberVo + ", replyRegdate=" + replyRegdate + ", tradeNo=" + tradeNo + ", replyComment="
        + replyComment + "]";
  }

}
