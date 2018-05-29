package org.spider.batassugi.model.service.common;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.common.ScheduleDaoIf;
import org.spider.batassugi.model.vo.common.ScheduleVo;
import org.springframework.stereotype.Service;

@Service
public class ScheduleService implements ScheduleServiceIf {
  @Resource
  private ScheduleDaoIf scheduleDao;

  @Override
  public void createSellerSchedule(ScheduleVo svo) {
    svo.setAuth("1");
    scheduleDao.createSellerSchedule(svo);
  }

  @Override
  public List<ScheduleVo> findScheduleByRentNo(String rentNo) {
    return scheduleDao.findScheduleByRentNo(rentNo);
  }

  @Override
  public void createBuyerSchedule(ScheduleVo svo) {
    svo.setAuth("2");
    scheduleDao.createBuyerSchedule(svo);
    
  }
  
  
}
