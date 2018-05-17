package org.spider.batassugi.model.service.seller;

import java.util.Map;
import org.spider.batassugi.model.vo.seller.RecruitVo;

public interface RecruitServiceIf {
  public void registerRecruit(RecruitVo vo);

  public String findRestFarmSizeByFarmNo(String farmNo);

  public Map<String, Object> findRentSizeAndFarmNoAndCropsAndMaxMonth(String farmNo);
}
