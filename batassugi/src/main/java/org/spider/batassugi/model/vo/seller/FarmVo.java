package org.spider.batassugi.model.vo.seller;

import java.util.List;
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
  private String id;
  private MemberInfoVo memberInfoVo;
  private int farmSize;
  private String farmAddress;
  private String farmStartdate;
  private String farmEnddate;
  private List<String> cropsname;
  
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
   * @param cropsname 농작물 정보를 가져오는 cropsname
   */

  public FarmVo(int farmNo,String id, MemberInfoVo memberInfoVo, int farmSize, String farmAddress, String farmStartdate,
      String farmEnddate, List<String> cropsname) {
    super();
    this.farmNo = farmNo;
    this.id=id;
    this.memberInfoVo = memberInfoVo;
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.cropsname = cropsname;
  }
  
  public FarmVo(int farmSize, String farmAddress, String farmStartdate, String farmEnddate) {
    super();
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
  }
  public FarmVo(int farmSize, String farmAddress, String farmStartdate, String farmEnddate , List<String> cropsname) {
    super();
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.cropsname = cropsname;
  }
public FarmVo() {
  super();
  // TODO Auto-generated constructor stub
}


public String getId() {
  return id;
}

public void setId(String id) {
  this.id = id;
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

public void setMemberInfoVo(MemberInfoVo memberInfoVo) {
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

public List<String> getcropsname() {
  return cropsname;
}

public void setcropsname(List<String> cropsname) {
  this.cropsname = cropsname;
}

@Override
public String toString() {
  return "FarmVo [farmNo=" + farmNo + ", memberInfoVo=" + memberInfoVo + ", farmSize=" + farmSize
      + ", farmAddress=" + farmAddress + ", farmStartdate=" + farmStartdate + ", farmEnddate="
      + farmEnddate + ", cropsname=" + cropsname + "]";
}


}
