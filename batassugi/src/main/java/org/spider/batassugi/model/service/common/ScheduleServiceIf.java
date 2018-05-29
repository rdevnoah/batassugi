package org.spider.batassugi.model.service.common;

import java.util.List;
import org.spider.batassugi.model.vo.common.ScheduleVo;

public interface ScheduleServiceIf {

  public void createSellerSchedule(ScheduleVo svo);

  public List<ScheduleVo> findScheduleByRentNo(String rentNo);

  public void createBuyerSchedule(ScheduleVo svo);

}
