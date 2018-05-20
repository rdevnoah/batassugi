package org.spider.batassugi.model.vo.common;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.common
 * @filename : MemberVo.java
 * @author : "PL_Seonhwa"
 * @since : 2018. 5. 15.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 15.  "PL_Seonhwa"    최초작성
 *      </pre>
 */
public class MemberVo {
  private String id;
  private String password;
  private String name;
  private String nickname;
  private String memberLevel;
  private String state;
  private String stopdate;

  public MemberVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 메소드 설명 : 회원 기본정보를 가지고 있는 VO.
   * 
   * @param id 회원 아이디.
   * @param password 회원패스워드.
   * @param name 회원이름.
   * @param nickname 회원닉네임.
   * @param memberLevel 회원 레벨. 레벨1 -초급, 레벨2 - 중급, 레벨3 - 고급, 레벨4 - 농부, 레벨5 - 관리자.
   * @param state 
   * @param stopdate 
   */
  public MemberVo(String id, String password, String name, String nickname, String memberLevel, String state, String stopdate) {
    super();
    this.id = id;
    this.password = password;
    this.name = name;
    this.nickname = nickname;
    this.memberLevel = memberLevel;
    this.state = state;
    this.stopdate = stopdate;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getNickname() {
    return nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public String getmemberLevel() {
    return memberLevel;
  }

  public void setmemberLevel(String memberLevel) {
    this.memberLevel = memberLevel;
  }

  public String getState() {
    return state;
  }

  public void setState(String state) {
    this.state = state;
  }

  public String getStopdate() {
    return stopdate;
  }

  public void setStopdate(String stopdate) {
    this.stopdate = stopdate;
  }

  @Override
  public String toString() {
    return "MemberVo [id=" + id + ", password=" + password + ", name=" + name + ", nickname="
        + nickname + ", memberLevel=" + memberLevel + ", state=" + state + ", stopdate=" + stopdate
        + "]";

  }


}


