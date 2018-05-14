package org.spider.batassugi.model.vo.common;

public class MemberVo {
  private String id;
  private String password;
  private String name;
  private String nickname;
  private String level;
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
   * @param level 회원 레벨. 레벨1 -초급, 레벨2 - 중급, 레벨3 - 고급, 레벨4 - 농부, 레벨5 - 관리자.
   * @param state 멤버 상태.
   * @param stopdate 정지 멤버일 경우 정지 날짜
   */
  public MemberVo(String id, String password, String name, String nickname, String level,
      String state, String stopdate) {
    super();
    this.id = id;
    this.password = password;
    this.name = name;
    this.nickname = nickname;
    this.level = level;
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

  public String getLevel() {
    return level;
  }

  public void setLevel(String level) {
    this.level = level;
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
        + nickname + ", level=" + level + ", state=" + state + ", stopdate=" + stopdate + "]";
  }



}
