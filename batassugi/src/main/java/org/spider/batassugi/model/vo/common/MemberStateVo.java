package org.spider.batassugi.model.vo.common;

/**
 * 회원 상태를 기록하기 위한 Vo.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.common
 * @filename : MemberStateVo.java
 * @author : "PL_Seonhwa"
 * @since : 2018. 5. 17.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 17.  "PL_Seonhwa"    최초작성
 * </pre>
 */
public class MemberStateVo {
  private String stateNumber;
  private String stateSet;
  private String stopdate;
  public MemberStateVo() {
    super();
    // TODO Auto-generated constructor stub
  }
  /**
   * 회원 상태 등록.
   * 
   * @author "PL_Seonhwa"
   * @param stateNumber 회원 상태 번호.
   * @param stateSet 회원 상태명. 활동, 중지, 탈퇴
   * @param stopdate 회원 정지 날짜(신고로 인해 중지 당했을 시)
   */
  public MemberStateVo(String stateNumber, String stateSet, String stopdate) {
    super();
    this.stateNumber = stateNumber;
    this.stateSet = stateSet;
    this.stopdate = stopdate;
  }
  public String getStateNumber() {
    return stateNumber;
  }
  public void setStateNumber(String stateNumber) {
    this.stateNumber = stateNumber;
  }
  public String getStateSet() {
    return stateSet;
  }
  public void setStateSet(String stateSet) {
    this.stateSet = stateSet;
  }
  public String getStopdate() {
    return stopdate;
  }
  public void setStopdate(String stopdate) {
    this.stopdate = stopdate;
  }
  @Override
  public String toString() {
    return "MemberStateVo [stateNumber=" + stateNumber + ", stateSet=" + stateSet + ", stopdate="
        + stopdate + "]";
  }  
}
