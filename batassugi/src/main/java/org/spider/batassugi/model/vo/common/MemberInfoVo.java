package org.spider.batassugi.model.vo.common;

import java.util.Date;
import java.util.List;
import org.springframework.web.multipart.MultipartFile;

/**
 * 반드시 마침표를 찍습니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.common
 * @filename : MemberInfoVo.java
 * @author : "PL_Seonhwa"
 * @since : 2018. 5. 15.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "PL_Seonhwa"    최초작성
 * 2018. 5. 15.  "PL_Seonhwa"    파일업로드를 위한 변수 file, image 추가
 *                               회원에게서 받아오는 날짜 변수 birthday(date->String 변경)
 * </pre>
 */
public class MemberInfoVo {
  private MemberVo memberVo;
  private String email;
  private String tel;
  private String address;
  private String birthday;
  private String gender;
  private Date regdate;
  private String image;
  private List<CropsVo> likeCrops;
  private MultipartFile file;

  public MemberInfoVo() {
    super();
  }

  /**
   * 회원등록 및 부가 정보를 저장하는 VO.
   * 
   * @author "PL_Seonhwa"
   * @param memberVo 사용자의 기본 회원정보.
   * @param email 사용자 이메일 정보.
   * @param tel 사용자 전화번호.
   * @param address 사용자 주소.
   * @param birthday 사용자 생년월일.
   * @param gender 사용자 성별.
   * @param regdate 사용자 등록일.
   * @param image 사용자 프로필이미지.
   * @param likeCrops 사용자 기호 작물.
   * @param file 사용자 프로필 이미지 업로드시 사용할 파일객체.
   */
  public MemberInfoVo(MemberVo memberVo, String email, String tel, String address, String birthday,
      String gender, Date regdate, String image, List<CropsVo> likeCrops, MultipartFile file) {
    super();
    this.memberVo = memberVo;
    this.email = email;
    this.tel = tel;
    this.address = address;
    this.birthday = birthday;
    this.gender = gender;
    this.regdate = regdate;
    this.image = image;
    this.likeCrops = likeCrops;
    this.file = file;
  }

  public MemberVo getMemberVo() {
    return memberVo;
  }

  public void setMemberVo(MemberVo memberVo) {
    this.memberVo = memberVo;
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

  public String getBirthday() {
    return birthday;
  }

  public void setBirthday(String birthday) {
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

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public List<CropsVo> getLikeCrops() {
    return likeCrops;
  }

  public void setLikeCrops(List<CropsVo> likeCrops) {
    this.likeCrops = likeCrops;
  }

  public MultipartFile getFile() {
    return file;
  }

  public void setFile(MultipartFile file) {
    this.file = file;
  }

  @Override
  public String toString() {
    return "MemberInfoVo [memberVo=" + memberVo + ", email=" + email + ", tel=" + tel + ", address="
        + address + ", birthday=" + birthday + ", gender=" + gender + ", regdate=" + regdate
        + ", image=" + image + ", likeCrops=" + likeCrops + ", file=" + file + "]";
  }


}
