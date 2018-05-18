package org.spider.batassugi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 구매자가 처리한 서비스와 뷰와 연결해주는 Controller입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.controller
 * @filename : BuyerController.java
 * @author : "SM HyeonGil Kim"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "SM HyeonGil Kim"    최초작성
 *      </pre>
 */
@Controller
public class BuyerController {

  @RequestMapping("buyer_Home")
  public String buyerHome() {
    return "buyer.tiles";
  }

  @RequestMapping("buyer_myinfoView")
  public String myinfoView() {
    return "buyer/myinfoView.tiles";
  }
}
