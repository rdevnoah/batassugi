package org.spider.batassugi.controller;


import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.spider.batassugi.model.service.seller.RecruitServiceIf;
import org.spider.batassugi.model.service.seller.SellerFarmServiceIf;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.spider.batassugi.model.vo.seller.FarmVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
  private SellerFarmServiceIf sellerFarmService;

  @Resource
  private RecruitServiceIf recruitService;

  
  @RequestMapping("seller_Home")
  public String sellerHome() {
    return "seller.tiles";
  }
  
  /**
   * 메소드 설명 : 밭등록.
   * @author "GL_SangKyoung"
   * @param fvo
   * @param request
   * @return
   */
  @RequestMapping(method = RequestMethod.POST, value = "farm_register")
  public String farmRegister(FarmVo fvo, HttpServletRequest request) {
    HttpSession session = request.getSession();
    MemberVo mvo = (MemberVo) session.getAttribute("mvo");
    fvo.setMemberInfoVo(new MemberInfoVo());
    System.out.println(fvo.getCropsNo());
    if (session.getAttribute("mvo") != null) {
      fvo.getMemberInfoVo().setId(mvo.getId());
      sellerFarmService.farmInsert(fvo);
      return "redirect:/";
    } else {
      return "farmRegister_error";
    }
  }


  
  
  /**
   * 판매자의 마이페이지로 이동하는데 사용하는 Controller입니다. 
   * 판매자 마이페이지로 이동할 경우 판매자의 현재 등록한 밭 정보들을 
   * 가져와야 하기 때문에 getSellerFarmList(id)를 호출합니다.
   * @author "PM KimYoungHo"
   * @param request request를 저장하는 객체입니다..
   * @param model farmList를 보내기 위한 객체입니다.
   * @return
   */
  @RequestMapping("sellerInfoView")
  public String sellerInfoView(HttpServletRequest request, Model model) {
    HttpSession session = request.getSession(false);
    MemberVo vo = (MemberVo)session.getAttribute("mvo");
    model.addAttribute("farmList", sellerFarmService.getSellerFarmList(vo.getId()));
    return "/infoTemplates/seller_info";
  }
  
  @RequestMapping(method = RequestMethod.POST, value = "registerRecruitForm")
  public String registerRecruitForm(Model model,String farmNo) {
    Map<String,Object> map = recruitService.findRentSizeAndFarmNoAndCropsAndMaxMonth(farmNo);
    model.addAttribute("recruitMap", map);
    return "infoTemplates/registerRecruit";
  }
  
  @ResponseBody
  @RequestMapping(method = RequestMethod.POST, value = "getDetailFarm")
  public Object findFarmDetail(String farmNo) {
    return sellerFarmService.findFarmDetail(farmNo);
  }
}
