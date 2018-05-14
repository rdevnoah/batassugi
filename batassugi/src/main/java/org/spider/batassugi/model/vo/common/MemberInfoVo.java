package org.spider.batassugi.model.vo.common;

import java.util.Date;
import java.util.List;

public class MemberInfoVo {
  private String id;
  private String email;
  private String tel;
  private String address;
  private Date birthday;
  private String gender;
  private Date regdate;
  private List<CropsVo> likeCrops;

  public MemberInfoVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 멤버 부가정보.
   * 
   * @param id 회원 아이디.
   * @param email 회원 이메일.
   * @param tel 회원 전화번호.
   * @param address 회원 주소.
   * @param birthday 회원 생일.
   * @param gender 회원 성별.
   * @param regdate 회원 가입일.
   * @param likeCrops 회원 기호 작물.
   */
  public MemberInfoVo(String id, String email, String tel, String address, Date birthday,
      String gender, Date regdate, List<CropsVo> likeCrops) {
    super();
    this.id = id;
    this.email = email;
    this.tel = tel;
    this.address = address;
    this.birthday = birthday;
    this.gender = gender;
    this.regdate = regdate;
    this.likeCrops = likeCrops;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getTel() {
    return tel;
  }

  public void setTel(String tel) {
    this.tel = tel;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public Date getBirthday() {
    return birthday;
  }

  public void setBirthday(Date birthday) {
    this.birthday = birthday;
  }

  public String getGender() {
    return gender;
  }

  public void setGender(String gender) {
    this.gender = gender;
  }

  public Date getRegdate() {
    return regdate;
  }

  public void setRegdate(Date regdate) {
    this.regdate = regdate;
  }

  public List<CropsVo> getLikeCrops() {
    return likeCrops;
  }

  public void setLikeCrops(List<CropsVo> likeCrops) {
    this.likeCrops = likeCrops;
  }

  @Override
  public String toString() {
    return "MemberInfoVo [id=" + id + ", email=" + email + ", tel=" + tel + ", address=" + address
        + ", birthday=" + birthday + ", gender=" + gender + ", regdate=" + regdate + ", likeCrops="
        + likeCrops + "]";
  }



}
