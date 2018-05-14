package org.spider.batassugi.model.vo.seller;

import java.util.Date;
import java.util.List;
import org.spider.batassugi.model.vo.common.CropsVo;

public class FarmVo {

  private Integer farmNo;
  private String id;
  private Integer farmSize;
  private String farmAddress;
  private Date farmStartdate;
  private Date farmEnddate;
  private List<CropsVo> cropsVo;

  public FarmVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 여기다 설명 쓰세요.
   * 
   * @param farmNo 여기다 설명 쓰세요.
   * @param id 여기다 설명 쓰세요.
   * @param farmSize 여기다 설명 쓰세요.
   * @param farmAddress 여기다 설명 쓰세요.
   * @param farmStartdate 여기다 설명 쓰세요.
   * @param farmEnddate 여기다 설명 쓰세요.
   * @param cropsVo 여기다 설명 쓰세요.
   */
  public FarmVo(Integer farmNo, String id, Integer farmSize, String farmAddress, Date farmStartdate,
      Date farmEnddate, List<CropsVo> cropsVo) {
    super();
    this.farmNo = farmNo;
    this.id = id;
    this.farmSize = farmSize;
    this.farmAddress = farmAddress;
    this.farmStartdate = farmStartdate;
    this.farmEnddate = farmEnddate;
    this.cropsVo = cropsVo;
  }

  public Integer getFarmNo() {
    return farmNo;
  }

  public void setFarmNo(Integer farmNo) {
    this.farmNo = farmNo;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public Integer getFarmSize() {
    return farmSize;
  }

  public void setFarmSize(Integer farmSize) {
    this.farmSize = farmSize;
  }

  public String getFarmAddress() {
    return farmAddress;
  }

  public void setFarmAddress(String farmAddress) {
    this.farmAddress = farmAddress;
  }

  public Date getFarmStartdate() {
    return farmStartdate;
  }

  public void setFarmStartdate(Date farmStartdate) {
    this.farmStartdate = farmStartdate;
  }

  public Date getFarmEnddate() {
    return farmEnddate;
  }

  public void setFarmEnddate(Date farmEnddate) {
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
    return "FarmVo [farmNo=" + farmNo + ", id=" + id + ", farmSize=" + farmSize + ", farmAddress="
        + farmAddress + ", farmStartdate=" + farmStartdate + ", farmEnddate=" + farmEnddate
        + ", cropsVo=" + cropsVo + "]";
  }


}
