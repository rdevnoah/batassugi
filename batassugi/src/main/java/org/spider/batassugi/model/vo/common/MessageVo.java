package org.spider.batassugi.model.vo.common;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.common
 * @filename : MessageVo.java
 * @author : "PL_Seonhwa"
 * @since : 2018. 5. 23.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 23.  "PL_Seonhwa"    최초작성
 *      </pre>
 */
public class MessageVo {
  private String messageNo;
  private String receiverId;
  private String messageTitle;
  private String messageContents;
  private String senderDate;
  private String readDate;
  private String senderDelete;
  private String receiverDelete;
  private String senderId;
  private String receiverNickname;

  public MessageVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 여기에 설명을 쓰시오.
   * 
   * @author "PL_Seonhwa"
   * @param messageNo
   * @param receiverId
   * @param messageTitle
   * @param messageContents
   * @param senderDate
   * @param readDate
   * @param senderDelete
   * @param receiverDelete
   * @param senderId
   * @param receiverNickname
   */
  public MessageVo(String messageNo, String receiverId, String messageTitle, String messageContents,
      String senderDate, String readDate, String senderDelete, String receiverDelete,
      String senderId, String receiverNickname) {
    super();
    this.messageNo = messageNo;
    this.receiverId = receiverId;
    this.messageTitle = messageTitle;
    this.messageContents = messageContents;
    this.senderDate = senderDate;
    this.readDate = readDate;
    this.senderDelete = senderDelete;
    this.receiverDelete = receiverDelete;
    this.senderId = senderId;
    this.receiverNickname = receiverNickname;
  }

  
  public String getReceiverNickname() {
    return receiverNickname;
  }

  public void setReceiverNickname(String receiverNickname) {
    this.receiverNickname = receiverNickname;
  }

  public String getMessageNo() {
    return messageNo;
  }

  public void setMessageNo(String messageNo) {
    this.messageNo = messageNo;
  }

  public String getReceiverId() {
    return receiverId;
  }

  public void setReceiverId(String receiverId) {
    this.receiverId = receiverId;
  }

  public String getMessageTitle() {
    return messageTitle;
  }

  public void setMessageTitle(String messageTitle) {
    this.messageTitle = messageTitle;
  }

  public String getMessageContents() {
    return messageContents;
  }

  public void setMessageContents(String messageContents) {
    this.messageContents = messageContents;
  }

  public String getSenderDate() {
    return senderDate;
  }

  public void setSenderDate(String senderDate) {
    this.senderDate = senderDate;
  }

  public String getReadDate() {
    return readDate;
  }

  public void setReadDate(String readDate) {
    this.readDate = readDate;
  }

  public String getSenderDelete() {
    return senderDelete;
  }

  public void setSenderDelete(String senderDelete) {
    this.senderDelete = senderDelete;
  }

  public String getReceiverDelete() {
    return receiverDelete;
  }

  public void setReceiverDelete(String receiverDelete) {
    this.receiverDelete = receiverDelete;
  }

  public String getSenderId() {
    return senderId;
  }

  public void setSenderId(String senderId) {
    this.senderId = senderId;
  }

  @Override
  public String toString() {
    return "MessageVo [messageNo=" + messageNo + ", receiverId=" + receiverId + ", messageTitle="
        + messageTitle + ", messageContents=" + messageContents + ", senderDate=" + senderDate
        + ", readDate=" + readDate + ", senderDelete=" + senderDelete + ", receiverDelete="
        + receiverDelete + ", senderId=" + senderId + ", receiverNickname=" + receiverNickname
        + "]";
  }
}
