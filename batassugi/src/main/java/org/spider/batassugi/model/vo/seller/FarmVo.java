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
  private List<CropsVo> cropsVo;

  public FarmVo() {
    super();
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
   * @param cropsVo 농작물 정보를 가져오는 cropsVo
   */
  public FarmVo(int farmNo, MemberInfoVo memberInfoVo, int farmSize, String farmAddress,
      String farmStartdate, String farmEnddate, List<CropsVo> cropsVo) {
    super();
    this.farmNo = farmNo;
    this.memberInfoVo = memberInfoVo;
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
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

  public String getFarmAddress() {
    return farmAddress;
  }

  public void setFarmAddress(String farmAddress) {
    this.farmAddress = farmAddress;
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

  public List<CropsVo> getCropsVo() {
    return cropsVo;
  }

  public void setCropsVo(List<CropsVo> cropsVo) {
    this.cropsVo = cropsVo;
  }

  @Override
  public String toString() {
    return "FarmVo [farmNo=" + farmNo + ", MemberVo=" + memberInfoVo + ", farmSize=" + farmSize
        + ", farmAddress=" + farmAddress + ", farmStartdate=" + farmStartdate + ", farmEnddate="
        + farmEnddate + ", cropsVo=" + cropsVo + "]";
  }

}
