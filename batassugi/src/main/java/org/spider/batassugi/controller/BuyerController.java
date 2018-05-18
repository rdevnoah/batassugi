package org.spider.batassugi.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.spider.batassugi.model.service.buyer.RentServiceIf;
import org.spider.batassugi.model.service.seller.RecruitServiceIf;
import org.spider.batassugi.model.vo.buyer.RentVo;
import org.spider.batassugi.model.vo.common.MemberInfoVo;
import org.spider.batassugi.model.vo.common.MemberVo;
import org.spider.batassugi.model.vo.seller.RecruitVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
 * 2018. 5. 14. "SM HyeonGil Kim" 최초작성
 * 2018. 5. 16. "SL SangUk Lee"   getRentList 메서드 추가 
 * 2018. 5. 17. "SL SangUk Lee"   findRentDetailByRecruitNo 메서드 추가
 * 2018. 5. 17. "SL SangUk Lee"   registerRentByRentVo 메서드 추가
 *      </pre>
 */
@Controller
public class BuyerController {

  @Resource
  private RecruitServiceIf recruitService;

  @Resource
  private RentServiceIf rentService;

  /**
   * 대여신청 게시판뷰 출력 메서드.
   * 
   * @author "SL SangUk Lee"
   * @return MappingUrl
   */
  @RequestMapping(value = "getRentList", method = { RequestMethod.POST, RequestMethod.GET })
  public String getRentList(HttpServletRequest request, Model model, String pageNum) {
    HttpSession session = request.getSession(false);
    if (session == null) {
      return "redirect:/";
    }
    model.addAttribute("rentListVo", rentService.getRentList(pageNum));
    return "rent/Read_RentList.tiles";
  }

  /**
   * 대여신청 상세정보뷰 출력 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param model 상세정보뷰에 뿌려질 데이터를 전달하기 위함.
   * @param recruitNo 대여신청번호.
   * @return MappingUrl
   */
  @RequestMapping(value = "findRentDetailByRecruitNo",
      method = { RequestMethod.POST, RequestMethod.GET })
  public String findRentDetailByRecruitNo(Model model, String recruitNo,
      HttpServletRequest request) {
    HttpSession session = request.getSession(false);
    if (session == null) {
      return "redirect:/";
    }
    RecruitVo recruitVo = rentService.findRentDetailByRecruitNo(Integer.parseInt(recruitNo));
    model.addAttribute("recruitVo", recruitVo);
    return "rent/Read_RentDetail.tiles";
  }

  /**
   * 대여신청하는 메서드.
   * 
   * @author "SL SangUk Lee"
   * @param rentVo 대여신청에 필요한 정보.
   * @param rttr 대여신청 성공시 성공메세지 출력하기 위함.
   * @param request 세션에 저장된 로그인정보를 가져오기 위함.
   * @return mappingUrl
   */
  @RequestMapping(value = "registerRentByRentVo", method = RequestMethod.POST)
  public String registerRentByRentVo(RentVo rentVo, RedirectAttributes rttr,
      HttpServletRequest request) {
    HttpSession session = request.getSession(false);
    RentVo rvo = rentVo; 
    if (session == null || rvo == null) {
      return "redirect:/";
    }
    MemberVo mvo = (MemberVo) session.getAttribute("mvo");
    rvo.setId(mvo.getId());
    rentService.registerRentByRentVo(rentVo);
    rttr.addFlashAttribute("success", "대여신청이 완료되었습니다.");
    return "redirect:getRentPostList";
  }

}
