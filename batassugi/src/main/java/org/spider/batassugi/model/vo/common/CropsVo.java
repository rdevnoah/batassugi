package org.spider.batassugi.model.vo.common;

public class CropsVo {

  private String cropsNo;
  private String cropsName;
  private String cropsLevel;



  public CropsVo() {
    super();
  }


  /**
   * 메소드 설명 : 작물 기본 정보 VO.
   * 
   * @param cropsNo 작물 번호.
   * @param cropsName 작물이름.
   * @param cropsLevel 작물 난이도.
   */
  public CropsVo(String cropsNo, String cropsName, String cropsLevel) {
    super();
    this.cropsNo = cropsNo;
    this.cropsName = cropsName;
    this.cropsLevel = cropsLevel;
  }
  
  


  public CropsVo(String cropsNo) {
    super();
    this.cropsNo = cropsNo;
  }


  public String getCropsNo() {
    return cropsNo;
  }

  public void setCropsNo(String cropsNo) {
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
