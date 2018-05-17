package org.spider.batassugi.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.spider.batassugi.model.service.seller.SellerFarmService;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.spider.batassugi.model.vo.seller.FarmVo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 판매자가 처리한 서비스와 뷰를 연결해주는 컨트롤러입니다.
 * 
 * @title 밭아쓰기
 * @packagename : org.spider.batassugi.controller
 * @filename : SellerController.java
 * @author : "PM KimYoungHo"
 * @since : 2018. 5. 14.
 * @version : 1.0
 * @see
 * 
 *      <pre>
 * == Modification Information ==
 * 
 * Date         AUTHOR           NOTE
 * -----------  -------------    --------------------------------
 * 2018. 5. 14.  "PM KimYoungHo"    최초작성
 *      </pre>
 */
@Controller
public class SellerController {

  @Resource
  private SellerFarmService sellerFarmService;

  /**
   * 메소드 설명 : 밭등록.
   * 
   * @author "GL_SangKyoung"
   * @param fvo
   * @param request
   * @return
   */
  @RequestMapping(method = RequestMethod.POST, value = "farm_register")
  public String farmRegister(FarmVo fvo, HttpServletRequest request) {
    HttpSession session = request.getSession();
    MemberVo mvo = (MemberVo) session.getAttribute("mvo");
    fvo.getMemberInfoVo().setId(mvo.getId());
    sellerFarmService.farmInsert(fvo);
    return "redirect:/";
  }
}
