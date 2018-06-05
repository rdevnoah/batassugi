package org.spider.batassugi.model.service.common;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.dao.common.ScheduleDaoIf;
import org.spider.batassugi.model.vo.common.ScheduleVo;
import org.springframework.stereotype.Service;

/**
 * 일정관리를 위한 Service의 구현 클래스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.common
 * @filename : ScheduleService.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 29.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 29.  "PM KimYoungHo"    최초작성
 * </pre>
 */
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
