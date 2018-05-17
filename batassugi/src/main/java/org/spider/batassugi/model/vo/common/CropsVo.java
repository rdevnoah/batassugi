package org.spider.batassugi.model.vo.common;

public class CropsVo {
  private int cropsNo;
  private String cropsName;
  private String cropsLevel;
  
  

  public CropsVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  public CropsVo(int cropsNo, String cropsName, String cropsLevel) {
    super();
    this.cropsNo = cropsNo;
    this.cropsName = cropsName;
    this.cropsLevel = cropsLevel;
  }

  public int getCropsNo() {
    return cropsNo;
  }

  public void setCropsNo(int cropsNo) {
    this.cropsNo = cropsNo;
  }

  public String getCropsName() {
    return cropsName;
  }

  public void setCropsName(String cropsName) {
    this.cropsName = cropsName;
  }

  public String getCropsLevel() {
    return cropsLevel;
  }

  public void setCropsLevel(String cropsLevel) {
    this.cropsLevel = cropsLevel;
  }

  @Override
  public String toString() {
    return "CropsVo [cropsNo=" + cropsNo + ", cropsName=" + cropsName + ", cropsLevel=" + cropsLevel
        + "]";
  }


}
