package org.spider.batassugi.model.vo.seller;

import java.util.List;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.springframework.web.multipart.MultipartFile;

/**
 * 농지정보VO 입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.vo.seller
 * @filename : FarmVo.java
 * @author : "GL_SangKyoung"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14. "GL_SangKyoung"  최초작성
 * 2018. 5. 16  "SL SangUk Lee"  id를 제거하고 memberInfoVo 추가(has a)
 * 
 *      </pre>
 */
public class FarmVo {

  private int farmNo;
  private MemberInfoVo memberInfoVo;
  private int farmSize;
  private String farmAddress;
  private String farmStartdate;
  private String farmEnddate;
  private String image;
  private List<String> cropsNo;
  private List<CropsVo> cropsVo;
  private List<String> labels;
  private MultipartFile file;

  public FarmVo(int farmSize, String farmAddress, String farmStartdate, String farmEnddate) {
    super();
  }

  /**
   * 생성자 오버로딩입니다.
   * 
   * @param farmNo 농지번호.
   * @param memberInfoVo 사용자 상세정보 객체.
   * @param farmSize 농지 크기.
   * @param farmAddress 농지 주소.
   * @param farmStartdate 농지 등록일.
   * @param farmEnddate 농지 등록 만료일.
   * @param image 농지 사진.
   * @param cropsNo 농지 재배 가능 작물 이름 객체.
   * @param cropsVo 농지 재배 가능 작물 객체.
   * @param labels 농지 상태 라벨 저장.
   * @param file 파일 객체.
   */
  public FarmVo(int farmNo, MemberInfoVo memberInfoVo, int farmSize, String farmAddress,
      String farmStartdate, String farmEnddate, String image, List<String> cropsNo,
      List<CropsVo> cropsVo, List<String> labels, MultipartFile file) {
    super();
    this.farmNo = farmNo;
    this.memberInfoVo = memberInfoVo;
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.image = image;
    this.cropsNo = cropsNo;
    this.cropsVo = cropsVo;
    this.labels = labels;
    this.file = file;
  }

  /**
   * 생성자 오버로딩.
   * 
   * @param farmNo 농지번호.
   * @param memberInfoVo 멤버정보.
   * @param farmSize 농지크기.
   * @param farmAddress 농지주소.
   * @param farmStartdate 농지 등록일.
   * @param farmEnddate 농지 등록 마감일.
   */
  public FarmVo(int farmNo, MemberInfoVo memberInfoVo, int farmSize, String farmAddress,
      String farmStartdate, String farmEnddate) {
    super();
    this.farmNo = farmNo;
    this.memberInfoVo = memberInfoVo;
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
  }

  /**
   * 농지정보 및 농작물 정보를 가져오는 생성자.
   * 
   * @author "GL_SangKyoung"
   * @param farmNo 농지번호.
   * @param memberInfoVo 회원정보가 담겨있는 객체.
   * @param farmSize 농지사이즈.
   * @param farmAddress 농지주소.
   * @param farmStartdate 농지등록날짜.
   * @param farmEnddate 농지계약종료날짜.
   * @param cropsNo 농작물 정보를 가져오는 cropsNo.
   */
  public FarmVo(int farmNo, MemberInfoVo memberInfoVo, int farmSize, String farmAddress,
      String farmEnddate, List<String> cropsNo, String farmStartdate, List<CropsVo> cropsVo) {
    super();
    this.farmNo = farmNo;
    this.memberInfoVo = memberInfoVo;
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.cropsNo = cropsNo;

  }

  /**
   * 기존 생성자.
   * 
   * @param farmNo 농지번호.
   * @param id 아이디.
   * @param farmSize 농지크기.
   * @param farmAddress 농지주소.
   * @param farmStartdate 농지등록일.
   * @param farmEnddate 농지등록마감일.
   * @param cropsVo 재배가능작물리스트.
   */
  public FarmVo(int farmNo, String id, int farmSize, String farmAddress, String farmStartdate,
      String farmEnddate, List<CropsVo> cropsVo) {
    this.farmNo = farmNo;
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.cropsVo = cropsVo;
  }

  /**
   * 생성자 오버로딩.
   * 
   * @param farmSize 밭크기.
   * @param farmAddress 밭주소.
   * @param farmStartdate 밭등록일.
   * @param farmEnddate 밭등록마감일.
   * @param cropsNo 작물번호.
   */
  public FarmVo(int farmSize, String farmAddress, String farmStartdate, String farmEnddate,
      List<String> cropsNo) {
    super();
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.cropsNo = cropsNo;
  }

  public List<CropsVo> getCropsVo() {
    return cropsVo;
  }

  public void setCropsVo(List<CropsVo> cropsVo) {
    this.cropsVo = cropsVo;
  }

  public int getFarmNo() {
    return farmNo;
  }

  public void setFarmNo(int farmNo) {
    this.farmNo = farmNo;
  }

  public MemberInfoVo getMemberInfoVo() {
    return memberInfoVo;
  }

  public void setMemberVo(MemberInfoVo memberInfoVo) {
    this.memberInfoVo = memberInfoVo;
  }

  public int getFarmSize() {
    return farmSize;
  }

  public void setFarmSize(int farmSize) {
    this.farmSize = farmSize;
  }

  public String getFarmStartdate() {
    return farmStartdate;
  }

  public void setFarmStartdate(String farmStartdate) {
    this.farmStartdate = farmStartdate;
  }

  public String getFarmEnddate() {
    return farmEnddate;
  }

  public void setFarmEnddate(String farmEnddate) {
    this.farmEnddate = farmEnddate;
  }

  public FarmVo() {
    super();
  }

  public void setMemberInfoVo(MemberInfoVo memberInfoVo) {
    this.memberInfoVo = memberInfoVo;
  }

  public String getFarmAddress() {
    return farmAddress;
  }

  public void setFarmAddress(String farmAddress) {
    this.farmAddress = farmAddress;
  }

  public List<String> getCropsNo() {
    return cropsNo;
  }

  public void setCropsNo(List<String> cropsNo) {
    this.cropsNo = cropsNo;
  }

  public List<String> getLabels() {
    return labels;
  }

  public void setLabels(List<String> labels) {
    this.labels = labels;
  }

  public String getImage() {
    return image;
  }

  public void setImage(String image) {
    this.image = image;
  }

  public MultipartFile getFile() {
    return file;
  }

  public void setFile(MultipartFile file) {
    this.file = file;
  }

  @Override
  public String toString() {
    return "FarmVo [farmNo=" + farmNo + ", memberInfoVo=" + memberInfoVo + ", farmSize=" + farmSize
        + ", farmAddress=" + farmAddress + ", farmStartdate=" + farmStartdate + ", farmEnddate="
        + farmEnddate + ", cropsNo=" + cropsNo + ", cropsVo=" + cropsVo + "]";
  }

}
