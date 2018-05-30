package org.spider.batassugi.controller;

import java.util.List;
import javax.annotation.Resource;
import org.json.JSONArray;
import org.spider.batassugi.model.service.common.ScheduleServiceIf;
import org.spider.batassugi.model.vo.common.ScheduleVo;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.fasterxml.jackson.databind.util.JSONPObject;

/**
 * 일정 관리의 View를 담당하는 컨트롤러입니다.
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.controller
 * @filename : ScheduleController.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 28.
 * @version : 1.0
 * @see 
 * 
 * <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 28.  "PM KimYoungHo"    최초작성
 * </pre>
 */
@Controller
public class ScheduleController {
  
  @Resource
  private ScheduleServiceIf scheduleService;
  
  /**
   * 일정 등록 폼으로 이동하는 메소드입니다.
   * @author "PM KimYoungHo"
   * @param rentNo 대여번호를 입력합니다.
   * @param model 대여번호를 다시 보내주기 위한 model 객체입니다.
   * @return
   */
  @RequestMapping(method = {RequestMethod.POST, RequestMethod.GET},
      value = "seller/findScheduleByRentNo")
  public String findScheduleByRentNo(String rentNo, Model model) {
    List<ScheduleVo> vo = scheduleService.findScheduleByRentNo(rentNo);
    model.addAttribute("rentNo", rentNo);
    JSONArray arr = new JSONArray(vo);
    model.addAttribute("scheduleList", arr);
    return "seller/calendar.tiles";
  }
  
  /**
   * 구매자의 일정목록을 불러오는 컨트롤러입니다.
   * @author "PM KimYoungHo"
   * @param rentNo 대여번호입니다.
   * @param model 모델 객체입니다.
   * @return
   */
  @RequestMapping(method = {RequestMethod.POST, RequestMethod.GET},
      value = "buyer/findBuyerScheduleByRentNo")
  public String findBuyerScheduleByRentNo(String rentNo, Model model) {
    List<ScheduleVo> vo = scheduleService.findScheduleByRentNo(rentNo);
    model.addAttribute("rentNo", rentNo);
    JSONArray arr = new JSONArray(vo);
    model.addAttribute("scheduleList", arr);
    return "buyer/calendar.tiles";
  }
  
  /**
   * 판매자가 일정을 등록하는 컨트롤러입니다.
   * @author "PM KimYoungHo"
   * @param svo 일정 정보를 담는 객체입니다.
   * @return
   */
  @RequestMapping(method = {RequestMethod.POST, RequestMethod.GET},
      value = "seller/createSchedule")
  public String sellerCreateSchedule(ScheduleVo svo) {
    scheduleService.createSellerSchedule(svo);
    return "redirect:findScheduleByRentNo?rentNo=" + svo.getRentNo();
  }
  
  /**
   * 구매자가 일정을 등록하는 컨트롤러입니다.
   * @author "PM KimYoungHo"
   * @param svo 일정 정보를 담는 객체입니다.
   * @return
   */
  
  @RequestMapping(method = {RequestMethod.POST, RequestMethod.GET},
      value = "buyer/createSchedule")
  public String buyerCreateSchedule(ScheduleVo svo) {
    scheduleService.createBuyerSchedule(svo);
    return "redirect:findBuyerScheduleByRentNo?rentNo="+svo.getRentNo();
  }
}
