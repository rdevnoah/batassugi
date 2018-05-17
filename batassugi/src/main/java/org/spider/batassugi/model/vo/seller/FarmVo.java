package org.spider.batassugi.model.vo.seller;

import java.util.List;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;

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
 * 2018. 5. 14.  "GL_SangKyoung"    최초작성
 * 
 *      </pre>
 */
public class FarmVo {

  private int farmNo;
  private MemberInfoVo memberInfoVo;
  private String id;
  private int farmSize;
  private String farmAddress;
  private String farmStartdate;
  private String farmEnddate;
  private List<String> cropsName;
  private List<CropsVo> cropsVo;

  public FarmVo(int farmSize, String farmAddress, String farmStartdate, String farmEnddate) {
    super();
  }
  
  /**
   * 농지정보 및 농작물 정보를 가져오는 생성자.
   * 
   * @author "GL_SangKyoung"
   * @param farmNo 농지번호.
   * @param memberInfoVo 회원 아이디
   * @param farmSize 농지사이즈.
   * @param farmAddress 농지주소.
   * @param farmStartdate 농지등록날짜.
   * @param farmEnddate 농지계약종료날짜.
   * @param cropsName 농작물 정보를 가져오는 cropsName
   */
  public FarmVo(int farmNo, MemberInfoVo memberInfoVo, int farmSize, String farmAddress,
      String farmStartdate, String farmEnddate, List<String> cropsName) {
    super();
    this.farmNo = farmNo;
    this.memberInfoVo = memberInfoVo;
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.cropsName = cropsName;

  }

  /**
   * 기존 생성자.
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
    this.id = id;
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.cropsVo = cropsVo;
  }

  /**
   * 생성자 오버로딩.
   * @param farmSize 밭크기.
   * @param farmAddress 밭주소.
   * @param farmStartdate 밭등록일.
   * @param farmEnddate 밭등록마감일.
   * @param cropsName 작물이름.
   */
  public FarmVo(int farmSize, String farmAddress, String farmStartdate, String farmEnddate,
      List<String> cropsName) {
    super();
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.cropsName = cropsName;
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

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
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
    // TODO Auto-generated constructor stub
  }

  public MemberInfoVo getMemberInfoVo() {
    return memberInfoVo;
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


  public List<String> getCropsName() {
    return cropsName;
  }

  public void setCropsName(List<String> cropsName) {
    this.cropsName = cropsName;
  }

  @Override
  public String toString() {
    return "FarmVo [farmNo=" + farmNo + ", memberInfoVo=" + memberInfoVo + ", id=" + id
        + ", farmSize=" + farmSize + ", farmAddress=" + farmAddress + ", farmStartdate="
        + farmStartdate + ", farmEnddate=" + farmEnddate + ", cropsName=" + cropsName + ", cropsVo="
        + cropsVo + "]";
  }

  

}
