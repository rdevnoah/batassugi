package org.spider.batassugi.model.service.common;

import java.util.List;
import org.spider.batassugi.model.vo.common.ScheduleVo;

/**
 * 일정 관리를 위한 Service 인터페이스입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.model.service.common
 * @filename : ScheduleServiceIf.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 29.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 29.  "PM KimYoungHo"    최초작성
 *      </pre>
 */
public interface ScheduleServiceIf {

  /**
   * 판매자의 일정을 등록하는 서비스메소드입니다.
   * 
   * @author "PM KimYoungHo"
   * @param svo 일정정보를 담고 있는 ScheduleVo 객체입니다.
   */
  public void createSellerSchedule(ScheduleVo svo);

  /**
   * 달력에 일정들을 출력하기 위해 해당 대여농지의 일정리스트를 반환하는 메소드입니다.
   * 
   * @author "PM KimYoungHo"
   * @param rentNo 대여번호입니다.
   * @return
   */
  public List<ScheduleVo> findScheduleByRentNo(String rentNo);

  /**
   * 구매자의 일정 등록을 위한 서비스 메소드 입니다.
   * @author "PM KimYoungHo"
   * @param svo 일정정보를 담고 있는 ScheduleVo 객체입니다.
   */
  public void createBuyerSchedule(ScheduleVo svo);

}
