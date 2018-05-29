package org.spider.batassugi.model.dao.common;

import java.util.List;
import javax.annotation.Resource;
import org.mybatis.spring.SqlSessionTemplate;
import org.spider.batassugi.model.vo.common.ScheduleVo;
import org.springframework.stereotype.Repository;

@Repository
public class ScheduleDao implements ScheduleDaoIf {
  
  @Resource
  private SqlSessionTemplate template;

  @Override
  public void createSellerSchedule(ScheduleVo scheduleVo) {
    template.insert("schedule.createSellerSchedule", scheduleVo);
    
  }

  @Override
  public List<ScheduleVo> findScheduleByRentNo(String rentNo) {
    return template.selectList("schedule.findScheduleByRentNo", rentNo);
  }

  @Override
  public void createBuyerSchedule(ScheduleVo svo) {
    template.insert("schedule.createSellerSchedule", svo);
  }
  
  
}
