package org.spider.batassugi.model.vo.buyer;

import java.util.Date;

public class TradeCommentVo {
  private Integer replyNo;
  private Integer parentReply;
  private String id;
  private Date replyRegdate;
  private Integer tradeNo;
  private String replyComment;

  public TradeCommentVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 코멘트 게시판.
   * 
   * @param replyNo 넣어주세요.
   * @param parentReply 넣어주세요.
   * @param id 넣어주세요. 
   * @param replyRegdate 넣어주세요.
   * @param tradeNo 넣어주세요.
   * @param replyComment 넣어주세요.
   */
  public TradeCommentVo(Integer replyNo, Integer parentReply, String id, Date replyRegdate,
      Integer tradeNo, String replyComment) {
    super();
    this.replyNo = replyNo;
    this.parentReply = parentReply;
    this.id = id;
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

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public Date getReplyRegdate() {
    return replyRegdate;
  }

  public void setReplyRegdate(Date replyRegdate) {
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
    return "TradeCommentVo [replyNo=" + replyNo + ", parentReply=" + parentReply + ", id=" + id
        + ", replyRegdate=" + replyRegdate + ", tradeNo=" + tradeNo + ", replyComment="
        + replyComment + "]";
  }

}
