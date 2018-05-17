package org.spider.batassugi.model.dao.seller;

import java.util.Map;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.seller.FarmVo;


public interface SellerFarmDaoIf {
  /**
   * 메소드 설명 : 밭등록시 사용되는 farmInsert.
   * @author "GL_SangKyoung"
   * @param vo 농지정보.
   */
  void farmInsert(FarmVo vo);
  
  /**
   * 메소드 설명 : 해당밭에 재배가능작물 데이터추가하기위하여 사용.
   * @author "GL_SangKyoung"
   * @param testmap parameterMap비사용으로 인하여 crops_no 와 farm_no를 키값으로해서 available_crops 테이블에 전송.
   */
  void avaliableCrops(Map<String, Integer> testmap);
}
