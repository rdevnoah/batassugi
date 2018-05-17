package org.spider.batassugi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 클래스 설명 : 관리자에서 사용하는 Controller입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.controller
 * @filename : AdminController.java
 * @author : "Team Spider"
 * @since : 2018. 5. 12.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 12.  "Team Spider"    최초작성
 * 2018. 5. 17.  "PL_Seonhwa"     admin 마이페이지, 정보 수정 페이지 이동 메소드 추가
 *      </pre>
 */

@Controller
public class AdminController {

  /**
   * 마이페이지 - 관리자 페이지로 이동.
   * 
   * @author "PL_Seonhwa"
   * @return
   */
  @RequestMapping("admin_Home")
  public String adminHome() {
    return "admin.tiles";
  }
  /**
   * 회원정보 수정 - 관리자.
   * 
   * @author "PL_Seonhwa"
   * @return
   */
  @RequestMapping("myinfoView")
  public String myinfoView() {
    return "admin/myinfoView.tiles";
  }
}
