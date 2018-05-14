package org.spider.batassugi.model.vo.common;

public class CropsInfoVo {
  private CropsVo cropsVo;
  private String cropsProfileimg;
  private String cropsImg1;
  private String cropsImg2;
  private String cropsImg3;
  private String cropsSeason;
  private String cropsMethod;
  private String cropsCondition;
  private String cropsIcon;
  private String cropsFood;

  public CropsInfoVo() {
    super();
    // TODO Auto-generated constructor stub
  }

  /**
   * 메소드 설명 : 작물부가정보VO.
   * 
   * @param cropsVo 작물 기본정보VO.
   * @param cropsProfileimg 작물 프로파일이미지.
   * @param cropsImg1 작물이미지1.
   * @param cropsImg2 작물이미지2.
   * @param cropsImg3 작물이미지3.
   * @param cropsSeason 작물수확기간.
   * @param cropsMethod 작물수확방법.
   * @param cropsCondition 작물수확조건.
   * @param cropsIcon 작물 아이콘.
   * @param cropsFood 작물로 만들수 있는 대표음식.
   */
  public CropsInfoVo(CropsVo cropsVo, String cropsProfileimg, String cropsImg1, String cropsImg2,
      String cropsImg3, String cropsSeason, String cropsMethod, String cropsCondition,
      String cropsIcon, String cropsFood) {
    super();
    this.cropsVo = cropsVo;
    this.cropsProfileimg = cropsProfileimg;
    this.cropsImg1 = cropsImg1;
    this.cropsImg2 = cropsImg2;
    this.cropsImg3 = cropsImg3;
    this.cropsSeason = cropsSeason;
    this.cropsMethod = cropsMethod;
    this.cropsCondition = cropsCondition;
    this.cropsIcon = cropsIcon;
    this.cropsFood = cropsFood;
  }

  public CropsVo getCropsVo() {
    return cropsVo;
  }

  public void setCropsVo(CropsVo cropsVo) {
    this.cropsVo = cropsVo;
  }

  public String getCropsProfileimg() {
    return cropsProfileimg;
  }

  public void setCropsProfileimg(String cropsProfileimg) {
    this.cropsProfileimg = cropsProfileimg;
  }

  public String getCropsImg1() {
    return cropsImg1;
  }

  public void setCropsImg1(String cropsImg1) {
    this.cropsImg1 = cropsImg1;
  }

  public String getCropsImg2() {
    return cropsImg2;
  }

  public void setCropsImg2(String cropsImg2) {
    this.cropsImg2 = cropsImg2;
  }

  public String getCropsImg3() {
    return cropsImg3;
  }

  public void setCropsImg3(String cropsImg3) {
    this.cropsImg3 = cropsImg3;
  }

  public String getCropsSeason() {
    return cropsSeason;
  }

  public void setCropsSeason(String cropsSeason) {
    this.cropsSeason = cropsSeason;
  }

  public String getCropsMethod() {
    return cropsMethod;
  }

  public void setCropsMethod(String cropsMethod) {
    this.cropsMethod = cropsMethod;
  }

  public String getCropsCondition() {
    return cropsCondition;
  }

  public void setCropsCondition(String cropsCondition) {
    this.cropsCondition = cropsCondition;
  }

  public String getCropsIcon() {
    return cropsIcon;
  }

  public void setCropsIcon(String cropsIcon) {
    this.cropsIcon = cropsIcon;
  }

  public String getCropsFood() {
    return cropsFood;
  }

  public void setCropsFood(String cropsFood) {
    this.cropsFood = cropsFood;
  }

  @Override
  public String toString() {
    return "CropsInfoVo [cropsVo=" + cropsVo + ", cropsProfileimg=" + cropsProfileimg
        + ", cropsImg1=" + cropsImg1 + ", cropsImg2=" + cropsImg2 + ", cropsImg3=" + cropsImg3
        + ", cropsSeason=" + cropsSeason + ", cropsMethod=" + cropsMethod + ", cropsCondition="
        + cropsCondition + ", cropsIcon=" + cropsIcon + ", cropsFood=" + cropsFood + "]";
  }
}
