package org.spider.batassugi.model.vo.common;

/**
 * 일정 데이터를 저장하는 Vo클래스 입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.common
 * @filename : ScheduleVo.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 28.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 28.  "PM KimYoungHo"    최초작성
 *      </pre>
 */
public class ScheduleVo {
  private String scheduleNo;
  private String rentNo;
  private String scheduleStartdate;
  private String scheduleEnddate;
  private String scheduleTitle;
  private String scheduleContent;
  private String auth;

  public ScheduleVo() {
    super();
  }

  /**
   * 생성자입니다.
   * 
   * @param scheduleNo 일정번호입니다.
   * @param rentNo 대여번호입니다.
   * @param scheduleStartdate 일정시작날짜입니다.
   * @param scheduleEnddate 일정종료날짜입니다.
   * @param scheduleTitle 일정제목입니다.
   * @param scheduleContent 일정내용입니다.
   */
  public ScheduleVo(String scheduleNo, String rentNo, String scheduleStartdate,
      String scheduleEnddate, String scheduleTitle, String scheduleContent) {
    super();
    this.scheduleNo = scheduleNo;
    this.rentNo = rentNo;
    this.scheduleStartdate = scheduleStartdate;
    this.scheduleEnddate = scheduleEnddate;
    this.scheduleTitle = scheduleTitle;
    this.scheduleContent = scheduleContent;
  }

  /**
   * auth 포함 생성자.
   * 
   * @param scheduleNo 일정번호.
   * @param rentNo 대여번호.
   * @param scheduleStartdate 일정시작날짜.
   * @param scheduleEnddate 일정종료날짜.
   * @param scheduleTitle 일정제목.
   * @param scheduleContent 일정내용.
   * @param auth 등록한 사람의 권한.
   */
  public ScheduleVo(String scheduleNo, String rentNo, String scheduleStartdate,
      String scheduleEnddate, String scheduleTitle, String scheduleContent, String auth) {
    super();
    this.scheduleNo = scheduleNo;
    this.rentNo = rentNo;
    this.scheduleStartdate = scheduleStartdate;
    this.scheduleEnddate = scheduleEnddate;
    this.scheduleTitle = scheduleTitle;
    this.scheduleContent = scheduleContent;
    this.auth = auth;
  }

  public String getScheduleNo() {
    return scheduleNo;
  }

  public void setScheduleNo(String scheduleNo) {
    this.scheduleNo = scheduleNo;
  }

  public String getRentNo() {
    return rentNo;
  }

  public void setRentNo(String rentNo) {
    this.rentNo = rentNo;
  }

  public String getScheduleStartdate() {
    return scheduleStartdate;
  }

  public void setScheduleStartdate(String scheduleStartdate) {
    this.scheduleStartdate = scheduleStartdate;
  }

  public String getScheduleEnddate() {
    return scheduleEnddate;
  }

  public void setScheduleEnddate(String scheduleEnddate) {
    this.scheduleEnddate = scheduleEnddate;
  }

  public String getScheduleTitle() {
    return scheduleTitle;
  }

  public void setScheduleTitle(String scheduleTitle) {
    this.scheduleTitle = scheduleTitle;
  }

  public String getScheduleContent() {
    return scheduleContent;
  }

  public void setScheduleContent(String scheduleContent) {
    this.scheduleContent = scheduleContent;
  }

  public String getAuth() {
    return auth;
  }

  public void setAuth(String auth) {
    this.auth = auth;
  }

  @Override
  public String toString() {
    return "ScheduleVo [scheduleNo=" + scheduleNo + ", rentNo=" + rentNo + ", scheduleStartdate="
        + scheduleStartdate + ", scheduleEnddate=" + scheduleEnddate + ", scheduleTitle="
        + scheduleTitle + ", scheduleContent=" + scheduleContent + ", auth=" + auth + "]";
  }
}
