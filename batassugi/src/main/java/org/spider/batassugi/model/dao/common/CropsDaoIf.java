package org.spider.batassugi.model.dao.common;

import java.util.List;

import org.spider.batassugi.model.vo.common.CropsInfoVo;
import org.spider.batassugi.model.vo.common.CropsVo;

/**
 * 반드시 마침표를 찍습니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.dao.common
 * @filename : CropsDaoIf.java
 * @author : "DL KimJieun"
 * @since : 2018. 5. 16.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 16.  "DL KimJieun"    getCropsIconList() 메소드 추가.
 * </pre>
 */
public interface CropsDaoIf {
  /**
   * 농작물 사전 헤더 메뉴를 클릭시, 농작물 아이콘 DB를 가져오기 위한 메소드.
   * 
   * @author "DL KimJieun"
   * @return
   */
  public List<CropsInfoVo> getCropsIconList();
  

  /**
   * 농작물 사전에서 아이콘 클릭시, 농작물의 상세정보 DB를 가져오기 위한 메소드.
   * 
   * @author "DL KimJieun"
   * @param cropsNo 농작물 사전에서 아이콘 클릭 시 전달받은 농작물 번호.
   * @return
   */
  public CropsInfoVo getCropsDetail(String cropsNo);

}
