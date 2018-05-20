package org.spider.batassugi.controller;

import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.spider.batassugi.model.service.seller.RecruitServiceIf;
import org.spider.batassugi.model.service.seller.SellerFarmServiceIf;
import org.spider.batassugi.model.vo.common.CropsVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.spider.batassugi.model.vo.seller.FarmVo;
import org.spider.batassugi.model.vo.seller.ListVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;
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
 * 2018. 5. 17.  "PM KimYoungHo"    seller.tile 기초 적용 완료. 완벽하지 않으므로 테스트를 위해 기존 방식은 미삭제
 *      </pre>
 */
@Controller
public class SellerController {


  @Resource
  private SellerFarmServiceIf sellerFarmService;

  @Resource
  private RecruitServiceIf recruitService;

  /**
   * 판매자의 마이페이지로 이동하는 메소드입니다. tiles가 적용되어 있으며 tiles-config.xml 내부에 seller.tiles 설정이 이뤄져 있습니다.
   * 
   * @author "PM KimYoungHo"
   * @param request HttpServletRequest 객체.
   * @param model Model 객체.
   * @return
   */
  @RequestMapping("seller_Home")
  public String sellerHome(HttpServletRequest request, Model model) {
    HttpSession session = request.getSession(false);
    MemberInfoVo vo = (MemberInfoVo) session.getAttribute("mvo");
    model.addAttribute("farmList", sellerFarmService.findSellerFarmList(vo.getMemberVo().getId()));

    return "seller.tiles";
  }

  /**
   * 메소드 설명 : 밭등록.
   * 
   * @author "GL_SangKyoung"
   * @param fvo
   * @param request
   * @return
   */
  @RequestMapping(method = { RequestMethod.POST, RequestMethod.GET }, value = "farm_register")
  public String farmRegister(FarmVo fvo, HttpServletRequest request) {
    String path = "logo.png";
    if (fvo.getFile() != null) {
      try {
        path = sellerFarmService.farmImg(fvo);
      } catch (Exception e) {
        e.printStackTrace();
      }
    }
    fvo.setImage(path);
    HttpSession session = request.getSession();
    MemberInfoVo mvo = (MemberInfoVo) session.getAttribute("mvo");
    fvo.setMemberInfoVo(mvo);
    System.out.println(fvo);
    if (session.getAttribute("mvo") != null) {
      // fvo.getMemberInfoVo().getMemberVo().setId(mvo.getId());
      sellerFarmService.farmInsert(fvo);
      return "redirect:seller_Home";
    } else {
      return "farmRegister_error";
    }
  }

  @RequestMapping(method = { RequestMethod.POST, RequestMethod.GET }, value = "registerFarmForm")
  public String registerFarmForm(Model model) {
    List<CropsVo> list = sellerFarmService.getCropsData();
    String date = sellerFarmService.getNow_Date();
    model.addAttribute("cropsList", list);
    model.addAttribute("date", date);
    return "seller/farmRegister.tiles";
  }


  /**
   * 모집 등록하는 View 이동 메소드입니다. 기본적으로 필요한 데이터인 대여가능 평수와 최대로 대여가능기간을 model에 map 타입으로 전송합니다.
   * 
   * @author "PM KimYoungHo"
   * @param model Model 객체.
   * @param farmNo 농지 번호.
   * @return
   */
  @RequestMapping(method = { RequestMethod.POST, RequestMethod.GET }, value = "registerRecruitForm")
  public String registerRecruitForm(Model model, String farmNo) {
    Map<String, Object> map = recruitService.findRentSizeAndFarmNoAndCropsAndMaxMonth(farmNo);
    model.addAttribute("recruitMap", map);
    return "seller/registerRecruit.tiles";
  }

  /**
   * 농지의 세부정보에서 현재 농지에 대여나 모집을 신청한 회원을 확인하는 Controller.
   * 
   * @author "PM KimYoungHo"
   * @param model Model 객체
   * @param farmNo 농지 번호.
   * @return
   */
  @RequestMapping(method = { RequestMethod.POST, RequestMethod.GET }, value = "recruitList")
  public String recruitListView(Model model, String farmNo, String nowPage) {
    ListVo listVo = sellerFarmService.findRecruitListByFarmNo(farmNo, nowPage);
    model.addAttribute("pagingList", listVo);
    model.addAttribute("farmNo", farmNo);
    return "seller/recruit_List.tiles";
  }

  @RequestMapping(method = { RequestMethod.POST, RequestMethod.GET }, value = "registerRecruit")
  public String registerRecruit(RecruitVo vo, int farmNo) {
    vo.setFarmVo(new FarmVo(farmNo, null, 0, null, null, null));
    System.out.println(vo);
    recruitService.registerRecruit(vo);
    return "redirect:seller_Home";
  }

  @RequestMapping(method = { RequestMethod.POST, RequestMethod.GET },
      value = "updateRentStatusConfirm")
  public String updateRentStatusConform(Model model, String[] rentNo, String farmNo) {
    recruitService.updateRentStatusConfirm(rentNo);

    return "redirect:recruitList?farmNo=" + farmNo;
  }

  @RequestMapping(method = { RequestMethod.POST, RequestMethod.GET },
      value = "updateRentStatusReject")
  public String updateRentStatusReject(Model model, String[] rentNo, String farmNo) {
    recruitService.updateRentStatusReject(rentNo);

    return "redirect:recruitList?farmNo=" + farmNo;
  }

  /**
   * 판매자가 자신이 선택한 농지의 상세정보를 Modal로 확인하기 위해 Ajax 방식으로 데이터를 전송합니다. 선택한 농지번호를 통해 상세정보를 조회 후 그 정보를
   * ResponseBody를 통해 전송합니다.
   * 
   * @author "PM KimYoungHo"
   * @param farmNo 농지 번호.
   * @return
   */
  @ResponseBody
  @RequestMapping(method = RequestMethod.POST, value = "getDetailFarm")
  public Object findFarmDetail(String farmNo) {
    return sellerFarmService.findFarmDetail(farmNo);
  }

  @ResponseBody
  @RequestMapping(method = { RequestMethod.POST, RequestMethod.GET },
      value = "findBuyerDetailByRentNo")
  public Object findBuyerDetailByRentNo(String rentNo) {
    return sellerFarmService.findBuyerDetailByRentNo(rentNo);
  }

}
