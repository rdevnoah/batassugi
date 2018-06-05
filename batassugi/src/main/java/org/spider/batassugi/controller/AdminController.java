package org.spider.batassugi.controller;

import java.util.List;
import javax.annotation.Resource;
import org.spider.batassugi.model.service.admin.AccuseServiceIf;
import org.spider.batassugi.model.service.admin.AdminServiceIf;
import org.spider.batassugi.model.service.common.MemberServiceIf;
import org.spider.batassugi.model.vo.admin.AccusePostVo;
import org.spider.batassugi.model.vo.buyer.ApplySellerVo;
import org.spider.batassugi.model.vo.common.PagingBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
 *                                admin 페이지 이동 부분 Home에서 이동
 * 2018. 5. 18.  "PL_Seonhwa"     판매자 승인처리
 *      </pre>
 */

@Controller
public class AdminController {
  
  @Resource
  private MemberServiceIf memberService;
  @Resource
  private AdminServiceIf adminService;
  @Resource
  private AccuseServiceIf accuseService;

  /**
   * 마이페이지 - 관리자 페이지로 이동.
   * 
   * @author "PL_Seonhwa"
   * @return
   */
  @RequestMapping("admin/admin_Home")
  public String adminHome() {
    return "admin.tiles";
  }


  /**
   * 판매자 승인 처리 뷰로 이동하는 컨트롤러입니다.
   * @author "PM KimYoungHo"
   * @param model 모델객체입니다.
   * @param nowPage 페이징 처리를 위해 현재 페이지를 저장합니다.
   * @return
   */
  @RequestMapping("admin/applySellerView")
  public String applySellerView(Model model, String nowPage) {
    if (nowPage == null) {
      nowPage = "1";
    }
    PagingBean pb = adminService.paging(nowPage);
    List<ApplySellerVo> accuseList = adminService.findApplyListByPb(pb);
    model.addAttribute("paging", pb);
    model.addAttribute("applyList", accuseList);
    // model.addAttribute("applyList", adminService.getAllApplyList());
    return "admin/applySellerView.tiles";
  }

  /**
   * 페이징 처리해서 리스트 전송.
   * 
   * @author "PL_Seonhwa"
   * @param model 모델 객체입니다.
   * @return
   */
  @RequestMapping("admin/adminAccuse")
  public String getAllAccuseList(Model model, String nowPage) {
    if (nowPage == null) {
      nowPage = "1";
    }
    PagingBean pb = adminService.paging2(nowPage);
    List<AccusePostVo> acList = adminService.findAccuseListByPb(pb);
    model.addAttribute("paging", pb);
    model.addAttribute("accuseList", acList);
    return "admin/accuse_management.tiles";
  }

  /**
   * 판매신청 상세정보를 ajax로 전송.
   * 
   * @author "PL_Seonhwa"
   * @param applyNo 판매자 신청 번호입니다.
   * @return
   */
  @RequestMapping("detailapply")
  @ResponseBody
  public Object detailApply(String applyNo) {
    return adminService.findDetailApplyByNO(applyNo);
  }

  /**
   * 판매 신청 처리.
   * 
   * @author "PL_Seonhwa"
   * @param avo 판매자 신청 객체입니다.
   * @return
   */
  @RequestMapping("admin/applySellerPro")
  public Object applySellerPro(ApplySellerVo avo) {
    adminService.updateMemberLevel(avo);
    return "redirect:applySellerPro_success.tiles";
  }

  /**
   * 신고신청 상세정보를 ajax로 전송.
   * 
   * @author "PL_Seonhwa"
   * @param accuseNo 신고 번호입니다.
   * @return
   */
  @RequestMapping("admin/detailaccuse")
  @ResponseBody
  public Object detailaccuse(String accuseNo) {
    return accuseService.findDetailaccuseByNo(accuseNo);
  }

  /**
   * 신고처리 메소드.
   * 
   * @author "PL_Seonhwa"
   * @param accusePostVo 신고 게시판의 글 번호입니다.
   * @return
   */
  @RequestMapping("admin/accusePro")
  public String accusePro(AccusePostVo accusePostVo) {
    accuseService.accusePro(accusePostVo);
    return "redirect:accusePro_success";
  }
  
  /**
   * admin view 처리.
   * 
   * @author "PL_Seonhwa"
   * @param viewName 관리자의 tiles의 처리를 위한 viewName 객체입니다. 
   * @return
   */
  @RequestMapping("admin/{viewName}")
  public String updateMemberSuccess(@PathVariable String viewName) {
    return "admin/" + viewName + ".tiles";
  }

}
