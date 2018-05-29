package org.spider.batassugi.model.dao.common;

import java.util.List;
import org.spider.batassugi.model.vo.common.ScheduleVo;

public interface ScheduleDaoIf {

  public void createSellerSchedule(ScheduleVo scheduleVo);

  public List<ScheduleVo> findScheduleByRentNo(String rentNo);

  public void createBuyerSchedule(ScheduleVo svo);
  
}
