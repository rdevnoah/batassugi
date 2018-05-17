package org.spider.batassugi.model.service.common;

import java.util.List;

import org.spider.batassugi.model.vo.common.CropsInfoVo;
import org.springframework.ui.Model;


public interface CommonServiceIf {
  /**
   * 농작물 사전 클릭시, 작물 리스트를 불러오기 위한 메소드.
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
